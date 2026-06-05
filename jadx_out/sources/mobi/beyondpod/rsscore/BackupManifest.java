package mobi.beyondpod.rsscore;

import android.os.Build;
import android.text.TextUtils;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.CharBuffer;
import java.util.ArrayList;
import java.util.Date;
import java.util.Scanner;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.Version;

/* loaded from: classes.dex */
public class BackupManifest {
    static final String ManifestName = "BackupManifest.txt";
    private static final String TAG = "BackupManifest";
    private static final String _ManifestDeviceLabel = "[device]";
    private static final String _ManifestFileNamesLabel = "[FileNames]";
    private static final String _ManifestFileNumLabel = "[FileNum]";
    private static final String _ManifestFilesSizesLabel = "[FileSizes]";
    private static final String _ManifestFilesTotalSizeLabel = "[totalSize]";
    private static final String _ManifestRootPathLabel = "[RootPath]";
    private static final String _ManifestTimeLabel = "[timeStamp]";
    private static final String _ManifestVersionLabel = "[Version]";
    private File _manifestFile;
    public Date backupTime;
    public String device;
    public int fileCount;
    private FileInfo[] files;
    public String repositoryRootPath;
    public long totalFileSize;
    public Version versionCode;

    /* loaded from: classes.dex */
    public static class FileInfo {
        public String fileName;
        public long fileSize;

        public FileInfo(String str, long j) {
            this.fileName = str;
            this.fileSize = j;
        }
    }

    BackupManifest() {
        this._manifestFile = null;
        this.device = "N/A";
        this.fileCount = -1;
    }

    public BackupManifest(File file) throws Exception {
        this._manifestFile = null;
        this.device = "N/A";
        if (file == null || !file.exists()) {
            throw new IllegalArgumentException("Manifest file is missing");
        }
        this._manifestFile = file;
        FileReader fileReader = new FileReader(file);
        CharBuffer allocate = CharBuffer.allocate((int) file.length());
        CoreHelper.writeTraceEntry(TAG, "Reading backup manifest...");
        int read = fileReader.read(allocate);
        fileReader.close();
        if (read <= 0) {
            throw new IOException("Unable to read anything from manifest file.");
        }
        allocate.rewind();
        String[] split = allocate.toString().split("[\\r\\n]+");
        long[] jArr = new long[0];
        String[] strArr = new String[0];
        int i = 0;
        while (i < split.length) {
            if (split[i].charAt(0) != '#') {
                if (split[i].equals(_ManifestVersionLabel)) {
                    i++;
                    this.versionCode = new Version(split[i]);
                } else if (split[i].equals(_ManifestTimeLabel) || split[i].equals("[TimeStamp]")) {
                    i++;
                    this.backupTime = DateTime.tryParseDateTimeWithFormat(split[i], DateTime.RFC822DATEFORMATUTC);
                } else if (split[i].equals(_ManifestRootPathLabel)) {
                    i++;
                    this.repositoryRootPath = split[i];
                } else if (split[i].equals(_ManifestFileNumLabel)) {
                    i++;
                    this.fileCount = new Scanner(split[i]).nextInt();
                } else if (split[i].equals(_ManifestFileNamesLabel)) {
                    i++;
                    strArr = split[i].split(",");
                } else if (split[i].equals(_ManifestFilesSizesLabel) || split[i].equals("[TotalSize]")) {
                    i++;
                    Scanner scanner = new Scanner(split[i]);
                    if (this.fileCount <= 0) {
                        break;
                    }
                    jArr = new long[this.fileCount];
                    for (int i2 = 0; i2 < this.fileCount && scanner.hasNextLong(); i2++) {
                        jArr[i2] = scanner.nextLong();
                    }
                } else if (split[i].equals(_ManifestFilesTotalSizeLabel)) {
                    i++;
                    this.totalFileSize = new Scanner(split[i]).nextLong();
                } else if (split[i].equals(_ManifestDeviceLabel) || split[i].equals("[Device]")) {
                    i++;
                    this.device = split[i];
                }
            }
            i++;
        }
        if (this.fileCount == 0) {
            throw new IllegalArgumentException("Manifest is empty!");
        }
        if (this.fileCount != strArr.length || this.fileCount != jArr.length) {
            throw new IllegalArgumentException("Invalid or corrupted manifest!");
        }
        for (int i3 = 0; i3 != this.fileCount; i3++) {
            this.files = new FileInfo[this.fileCount];
            this.files[i3] = new FileInfo(strArr[i3], jArr[i3]);
        }
    }

    public File getManifestFile() {
        return this._manifestFile;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static File createManifest(String str, File[] fileArr) {
        File file = new File(str);
        if (!file.exists()) {
            return null;
        }
        File file2 = new File(file, ManifestName);
        if (file2.exists()) {
            CoreHelper.writeTraceEntry(TAG, "Deleting pre-existing manifest file.");
            file2.delete();
            try {
                CoreHelper.writeTraceEntry(TAG, "Creating new manifest file.");
                file2.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
                return null;
            }
        }
        try {
            PrintWriter printWriter = new PrintWriter(new FileWriter(file2));
            CoreHelper.writeTraceEntry(TAG, "Begin writing to manifest file.");
            printWriter.println("# Version: " + Configuration.productVersionAsString());
            printWriter.println(_ManifestVersionLabel);
            printWriter.println(Configuration.productVersion());
            Date date = new Date();
            printWriter.println(_ManifestTimeLabel);
            printWriter.println(DateTime.toRFC822UTCString(date));
            printWriter.println(_ManifestRootPathLabel);
            printWriter.println(Configuration.beyondPodPublicStorageRootPath());
            ArrayList arrayList = new ArrayList(fileArr.length);
            ArrayList arrayList2 = new ArrayList(fileArr.length);
            long j = 0;
            int length = fileArr.length;
            int i = 0;
            while (i < length) {
                File file3 = fileArr[i];
                arrayList.add(file3.getName());
                arrayList2.add(Long.valueOf(file3.length()));
                i++;
                j += file3.length();
            }
            printWriter.println(_ManifestFileNumLabel);
            printWriter.println(fileArr.length);
            printWriter.println(_ManifestFilesTotalSizeLabel);
            printWriter.println(String.valueOf(j));
            printWriter.println(_ManifestFileNamesLabel);
            printWriter.println(TextUtils.join(",", arrayList));
            printWriter.println(_ManifestFilesSizesLabel);
            printWriter.println(TextUtils.join(",", arrayList2));
            printWriter.println(_ManifestDeviceLabel);
            printWriter.println(Build.MANUFACTURER + " " + Build.MODEL);
            printWriter.close();
            CoreHelper.writeTraceEntry(TAG, "Finished writing to manifest file.");
            return file2;
        } catch (IOException unused) {
            return null;
        }
    }

    public String toString() {
        return String.format("Backup Manifest data: Backup of version: %s from %s (%s files, total size %s bytes)", this.versionCode.toString(), this.backupTime, Integer.valueOf(this.fileCount), Long.valueOf(this.totalFileSize));
    }
}
