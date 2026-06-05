package mobi.beyondpod.ui.settings;

import android.app.AlertDialog;
import android.os.Bundle;
import android.preference.PreferenceFragment;
import android.text.format.DateUtils;
import android.text.util.Linkify;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.rss.LicenseManager;
import mobi.beyondpod.rsscore.rss.PolicyManager;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.views.base.BPMediaController;

/* loaded from: classes.dex */
public class AboutPreferenceFragment extends PreferenceFragment {
    private static final String ABOUT_BEYOND_POD = CoreHelper.loadResourceString(R.string.about_dialog_about_beyondpod);
    private static final String EXPIRES = CoreHelper.loadResourceString(R.string.about_dialog_expires);
    private static final String LICENSED_TO = CoreHelper.loadResourceString(R.string.about_dialog_licensed_to);

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public View onCreateView(final LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = LayoutInflater.from(getActivity()).inflate(R.layout.about_view, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.ad_versionInfo);
        textView.setText(Configuration.productVersionAsString(getActivity()));
        TextView textView2 = (TextView) inflate.findViewById(R.id.ad_licenseInfo);
        Linkify.addLinks((TextView) inflate.findViewById(R.id.ad_copyright), 15);
        final LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.ad_contextMenu);
        ((Button) inflate.findViewById(R.id.ad_AdvancedConfig)).setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.settings.AboutPreferenceFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CommandManager.cmdShowDeveloperSettings();
                linearLayout.setVisibility(8);
            }
        });
        ((Button) inflate.findViewById(R.id.ad_Exit)).setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.settings.AboutPreferenceFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CommandManager.cmdExit();
            }
        });
        final Button button = (Button) inflate.findViewById(R.id.ad_RefreshTags);
        button.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.settings.AboutPreferenceFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Configuration.refreshTagManager();
                Toast.makeText(layoutInflater.getContext(), "Refreshing...", 1).show();
                button.postDelayed(new Runnable() { // from class: mobi.beyondpod.ui.settings.AboutPreferenceFragment.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        new AlertDialog.Builder(layoutInflater.getContext()).setTitle(Configuration.tagManagerVersion()).setMessage(PolicyManager.dump()).create().show();
                    }
                }, BPMediaController.TOOLBAR_TIMEOUT_SHORT);
            }
        });
        if (PolicyManager.isTagUnlocked()) {
            textView2.setVisibility(8);
        } else {
            textView2.setVisibility(0);
            String[] licenseKey = LicenseManager.getLicenseKey();
            if (licenseKey != null && licenseKey.length > 1) {
                textView2.setText(LICENSED_TO + ": " + licenseKey[1]);
            } else {
                textView2.setText(EXPIRES + " " + DateUtils.formatDateTime(getActivity(), LicenseManager.trialExpirationDate().getTime(), 524304));
            }
        }
        textView.setOnLongClickListener(new View.OnLongClickListener() { // from class: mobi.beyondpod.ui.settings.AboutPreferenceFragment.4
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                linearLayout.setVisibility(0);
                return true;
            }
        });
        getActivity().setTitle(ABOUT_BEYOND_POD + " " + BeyondPodApplication.dumpWakeLocks());
        return inflate;
    }
}
