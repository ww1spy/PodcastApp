package mobi.beyondpod.rsscore;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipOutputStream;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.FileUtils;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/* loaded from: classes.dex */
public class BackupRestore {
    private static int BuffSize = 1024;
    public static final String PREFERENCE_KEY = "BackupRestore";
    public static final int RESULT_BACKUP_FAILED = -1;
    public static final int RESULT_BACKUP_RESTORE_ALREADY_IN_PROGRESS = -4;
    public static final int RESULT_BACKUP_SUCCESS = 0;
    public static final int RESULT_RESTORE_FAILED = -3;
    public static final int RESULT_RESTORE_PREPARE_FAILED = -2;
    public static final int RESULT_RESTORE_PREPARE_SUCCESS = 1;
    public static final int RESULT_RESTORE_SUCCESS = 3;
    private static final String TAG = "BackupRestore";
    private static FileFilter _BPBackupFilter = new FileFilter() { // from class: mobi.beyondpod.rsscore.BackupRestore.7
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return !file.isHidden() && (file.getName().endsWith("autobak") || file.getName().endsWith("BackupManifest.txt"));
        }
    };
    private static Thread _Worker = null;
    private static final String _ZipFileExtension = ".bpbak";
    private static String _ZipFileName = "BeyondPod_Backup_";

    /* loaded from: classes.dex */
    public interface BackupRestoreOperationResult {
        void operationCompleted(int i, String str, BackupManifest backupManifest);

        void operationFailed(int i, String str);
    }

    private static Document openXmlDocument(File file) {
        if (!file.exists() || !file.isFile()) {
            return null;
        }
        try {
            CoreHelper.writeTraceEntry(TAG, "DEBUG: Opening backup settings file: " + file.getAbsolutePath());
            return DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(file);
        } catch (Exception e) {
            CoreHelper.writeTraceEntry(TAG, "failed to open XML file: " + file.getAbsolutePath() + ". Error: " + e.getMessage());
            return null;
        }
    }

    private static Element getNamedValueElementFromXml(Document document, String str, String str2) {
        if (document == null) {
            return null;
        }
        CoreHelper.writeTraceEntry(TAG, "DEBUG: Looking up node for value named: " + str2);
        NodeList elementsByTagName = document.getElementsByTagName(str);
        for (int i = 0; i < elementsByTagName.getLength(); i++) {
            Element element = (Element) elementsByTagName.item(i);
            if (element.getAttribute("name").equals(str2)) {
                CoreHelper.writeTraceEntry(TAG, "DEBUG: Found matching node for element: " + str2);
                return element;
            }
        }
        return null;
    }

    private static void writeXmlDocument(Document document, File file) {
        try {
            CoreHelper.writeTraceEntry(TAG, "DEBUG: Writing file: " + file.getAbsolutePath());
            TransformerFactory.newInstance().newTransformer().transform(new DOMSource(document), new StreamResult(file));
        } catch (Exception e) {
            CoreHelper.writeTraceEntry(TAG, "DEBUG: Error writing document: " + e.getMessage());
        }
    }

    private static Boolean adjustHomePathIfNeeded(File file) {
        Document openXmlDocument = openXmlDocument(file);
        if (openXmlDocument != null) {
            Element namedValueElementFromXml = getNamedValueElementFromXml(openXmlDocument, "boolean", "preferLastSDCardRoot");
            if (namedValueElementFromXml != null) {
                CoreHelper.writeTraceEntry(TAG, "DEBUG: Reading value for node: " + namedValueElementFromXml.getAttribute("name"));
                String attribute = namedValueElementFromXml.getAttribute("value");
                if (!StringUtils.isNullOrEmpty(attribute)) {
                    CoreHelper.writeTraceEntry(TAG, "DEBUG: Got value: " + attribute);
                    if (Boolean.valueOf(Boolean.parseBoolean(attribute)).booleanValue()) {
                        CoreHelper.writeTraceEntry(TAG, "DEBUG: User has path preference in settings.");
                        Element namedValueElementFromXml2 = getNamedValueElementFromXml(openXmlDocument, "string", "lastSDCardRootPath");
                        if (namedValueElementFromXml2 != null) {
                            CoreHelper.writeTraceEntry(TAG, "DEBUG: Reading value for node: " + namedValueElementFromXml2.getAttribute("name"));
                            String textContent = namedValueElementFromXml2.getTextContent();
                            CoreHelper.writeTraceEntry(TAG, "DEBUG: Got value: " + textContent);
                            if (!new File(textContent).exists()) {
                                CoreHelper.writeTraceEntry(TAG, "DEBUG: Path does not exist. Attempting to adjust path...");
                                File optionalStorageFullDataPath = CoreHelper.getOptionalStorageFullDataPath();
                                if (optionalStorageFullDataPath != null) {
                                    CoreHelper.writeTraceEntry(TAG, "DEBUG: Found likely replacement path: " + optionalStorageFullDataPath.getAbsolutePath());
                                    namedValueElementFromXml2.setTextContent(optionalStorageFullDataPath.getAbsolutePath());
                                    writeXmlDocument(openXmlDocument, file);
                                    return true;
                                }
                            }
                        } else {
                            CoreHelper.writeTraceEntry(TAG, "DEBUG: No matching value node found for lastSDCardRootPath.");
                        }
                    }
                }
            } else {
                CoreHelper.writeTraceEntry(TAG, "DEBUG: No matching value node found for preferLastSDCardRoot.");
            }
        }
        return false;
    }

    public static void createZippedBackup(final BackupRestoreOperationResult backupRestoreOperationResult) {
        if (_Worker == null || !_Worker.isAlive()) {
            _Worker = new Thread(new Runnable() { // from class: mobi.beyondpod.rsscore.BackupRestore.1
                @Override // java.lang.Runnable
                public void run() {
                    BackupRestore.createZippedBackupInternal(BackupRestoreOperationResult.this);
                }
            }, TAG);
            _Worker.start();
        } else if (backupRestoreOperationResult != null) {
            backupRestoreOperationResult.operationFailed(-4, "");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void createZippedBackupInternal(BackupRestoreOperationResult backupRestoreOperationResult) {
        CoreHelper.writeTraceEntry(TAG, "Starting Backup");
        File file = new File(Configuration.backupManagerBackupPath());
        if (file.exists()) {
            clearDirectory(file);
            if (file.listFiles(_BPBackupFilter).length > 0) {
                backupRestoreOperationResult.operationFailed(-1, "failed to empty backup snapshot folder " + file.getPath());
                return;
            }
        }
        if (!StartupContentBuilder.createRepositorySnapshot()) {
            backupRestoreOperationResult.operationFailed(-1, "failed to create backup snapshot!");
            return;
        }
        File file2 = new File(Configuration.defaultBackupPath());
        if (!file2.exists()) {
            CoreHelper.writeTraceEntry(TAG, "Backup folder does not exist! Creating " + file2.getPath());
            file2.mkdirs();
        }
        if (!file2.exists()) {
            backupRestoreOperationResult.operationFailed(-1, "failed to create the backup folder " + file2.getPath());
            return;
        }
        String path = new File(file2, _ZipFileName + new SimpleDateFormat("yyyy-MM-dd", CoreHelper.getCurrentLocale()).format(new Date())).getPath();
        String str = "";
        int i = 1;
        while (true) {
            if (!FileUtils.exists(path + str + _ZipFileExtension)) {
                break;
            }
            str = "-" + i;
            i++;
        }
        String str2 = path + str + _ZipFileExtension;
        CoreHelper.writeTraceEntry(TAG, "Saving backup to " + str2);
        try {
            try {
                backupRestoreOperationResult.operationCompleted(0, str2, zipBackupFiles(file, str2));
                CoreHelper.writeTraceEntry(TAG, "Backup Completed!");
            } catch (Exception e) {
                File file3 = new File(str2);
                if (file3.exists()) {
                    file3.delete();
                }
                CoreHelper.writeTraceEntry(TAG, "Backup failed! reason: " + e.getMessage());
                backupRestoreOperationResult.operationFailed(-1, e.getMessage());
            }
        } finally {
            clearDirectory(file);
        }
    }

    public static void unzipBackup(final File file, final BackupRestoreOperationResult backupRestoreOperationResult) {
        if (_Worker != null && _Worker.isAlive()) {
            if (backupRestoreOperationResult != null) {
                backupRestoreOperationResult.operationFailed(-4, "");
            }
        } else if (file != null && file.exists()) {
            _Worker = new Thread(new Runnable() { // from class: mobi.beyondpod.rsscore.BackupRestore.2
                @Override // java.lang.Runnable
                public void run() {
                    BackupRestore.unzipBackupInternal(file, backupRestoreOperationResult);
                }
            }, TAG);
            _Worker.start();
        } else if (backupRestoreOperationResult != null) {
            backupRestoreOperationResult.operationFailed(-3, "Invalid restore file");
        }
    }

    public static void restoreBackup(final BackupRestoreOperationResult backupRestoreOperationResult) {
        if (_Worker != null && _Worker.isAlive()) {
            if (backupRestoreOperationResult != null) {
                backupRestoreOperationResult.operationFailed(-4, "");
                return;
            }
            return;
        }
        final File file = new File(Configuration.backupManagerBackupPath());
        if (file.exists()) {
            _Worker = new Thread(new Runnable() { // from class: mobi.beyondpod.rsscore.BackupRestore.3
                @Override // java.lang.Runnable
                public void run() {
                    BackupRestore.restoreBackup(file, backupRestoreOperationResult);
                }
            }, TAG);
            _Worker.start();
        } else if (backupRestoreOperationResult != null) {
            backupRestoreOperationResult.operationFailed(-3, "Invalid snapshot folder");
        }
    }

    public static void cleanSnapshotFolder() {
        if (_Worker == null || !_Worker.isAlive()) {
            final File file = new File(Configuration.backupManagerBackupPath());
            if (file.exists()) {
                _Worker = new Thread(new Runnable() { // from class: mobi.beyondpod.rsscore.BackupRestore.4
                    @Override // java.lang.Runnable
                    public void run() {
                        BackupRestore.clearDirectory(file);
                    }
                }, TAG);
                _Worker.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void restoreBackup(File file, BackupRestoreOperationResult backupRestoreOperationResult) {
        CoreHelper.writeTraceEntry(TAG, "Starting Restore of " + file);
        File file2 = new File(file, "BackupManifest.txt");
        try {
            try {
                BackupManifest backupManifest = new BackupManifest(file2);
                CoreHelper.writeTraceEntry(TAG, "Restoring " + backupManifest.toString());
                if (!StartupContentBuilder.restoreFromRepositorySnapshot()) {
                    backupRestoreOperationResult.operationFailed(-3, "failed to copy snapshot files");
                } else {
                    CoreHelper.writeTraceEntry(TAG, "Restore complete!");
                    CoreHelper.writeTraceEntry(TAG, "Patching feed paths...");
                    StartupContentBuilder.patchDatabaseAfterRestore();
                    CoreHelper.writeTraceEntry(TAG, "Patching complete!");
                    backupRestoreOperationResult.operationCompleted(3, file2.getPath(), backupManifest);
                }
            } catch (Exception e) {
                CoreHelper.writeLogEntry(TAG, "Restore failed! reason: " + e.getMessage());
                backupRestoreOperationResult.operationFailed(-3, e.getMessage());
            }
        } finally {
            clearDirectory(file);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void unzipBackupInternal(File file, BackupRestoreOperationResult backupRestoreOperationResult) {
        CoreHelper.writeTraceEntry(TAG, "Preparing restore of " + file);
        File file2 = new File(Configuration.backupManagerBackupPath());
        if (file2.exists()) {
            clearDirectory(file2);
            if (file2.listFiles(_BPBackupFilter).length > 0) {
                backupRestoreOperationResult.operationFailed(-2, "failed to empty backup snapshot folder " + file2.getPath());
                return;
            }
        } else if (!file2.mkdirs()) {
            backupRestoreOperationResult.operationFailed(-2, "failed to create backup snapshot folder " + file2.getPath());
            return;
        }
        try {
            BackupManifest unzipBackupFiles = unzipBackupFiles(file, file2);
            CoreHelper.writeTraceEntry(TAG, "Prepare complete!");
            backupRestoreOperationResult.operationCompleted(1, "", unzipBackupFiles);
        } catch (Exception e) {
            CoreHelper.writeLogEntry(TAG, "Prepare failed! reason: " + e.getMessage());
            backupRestoreOperationResult.operationFailed(-2, e.getMessage());
        }
    }

    private static BackupManifest zipBackupFiles(File file, String str) throws Exception {
        if (FileUtils.exists(str)) {
            throw new IllegalArgumentException("destination backup file " + str + " already exists!");
        }
        File[] listFiles = file.listFiles(_BPBackupFilter);
        if (listFiles.length == 0) {
            throw new IllegalArgumentException("There is nothing to compress!");
        }
        File createManifest = BackupManifest.createManifest(file.getPath(), listFiles);
        if (createManifest == null) {
            throw new IOException("Unable to create backup manifest!");
        }
        ArrayList arrayList = new ArrayList(listFiles.length + 1);
        arrayList.add(createManifest);
        Collections.addAll(arrayList, listFiles);
        ZipOutputStream zipOutputStream = new ZipOutputStream(new BufferedOutputStream(new FileOutputStream(new File(str))));
        byte[] bArr = new byte[BuffSize];
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            File file2 = (File) it.next();
            CoreHelper.writeTraceEntry(TAG, "Compressing " + file2.getName() + "...");
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file2), BuffSize);
            zipOutputStream.putNextEntry(new ZipEntry(file2.getName()));
            while (true) {
                int read = bufferedInputStream.read(bArr, 0, BuffSize);
                if (read != -1) {
                    zipOutputStream.write(bArr, 0, read);
                }
            }
            bufferedInputStream.close();
        }
        zipOutputStream.close();
        return new BackupManifest(createManifest);
    }

    private static BackupManifest unzipBackupFiles(File file, File file2) throws Exception {
        File file3;
        if (!file.exists()) {
            throw new IllegalArgumentException("Backup file is missing!");
        }
        if (!file2.exists()) {
            throw new IllegalArgumentException("Snapshot Folder does not exist!");
        }
        byte[] bArr = new byte[BuffSize];
        try {
            ZipFile zipFile = new ZipFile(file);
            ZipEntry entry = zipFile.getEntry("BackupManifest.txt");
            if (entry != null) {
                File file4 = new File(file2, "BackupManifest.txt");
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file4), BuffSize);
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(zipFile.getInputStream(entry), BuffSize);
                    while (true) {
                        int read = bufferedInputStream.read(bArr, 0, BuffSize);
                        if (read == -1) {
                            break;
                        }
                        bufferedOutputStream.write(bArr, 0, read);
                    }
                    bufferedOutputStream.close();
                    bufferedInputStream.close();
                    BackupManifest backupManifest = new BackupManifest(file4);
                    Iterator it = Collections.list(zipFile.entries()).iterator();
                    while (it.hasNext()) {
                        ZipEntry zipEntry = (ZipEntry) it.next();
                        String name = zipEntry.getName();
                        if (!name.equals("BackupManifest.txt")) {
                            file3 = new File(file2, name);
                            try {
                                BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(new FileOutputStream(file3), BuffSize);
                                BufferedInputStream bufferedInputStream2 = new BufferedInputStream(zipFile.getInputStream(zipEntry), BuffSize);
                                while (true) {
                                    int read2 = bufferedInputStream2.read(bArr, 0, BuffSize);
                                    if (read2 == -1) {
                                        break;
                                    }
                                    bufferedOutputStream2.write(bArr, 0, read2);
                                }
                                bufferedInputStream2.close();
                                bufferedOutputStream2.close();
                                CoreHelper.writeTraceEntry(TAG, "Restoring " + file3.getAbsolutePath() + "...");
                                if (file3.getName().equals(Configuration.BEYOND_POD_SETTINGS_AUTOBAK)) {
                                    CoreHelper.writeTraceEntry(TAG, "DEBUG: Checking to see if lastSDCardRootPath needs adjustment...");
                                    if (!adjustHomePathIfNeeded(file3).booleanValue()) {
                                        CoreHelper.writeTraceEntry(TAG, "DEBUG: No path adjustment performed.");
                                    }
                                }
                                file4 = file3;
                            } catch (Throwable th) {
                                th = th;
                                if (file3 != null) {
                                    file3.delete();
                                }
                                throw th;
                            }
                        }
                    }
                    zipFile.close();
                    return backupManifest;
                } catch (Throwable th2) {
                    th = th2;
                    file3 = file4;
                }
            } else {
                throw new IllegalArgumentException("Invalid backup file! Unable to find the backup manifest.");
            }
        } catch (Throwable th3) {
            th = th3;
            file3 = null;
        }
    }

    public static File[] enumerateRestoreZipFiles() {
        File file = new File(Configuration.defaultBackupPath());
        File[] listFiles = file.exists() ? file.listFiles(new FileFilter() { // from class: mobi.beyondpod.rsscore.BackupRestore.5
            @Override // java.io.FileFilter
            public boolean accept(File file2) {
                return file2.getName().endsWith(BackupRestore._ZipFileExtension);
            }
        }) : null;
        if (listFiles == null || listFiles.length == 0) {
            return null;
        }
        Arrays.sort(listFiles, new Comparator<File>() { // from class: mobi.beyondpod.rsscore.BackupRestore.6
            @Override // java.util.Comparator
            public int compare(File file2, File file3) {
                return Long.valueOf(file3.lastModified()).compareTo(Long.valueOf(file2.lastModified()));
            }
        });
        return listFiles;
    }

    public static ArrayList<String> extractRestoreFileNames(File[] fileArr) {
        ArrayList<String> arrayList = new ArrayList<>(fileArr.length);
        int length = _ZipFileName.length();
        int length2 = _ZipFileExtension.length();
        for (File file : fileArr) {
            String name = file.getName();
            arrayList.add(name.substring(name.startsWith(_ZipFileName) ? length : 0, name.length() - length2));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean clearDirectory(File file) {
        File[] listFiles = file.exists() ? file.listFiles(_BPBackupFilter) : null;
        if (listFiles == null || listFiles.length < 1) {
            return true;
        }
        boolean z = true;
        int i = 0;
        for (File file2 : listFiles) {
            if (!file2.delete()) {
                CoreHelper.writeTraceEntry(TAG, "failed to delete file " + file2.getName());
                z = false;
            }
            i++;
        }
        CoreHelper.writeTraceEntry(TAG, String.format("Cleaned %s of %s files from %s", Integer.valueOf(i), Integer.valueOf(listFiles.length), file));
        return z;
    }
}
