package mobi.beyondpod.ui.views.navigator;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.rss.PolicyManager;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.commands.CommandManagerBase;
import mobi.beyondpod.ui.views.notifications.UserNotificationManager;
import mobi.beyondpod.ui.views.onboarding.startup.FirstRun;

/* loaded from: classes.dex */
public class NavigatorExtras extends LinearLayout {
    View _AddFeed;
    TextView _AddFeedText;
    View _EditContent;
    private View.OnClickListener _EditListener;
    View _GoPro;
    View _Help;
    IExtrasOwner _Owner;
    View _Settings;

    /* loaded from: classes.dex */
    public interface IExtrasOwner {
        FragmentActivity getActivity();

        boolean isEditingFeeds();

        void startEditMode();
    }

    public NavigatorExtras(Context context) {
        super(context);
        this._EditListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.navigator.NavigatorExtras.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (NavigatorExtras.this._Owner != null) {
                    NavigatorExtras.this._Owner.startEditMode();
                }
            }
        };
    }

    public NavigatorExtras(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this._EditListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.navigator.NavigatorExtras.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (NavigatorExtras.this._Owner != null) {
                    NavigatorExtras.this._Owner.startEditMode();
                }
            }
        };
    }

    public NavigatorExtras(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this._EditListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.navigator.NavigatorExtras.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (NavigatorExtras.this._Owner != null) {
                    NavigatorExtras.this._Owner.startEditMode();
                }
            }
        };
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this._EditContent = findViewById(R.id.drawer_manage_feeds);
        this._EditContent.setOnClickListener(this._EditListener);
        this._Settings = findViewById(R.id.drawer_settings);
        this._Settings.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.navigator.NavigatorExtras.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CommandManager.cmdShowGlobalSettings();
            }
        });
        if (Configuration.DBGUIDebug() != 0) {
            this._Settings.setOnLongClickListener(new View.OnLongClickListener() { // from class: mobi.beyondpod.ui.views.navigator.NavigatorExtras.3
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    if (FirstRun.isActive()) {
                        return true;
                    }
                    NavigatorExtras.this._Owner.getActivity().startActivityForResult(new Intent(BeyondPodApplication.getInstance(), (Class<?>) FirstRun.class), FirstRun.ACTIVITY_REQUEST_FirstRun);
                    return true;
                }
            });
        }
        this._Help = findViewById(R.id.drawer_help);
        this._Help.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.navigator.NavigatorExtras.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CommandManagerBase.cmdOpenExternalBrowser(Configuration.helpFileURL().toString());
            }
        });
        if (Configuration.DBGUIDebug() != 0) {
            this._Help.setOnLongClickListener(new View.OnLongClickListener() { // from class: mobi.beyondpod.ui.views.navigator.NavigatorExtras.5
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view) {
                    UserNotificationManager.setNotificationPreferenceFor(1, true);
                    UserNotificationManager.setNotificationPreferenceFor(2, true);
                    Toast.makeText(NavigatorExtras.this.getContext(), "Guided Tour is now enabled!", 0).show();
                    return true;
                }
            });
        }
        this._GoPro = findViewById(R.id.drawer_go_pro);
        this._AddFeed = findViewById(R.id.add_feed);
        this._AddFeed.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.navigator.NavigatorExtras.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (NavigatorExtras.this._Owner.isEditingFeeds()) {
                    CommandManager.cmdAddNewCategory(NavigatorExtras.this.getContext());
                } else {
                    CommandManager.cmdOpenAddFeedDialog();
                }
            }
        });
        this._AddFeedText = (TextView) findViewById(R.id.add_feed_text);
        refreshContent();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initialize(IExtrasOwner iExtrasOwner) {
        this._Owner = iExtrasOwner;
    }

    public void switchToNonEditMode() {
        this._AddFeedText.setText(R.string.navigator_add_feed);
    }

    public void switchToEditMode() {
        this._AddFeedText.setText(R.string.navigator_add_category);
    }

    public void refreshContent() {
        if (!PolicyManager.isUnlocked()) {
            this._GoPro.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.navigator.NavigatorExtras.7
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    CommandManager.cmdUnlockBeyondPod(NavigatorExtras.this.getContext());
                }
            });
        } else {
            this._GoPro.setVisibility(8);
        }
    }
}
