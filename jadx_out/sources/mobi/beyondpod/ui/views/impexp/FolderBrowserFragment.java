package mobi.beyondpod.ui.views.impexp;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.io.File;
import mobi.beyondpod.R;

/* loaded from: classes.dex */
public class FolderBrowserFragment extends Fragment implements View.OnClickListener {
    public static final String TAG = "FolderBrowserFragment";
    private FolderBrowserViewAdapter _Adapter;
    ListView _Content;
    OnFolderSelectedListener _OnFolderSelected;

    /* loaded from: classes.dex */
    public interface OnFolderSelectedListener {
        void onFolderSelected(File file);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.folder_browser_view, (ViewGroup) null);
        this._Content = (ListView) inflate.findViewById(R.id.folderContent);
        this._Adapter = new FolderBrowserViewAdapter(getActivity(), this, true);
        this._Content.setAdapter((ListAdapter) this._Adapter);
        this._Adapter.setRoot(null);
        this._Content.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: mobi.beyondpod.ui.views.impexp.FolderBrowserFragment.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                FolderBrowserFragment.this._Adapter.setRoot(FolderBrowserFragment.this._Adapter.getFileAt(i));
                FolderBrowserFragment.this._Content.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.views.impexp.FolderBrowserFragment.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        FolderBrowserFragment.this._Content.setSelectionAfterHeaderView();
                    }
                }, 100L);
            }
        });
        return inflate;
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        this._Adapter.notifyDataSetChanged();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v4.app.Fragment
    @Deprecated
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this._OnFolderSelected = (OnFolderSelectedListener) activity;
    }

    @Override // android.support.v4.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof Activity) {
            this._OnFolderSelected = (OnFolderSelectedListener) ((Activity) context);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        File file;
        if (view.getTag() == null || (file = (File) view.getTag()) == null || this._OnFolderSelected == null) {
            return;
        }
        this._OnFolderSelected.onFolderSelected(file);
    }
}
