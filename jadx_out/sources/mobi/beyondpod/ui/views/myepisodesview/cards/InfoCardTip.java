package mobi.beyondpod.ui.views.myepisodesview.cards;

import android.animation.Animator;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.UUID;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.commands.CommandManagerBase;
import mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter;
import mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardManager;
import mobi.beyondpod.ui.views.notifications.Message;
import mobi.beyondpod.ui.views.notifications.UserNotificationManager;

/* loaded from: classes.dex */
public class InfoCardTip implements SectionedListViewAdapter.ISectionedAdapter {
    public static final UUID AdapterID = UUID.fromString("AABBCCDD-0000-0000-0002-000000000000");
    public static final int CARD_TYPE_INFO = 2;
    public static final int CARD_TYPE_MARKETING = 3;
    public static final int CARD_TYPE_WARNING = 1;
    int _CardType;
    Context _Context;
    Message _Message;
    IOnGotItAction _OnGotItAction;
    InfoCardManager.IInfoCardAdapterOwner _Owner;
    int _PreferenceToSet;

    /* loaded from: classes.dex */
    public interface IOnGotItAction {
        void onGotIt();
    }

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

    public InfoCardTip(Context context, Message message, int i, int i2, InfoCardManager.IInfoCardAdapterOwner iInfoCardAdapterOwner) {
        this._PreferenceToSet = -1;
        this._CardType = 2;
        this._Context = context;
        this._Message = message;
        this._Owner = iInfoCardAdapterOwner;
        this._PreferenceToSet = i;
        this._CardType = i2;
    }

    public InfoCardTip(Context context, Message message, IOnGotItAction iOnGotItAction, int i, InfoCardManager.IInfoCardAdapterOwner iInfoCardAdapterOwner) {
        this._PreferenceToSet = -1;
        this._CardType = 2;
        this._Context = context;
        this._Message = message;
        this._Owner = iInfoCardAdapterOwner;
        this._OnGotItAction = iOnGotItAction;
        this._CardType = i;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            Holder holder = new Holder();
            view = View.inflate(this._Context, R.layout.infocard_tip, null);
            holder.title = (TextView) view.findViewById(R.id.title);
            holder.description = (TextView) view.findViewById(R.id.description);
            holder.TBDismiss = (TextView) view.findViewById(R.id.okButton);
            holder.cardFace = view.findViewById(R.id.cardFace);
            holder.cardRoot = view;
            view.setTag(holder);
        }
        Holder holder2 = (Holder) view.getTag();
        int i2 = this._CardType;
        if (i2 == 1) {
            holder2.cardFace.setBackgroundColor(ContextCompat.getColor(this._Context, R.color.infocard_face_warning));
        } else if (i2 == 3) {
            holder2.cardFace.setBackgroundColor(ContextCompat.getColor(this._Context, R.color.infocard_face_marketing));
        } else {
            holder2.cardFace.setBackgroundColor(ContextCompat.getColor(this._Context, R.color.infocard_face_tip));
        }
        holder2.title.setText(this._Message.MessageTitle);
        holder2.description.setText(this._Message.formattedMessage(this._Context));
        holder2.TBDismiss.setText(R.string.info_card_got_it);
        holder2.TBDismiss.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardTip.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                InfoCardTip.this.dismiss(view2);
            }
        });
        holder2.description.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardTip.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                String expandURLTokens = InfoCardTip.this._Message.expandURLTokens();
                if (StringUtils.isNullOrEmpty(expandURLTokens)) {
                    return;
                }
                if (expandURLTokens.startsWith("android.settings")) {
                    CommandManager.startActivity(new Intent(expandURLTokens));
                } else if (expandURLTokens.startsWith(Configuration.beyondPodContentUrl())) {
                    CommandManager.cmdStartHtmlViewActivity(Uri.parse(expandURLTokens), InfoCardTip.this._Message.MessageTitle, false);
                } else {
                    CommandManagerBase.cmdOpenExternalBrowser(expandURLTokens);
                }
            }
        });
        return view;
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
            findCardRoot.animate().alpha(0.0f).setListener(new Animator.AnimatorListener() { // from class: mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardTip.3
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
                    InfoCardTip.this.refreshParent();
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
        if (this._OnGotItAction != null) {
            this._OnGotItAction.onGotIt();
        }
        if (this._PreferenceToSet >= 0) {
            UserNotificationManager.setNotificationPreferenceFor(this._PreferenceToSet, false);
            UserNotificationManager.recordTipShown();
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
        View cardFace;
        View cardRoot;
        TextView description;
        TextView title;

        Holder() {
        }
    }
}
