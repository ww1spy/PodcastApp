package mobi.beyondpod.ui.views.myepisodesview.cards;

import android.animation.Animator;
import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.UUID;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.rss.LicenseManager;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter;
import mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardManager;
import mobi.beyondpod.ui.views.notifications.UserNotificationManager;

/* loaded from: classes.dex */
public class InfoCardGuidedTour implements SectionedListViewAdapter.ISectionedAdapter {
    public static final UUID AdapterID = UUID.fromString("AABBCCDD-0000-0000-0001-000000000000");
    public static final int TYPE_TOUR = 0;
    public static final int TYPE_TRIAL_ABOUT_TO_EXPIRE_WARNING = 2;
    public static final int TYPE_TRIAL_EXPIRED = 3;
    public static final int TYPE_VERSION_UPGRADE = 1;
    private View.OnClickListener _ActionListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardGuidedTour.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommandManager.cmdOpenGuidedTour(InfoCardGuidedTour.this._CardType, InfoCardGuidedTour.this._Owner.getOwnerActivity());
        }
    };
    private View.OnClickListener _ActionListenerGoPro = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardGuidedTour.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommandManager.cmdUnlockBeyondPod(InfoCardGuidedTour.this._Context);
        }
    };
    int _CardType;
    Context _Context;
    InfoCardManager.IInfoCardAdapterOwner _Owner;

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public Object getFirstItemAtRow(int i) {
        return null;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public Object getItemAtPosition(int i) {
        return null;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public int getItemCount() {
        return 0;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public int getItemRow(Object obj) {
        return 0;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public int getRowCount() {
        return 1;
    }

    public InfoCardGuidedTour(Context context, int i, InfoCardManager.IInfoCardAdapterOwner iInfoCardAdapterOwner) {
        this._CardType = 0;
        this._Context = context;
        this._CardType = i;
        this._Owner = iInfoCardAdapterOwner;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            Holder holder = new Holder();
            view = View.inflate(this._Context, R.layout.infocard_guided_tour, null);
            holder.title = (TextView) view.findViewById(R.id.title);
            holder.action = (TextView) view.findViewById(R.id.description);
            holder.TBDismiss = (TextView) view.findViewById(R.id.okButton);
            holder.cardFace = view.findViewById(R.id.cardFace);
            holder.cardContent = view.findViewById(R.id.cardContent);
            view.setTag(holder);
        }
        Holder holder2 = (Holder) view.getTag();
        if (this._CardType == 0) {
            buildGuidedTourCard(holder2);
        } else if (this._CardType == 1) {
            buildWhatIsNewCard(holder2);
        } else if (this._CardType == 2) {
            buildTrialAboutToExpireCard(holder2);
        } else if (this._CardType == 3) {
            buildTrialExpiredCard(holder2);
        }
        holder2.TBDismiss.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardGuidedTour.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                InfoCardGuidedTour.this.dismiss(view2);
            }
        });
        return view;
    }

    private void buildWhatIsNewCard(Holder holder) {
        holder.cardFace.setBackgroundColor(ContextCompat.getColor(this._Context, R.color.infocard_face_whatsnew));
        holder.title.setText(this._Context.getResources().getString(R.string.info_card_whats_new_title, Configuration.productVersion()));
        holder.action.setText(R.string.info_card_whats_new_action);
        holder.TBDismiss.setText(R.string.info_card_got_it);
        holder.TBDismiss.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_action_tick, 0, 0, 0);
        holder.cardContent.setOnClickListener(this._ActionListener);
    }

    private void buildGuidedTourCard(Holder holder) {
        holder.cardFace.setBackgroundColor(ContextCompat.getColor(this._Context, R.color.infocard_face_guided_tour));
        holder.title.setText(R.string.info_card_guided_tour_title);
        holder.action.setText(R.string.info_card_guided_tour_action);
        holder.TBDismiss.setText(R.string.info_card_guided_tour_skip);
        holder.TBDismiss.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_action_cancel, 0, 0, 0);
        holder.cardContent.setOnClickListener(this._ActionListener);
    }

    private void buildTrialAboutToExpireCard(Holder holder) {
        holder.cardFace.setBackgroundColor(ContextCompat.getColor(this._Context, R.color.infocard_face_whatsnew));
        holder.title.setText(this._Context.getResources().getString(R.string.trial_about_to_expire_message, Integer.valueOf(LicenseManager.trialExpiresInDays())));
        holder.action.setText(R.string.MENU_unlock_app);
        holder.TBDismiss.setText(R.string.info_card_got_it);
        holder.TBDismiss.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_action_tick, 0, 0, 0);
        holder.cardContent.setOnClickListener(this._ActionListenerGoPro);
    }

    private void buildTrialExpiredCard(Holder holder) {
        holder.cardFace.setBackgroundColor(ContextCompat.getColor(this._Context, R.color.infocard_face_guided_tour));
        holder.title.setText(R.string.trial_expired_message);
        holder.action.setText(R.string.MENU_unlock_app);
        holder.TBDismiss.setText(R.string.info_card_guided_tour_skip);
        holder.TBDismiss.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_action_cancel, 0, 0, 0);
        holder.cardContent.setOnClickListener(this._ActionListenerGoPro);
    }

    private View findCardRoot(View view) {
        while (view.getId() != R.id.infoCardRoot) {
            Object parent = view.getParent();
            view = (parent == null || !(parent instanceof View)) ? null : (View) parent;
            if (view == null) {
                return null;
            }
        }
        return view;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismiss(View view) {
        clearNotificationFlag();
        final View findCardRoot = findCardRoot(view);
        if (findCardRoot == null) {
            refreshParent();
        } else {
            findCardRoot.animate().alpha(0.0f).setListener(new Animator.AnimatorListener() { // from class: mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardGuidedTour.4
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    InfoCardGuidedTour.this.refreshParent();
                    findCardRoot.setAlpha(1.0f);
                }
            }).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshParent() {
        this._Owner.reloadContent();
    }

    private void clearNotificationFlag() {
        switch (this._CardType) {
            case 0:
                UserNotificationManager.setNotificationPreferenceFor(1, false);
                return;
            case 1:
                UserNotificationManager.setNotificationPreferenceFor(2, false);
                return;
            case 2:
                Configuration.setTrialExpirationWarningDays(LicenseManager.trialExpiresInDays());
                return;
            case 3:
                UserNotificationManager.setNotificationPreferenceFor(14, false);
                return;
            default:
                return;
        }
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public UUID getAdapterId() {
        return AdapterID;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class Holder {
        TextView TBDismiss;
        TextView action;
        View cardContent;
        View cardFace;
        TextView title;

        Holder() {
        }
    }
}
