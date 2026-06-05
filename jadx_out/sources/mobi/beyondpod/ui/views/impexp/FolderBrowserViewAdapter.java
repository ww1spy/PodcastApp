package mobi.beyondpod.ui.views.impexp;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.io.File;
import java.io.FileFilter;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.repository.FeedRepository;

/* loaded from: classes.dex */
public class FolderBrowserViewAdapter extends BaseAdapter {
    private View.OnClickListener _ClickListener;
    private LayoutInflater _Inflater;
    private boolean _IsSelectingVirtualFeed;
    private File _Root;
    private static final String FILES = CoreHelper.loadResourceString(R.string.folder_browser_files);
    private static final String IN = CoreHelper.loadResourceString(R.string.folder_browser_in);
    private static final String BACK_TO = CoreHelper.loadResourceString(R.string.folder_browser_back_to);
    private static final String INTERNAL_STORAGE = CoreHelper.loadResourceString(R.string.folder_browser_internal_storage);
    private static final String SD_CARD = CoreHelper.loadResourceString(R.string.folder_browser_sd_card);
    private ArrayList<File> _Items = new ArrayList<>();
    private boolean _CanNavigateBack = false;
    private ArrayList<File> _RootMounts = new ArrayList<>();

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class FileNameComparator implements Comparator<File> {
        private FileNameComparator() {
        }

        @Override // java.util.Comparator
        public int compare(File file, File file2) {
            return file.getName().compareToIgnoreCase(file2.getName());
        }
    }

    public FolderBrowserViewAdapter(Context context, View.OnClickListener onClickListener, boolean z) {
        this._Inflater = LayoutInflater.from(context);
        this._IsSelectingVirtualFeed = z;
        this._ClickListener = onClickListener;
        File findSDRoot = CoreHelper.findSDRoot(CoreHelper.getPrimaryStorageMount());
        File findSDRoot2 = CoreHelper.findSDRoot(CoreHelper.getOptionalStorageMount());
        if (findSDRoot != null) {
            this._RootMounts.add(findSDRoot);
        }
        if (findSDRoot2 != null) {
            this._RootMounts.add(findSDRoot2);
        }
        File file = new File("/mnt/media");
        if (file.exists() && file.isDirectory()) {
            for (File file2 : file.listFiles(new FilenameFilter() { // from class: mobi.beyondpod.ui.views.impexp.FolderBrowserViewAdapter.1
                @Override // java.io.FilenameFilter
                public boolean accept(File file3, String str) {
                    return str.toLowerCase().startsWith("usb.");
                }
            })) {
                if (file2.isDirectory()) {
                    this._RootMounts.add(file2);
                }
            }
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this._Items.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (i < getCount()) {
            return this._Items.get(i);
        }
        return null;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return this._Items.get(i) == null ? -1 : 0;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2;
        FolderListViewItem folderListViewItem;
        File file = this._Items.get(i);
        try {
            if (file == null) {
                return view == null ? this._Inflater.inflate(R.layout.update_queue_empty_view, (ViewGroup) null) : view;
            }
            if (view == null) {
                view2 = this._Inflater.inflate(R.layout.folder_browser_view_item, (ViewGroup) null);
                try {
                    folderListViewItem = new FolderListViewItem();
                    folderListViewItem.primaryText = (TextView) view2.findViewById(R.id.folderPrimaryText);
                    folderListViewItem.secondaryText = (TextView) view2.findViewById(R.id.folderSecondaryText);
                    folderListViewItem.selectFolderBtn = view2.findViewById(R.id.btnSelectFolder);
                    folderListViewItem.folderIcon = (ImageView) view2.findViewById(R.id.folderIcon);
                    view2.setTag(folderListViewItem);
                } catch (Exception e) {
                    e = e;
                    e.printStackTrace();
                    return view2;
                }
            } else {
                view2 = view;
                folderListViewItem = (FolderListViewItem) view.getTag();
            }
            buildViewItem(folderListViewItem, file, viewGroup);
            return view2;
        } catch (Exception e2) {
            e = e2;
            view2 = view;
        }
    }

    private String getRootUserReadableName(File file) {
        if (this._RootMounts.size() > 1) {
            if (file.getAbsolutePath().equals(this._RootMounts.get(0).getAbsolutePath())) {
                return INTERNAL_STORAGE;
            }
            if (file.getAbsolutePath().equals(this._RootMounts.get(1).getAbsolutePath())) {
                return SD_CARD;
            }
        }
        return file.getName();
    }

    private void buildViewItem(FolderListViewItem folderListViewItem, File file, ViewGroup viewGroup) {
        int numberOfFiles;
        if (isParentOf(file, this._Root)) {
            folderListViewItem.primaryText.setText(BACK_TO + " " + file.getName());
            folderListViewItem.secondaryText.setVisibility(8);
            folderListViewItem.selectFolderBtn.setVisibility(8);
            folderListViewItem.folderIcon.setImageResource(R.drawable.ic_action_undo);
            return;
        }
        folderListViewItem.primaryText.setText(getRootUserReadableName(file));
        Feed virtualFeedByDownloadPath = this._IsSelectingVirtualFeed ? FeedRepository.getVirtualFeedByDownloadPath(file.getPath()) : null;
        if (virtualFeedByDownloadPath != null) {
            folderListViewItem.secondaryText.setText(IN + " " + virtualFeedByDownloadPath.getCategories().getPrimary().name());
            numberOfFiles = 0;
        } else {
            numberOfFiles = getNumberOfFiles(file);
            folderListViewItem.secondaryText.setText(numberOfFiles + " " + FILES);
        }
        folderListViewItem.secondaryText.setVisibility((virtualFeedByDownloadPath != null || numberOfFiles > 0) ? 0 : 8);
        folderListViewItem.selectFolderBtn.setVisibility(virtualFeedByDownloadPath == null ? 0 : 8);
        folderListViewItem.folderIcon.setImageResource(R.drawable.ic_action_folder_open);
        folderListViewItem.selectFolderBtn.setOnClickListener(this._ClickListener);
        folderListViewItem.selectFolderBtn.setTag(file);
    }

    public void clear() {
        this._Items.clear();
    }

    public File getFileAt(int i) {
        Object item = getItem(i);
        if (item != null) {
            return (File) item;
        }
        return null;
    }

    public void refresh() {
        this._CanNavigateBack = false;
        this._Items.clear();
        if (this._Root == null) {
            if (this._RootMounts.size() > 1) {
                this._Items.addAll(this._RootMounts);
                notifyDataSetChanged();
                return;
            }
            this._Root = this._RootMounts.get(0);
        } else {
            this._CanNavigateBack = true;
        }
        try {
            Collections.addAll(this._Items, this._Root.listFiles(new FileFilter() { // from class: mobi.beyondpod.ui.views.impexp.FolderBrowserViewAdapter.2
                @Override // java.io.FileFilter
                public boolean accept(File file) {
                    return (!file.isDirectory() || file.isHidden() || file.getName().startsWith("com.android.") || file.getName().startsWith("com.google.") || file.getName().startsWith(".")) ? false : true;
                }
            }));
        } catch (Exception unused) {
        }
        Collections.sort(this._Items, new FileNameComparator());
        if (this._CanNavigateBack) {
            this._Items.add(0, getParentDirectory());
        }
        notifyDataSetChanged();
    }

    private File getParentDirectory() {
        return new File(this._Root.getPath().replace(this._Root.getName(), ""));
    }

    private boolean isParentOf(File file, File file2) {
        return file != null && file2 != null && file2.getPath().length() > file.getPath().length() && file2.getPath().startsWith(file.getPath());
    }

    private int getNumberOfFiles(File file) {
        File[] listFiles;
        if (file == null || (listFiles = file.listFiles(new FileFilter() { // from class: mobi.beyondpod.ui.views.impexp.FolderBrowserViewAdapter.3
            @Override // java.io.FileFilter
            public boolean accept(File file2) {
                return file2.isFile() && !file2.getName().startsWith(".");
            }
        })) == null) {
            return 0;
        }
        return listFiles.length;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class FolderListViewItem {
        ImageView folderIcon;
        TextView primaryText;
        TextView secondaryText;
        View selectFolderBtn;

        private FolderListViewItem() {
        }
    }

    public void setRoot(File file) {
        File file2 = null;
        if (file != null) {
            if (this._RootMounts.size() != 1 || !file.equals(this._RootMounts.get(0))) {
                Iterator<File> it = this._RootMounts.iterator();
                while (it.hasNext()) {
                    File next = it.next();
                    if (file.equals(next)) {
                        break;
                    } else if (isParentOf(file, next)) {
                        break;
                    }
                }
            }
            this._Root = file2;
            refresh();
        }
        file2 = file;
        this._Root = file2;
        refresh();
    }

    public boolean canGoUp() {
        return this._CanNavigateBack;
    }
}
