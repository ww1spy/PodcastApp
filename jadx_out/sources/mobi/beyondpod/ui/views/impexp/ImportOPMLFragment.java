package mobi.beyondpod.ui.views.impexp;

import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import java.io.File;
import java.io.FilenameFilter;
import java.util.UUID;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;

/* loaded from: classes.dex */
public class ImportOPMLFragment extends Fragment {
    static final String TAG = "ImportOPMLFragment";
    private Spinner _FileNames;
    File[] _FilesToImport;
    private Button _ImportButton;
    private TextView _Message;
    private View.OnClickListener _OnImportListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.impexp.ImportOPMLFragment.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            File file = ImportOPMLFragment.this._FilesToImport[ImportOPMLFragment.this._FileNames.getSelectedItemPosition()];
            Feed feed = new Feed(UUID.randomUUID(), null, file.getName(), Uri.fromFile(file).toString(), 4);
            OpmlListViewFragment opmlListViewFragment = (OpmlListViewFragment) ImportOPMLFragment.this.getActivity().getSupportFragmentManager().findFragmentByTag(OpmlListViewFragment.TAG);
            if (opmlListViewFragment == null) {
                opmlListViewFragment = new OpmlListViewFragment();
                FragmentTransaction beginTransaction = ImportOPMLFragment.this.getActivity().getSupportFragmentManager().beginTransaction();
                beginTransaction.add(R.id.opmlContentFragmentContainer, opmlListViewFragment, OpmlListViewFragment.TAG);
                beginTransaction.setTransition(FragmentTransaction.TRANSIT_FRAGMENT_FADE);
                beginTransaction.commit();
                ImportOPMLFragment.this.getActivity().getFragmentManager().executePendingTransactions();
            }
            opmlListViewFragment.initialize(feed);
            opmlListViewFragment.loadCurrentFeed();
        }
    };

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.import_opml_fragment, (ViewGroup) null);
        this._ImportButton = (Button) inflate.findViewById(R.id.importOpmlButton);
        this._Message = (TextView) inflate.findViewById(R.id.opml_import_msg);
        this._FileNames = (Spinner) inflate.findViewById(R.id.import_opml_file);
        this._Message.setText(String.format(getResources().getText(R.string.opml_import_opml_msg1).toString(), Configuration.beyondPodPublicStorageRootPath()));
        this._ImportButton.setOnClickListener(this._OnImportListener);
        this._FilesToImport = new File(Configuration.beyondPodPublicStorageRootPath()).listFiles(new FilenameFilter() { // from class: mobi.beyondpod.ui.views.impexp.ImportOPMLFragment.1
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                return str.endsWith("opml");
            }
        });
        String[] strArr = new String[this._FilesToImport.length];
        for (int i = 0; i != this._FilesToImport.length; i++) {
            strArr[i] = this._FilesToImport[i].getName();
        }
        ArrayAdapter arrayAdapter = new ArrayAdapter(getActivity(), android.R.layout.simple_spinner_item, strArr);
        arrayAdapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        this._FileNames.setAdapter((SpinnerAdapter) arrayAdapter);
        this._ImportButton.setEnabled(this._FilesToImport.length > 0);
        return inflate;
    }
}
