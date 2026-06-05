package mobi.beyondpod.ui.views.myepisodesview.cards;

import android.content.Context;
import android.support.v4.app.FragmentActivity;
import java.util.Date;
import java.util.GregorianCalendar;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.downloadengine.VersionCheckManager;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.LicenseManager;
import mobi.beyondpod.rsscore.rss.PolicyManager;
import mobi.beyondpod.schedulercore.ScheduledTasksManager;
import mobi.beyondpod.services.player.impl.ChromecastDevice;
import mobi.beyondpod.services.player.smartplay.SmartPlaylistManager;
import mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter;
import mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardTip;
import mobi.beyondpod.ui.views.notifications.Message;
import mobi.beyondpod.ui.views.notifications.UserNotificationManager;

/* loaded from: classes.dex */
public class InfoCardManager {

    /* loaded from: classes.dex */
    public interface IInfoCardAdapterOwner {
        FragmentActivity getOwnerActivity();

        void reloadContent();
    }

    public static SectionedListViewAdapter.ISectionedAdapter generateInfoCardIfNeeded(Context context, IInfoCardAdapterOwner iInfoCardAdapterOwner) {
        if (UserNotificationManager.isNotificationEnabledFor(1)) {
            return new InfoCardGuidedTour(context, 0, iInfoCardAdapterOwner);
        }
        if (UserNotificationManager.isNotificationEnabledFor(2)) {
            return new InfoCardGuidedTour(context, 1, iInfoCardAdapterOwner);
        }
        SectionedListViewAdapter.ISectionedAdapter broadcastNotification = getBroadcastNotification(context, iInfoCardAdapterOwner);
        if (broadcastNotification != null) {
            return broadcastNotification;
        }
        SectionedListViewAdapter.ISectionedAdapter expirationWarningCard = getExpirationWarningCard(context, iInfoCardAdapterOwner);
        if (expirationWarningCard != null) {
            return expirationWarningCard;
        }
        SectionedListViewAdapter.ISectionedAdapter installedOnSDCArd = getInstalledOnSDCArd(context, iInfoCardAdapterOwner);
        if (installedOnSDCArd != null) {
            return installedOnSDCArd;
        }
        SectionedListViewAdapter.ISectionedAdapter introChromecastCard = getIntroChromecastCard(context, iInfoCardAdapterOwner);
        if (introChromecastCard != null) {
            return introChromecastCard;
        }
        SectionedListViewAdapter.ISectionedAdapter introCompactCards = getIntroCompactCards(context, iInfoCardAdapterOwner);
        if (introCompactCards != null) {
            return introCompactCards;
        }
        SectionedListViewAdapter.ISectionedAdapter introMultiSelectCard = getIntroMultiSelectCard(context, iInfoCardAdapterOwner);
        if (introMultiSelectCard != null) {
            return introMultiSelectCard;
        }
        SectionedListViewAdapter.ISectionedAdapter introSmartPlay = getIntroSmartPlay(context, iInfoCardAdapterOwner);
        if (introSmartPlay != null) {
            return introSmartPlay;
        }
        return null;
    }

    private static SectionedListViewAdapter.ISectionedAdapter getInstalledOnSDCArd(Context context, IInfoCardAdapterOwner iInfoCardAdapterOwner) {
        if (!(ScheduledTasksManager.activeTaskCount() > 0 && Configuration.isInstalledOnSDCard()) || !UserNotificationManager.isNotificationEnabledFor(3)) {
            return null;
        }
        Message message = new Message(context.getResources().getString(R.string.dlg_user_warning_installed_on_sd_card_msg));
        message.MessageTitle = context.getResources().getString(R.string.dlg_user_warning_title);
        return new InfoCardTip(context, message, 3, 1, iInfoCardAdapterOwner);
    }

    private static SectionedListViewAdapter.ISectionedAdapter getExpirationWarningCard(Context context, IInfoCardAdapterOwner iInfoCardAdapterOwner) {
        if (PolicyManager.isUnlocked()) {
            return null;
        }
        Date date = new Date();
        LicenseManager.trialExpirationWarningDate();
        LicenseManager.trialExpirationDate();
        LicenseManager.trialExpiresInDays();
        if (date.compareTo(LicenseManager.trialExpirationWarningDate()) > 0) {
            if (!LicenseManager.ifInRestrictedMode()) {
                int trialExpiresInDays = LicenseManager.trialExpiresInDays();
                if (trialExpiresInDays > 0 && Configuration.trialExpirationWarningDays() != trialExpiresInDays) {
                    return new InfoCardGuidedTour(context, 2, iInfoCardAdapterOwner);
                }
            } else if (UserNotificationManager.isNotificationEnabledFor(14)) {
                return new InfoCardGuidedTour(context, 3, iInfoCardAdapterOwner);
            }
        }
        return null;
    }

    private static SectionedListViewAdapter.ISectionedAdapter getBroadcastNotification(Context context, IInfoCardAdapterOwner iInfoCardAdapterOwner) {
        Message customizedMessage = VersionCheckManager.VersionInfo.getCustomizedMessage();
        if (!customizedMessage.hasText() && Configuration.notifyForBetaReleases()) {
            customizedMessage = VersionCheckManager.VersionInfo.BetaUsers;
        }
        Message message = customizedMessage;
        boolean z = new Date().compareTo(Configuration.getNextNotificationTime()) > 0;
        if (!message.hasText() || message.isExpired() || !z) {
            return null;
        }
        final GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.add(10, message.RepeatInterval);
        return new InfoCardTip(context, message, new InfoCardTip.IOnGotItAction() { // from class: mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardManager.1
            @Override // mobi.beyondpod.ui.views.myepisodesview.cards.InfoCardTip.IOnGotItAction
            public void onGotIt() {
                Configuration.setNextNotificationTime(gregorianCalendar.getTime());
            }
        }, 3, iInfoCardAdapterOwner);
    }

    private static SectionedListViewAdapter.ISectionedAdapter getIntroChromecastCard(Context context, IInfoCardAdapterOwner iInfoCardAdapterOwner) {
        if (FeedRepository.getTrackCount() == 0 || UpdateAndDownloadManager.isWorking() || !ChromecastDevice.hasAvailableDevices() || UserNotificationManager.isNotificationEnabledFor(1) || !UserNotificationManager.isNotificationEnabledFor(15)) {
            return null;
        }
        Message message = new Message();
        message.MessageText = context.getResources().getString(R.string.tip_cast_to_your_tv_msg);
        message.MessageTitle = context.getResources().getString(R.string.tip_cast_to_your_tv_title);
        message.ImageResourceId = R.drawable.ic_cast_button;
        return new InfoCardTip(context, message, 15, 2, iInfoCardAdapterOwner);
    }

    private static SectionedListViewAdapter.ISectionedAdapter getIntroCompactCards(Context context, IInfoCardAdapterOwner iInfoCardAdapterOwner) {
        long j = CoreHelper.isDebugBuild() ? 60000L : 172800000L;
        if (FeedRepository.getTrackCount() == 0 || UpdateAndDownloadManager.isWorking() || !UserNotificationManager.hasEnoughTimePassedSinceLastTip(j) || Configuration.episodeCardSize() != 1 || Configuration.publishedEpisodeCardSize() != 1 || ((CategoryManager.CategoryHome.equals(Configuration.getActiveFeedCategory()) && Configuration.getActiveFeedFilter() == null) || !UserNotificationManager.isNotificationEnabledFor(17))) {
            return null;
        }
        Message message = new Message();
        message.MessageText = context.getResources().getString(R.string.tip_how_to_select_compact_card_msg);
        message.MessageTitle = context.getResources().getString(R.string.tip_notification);
        return new InfoCardTip(context, message, 17, 2, iInfoCardAdapterOwner);
    }

    private static SectionedListViewAdapter.ISectionedAdapter getIntroSmartPlay(Context context, IInfoCardAdapterOwner iInfoCardAdapterOwner) {
        long j = CoreHelper.isDebugBuild() ? 60000L : 864000000L;
        if (FeedRepository.getTrackCount() == 0 || UpdateAndDownloadManager.isWorking() || !UserNotificationManager.hasEnoughTimePassedSinceLastTip(j) || SmartPlaylistManager.isConfigured() || !UserNotificationManager.isNotificationEnabledFor(19)) {
            return null;
        }
        Message message = new Message();
        message.MessageText = context.getResources().getString(R.string.tip_introduce_smart_play_msg);
        message.MessageTitle = context.getResources().getString(R.string.tip_notification);
        message.URL = Configuration.faqIntroSmartPlayURL().toString();
        return new InfoCardTip(context, message, 19, 2, iInfoCardAdapterOwner);
    }

    private static SectionedListViewAdapter.ISectionedAdapter getIntroMultiSelectCard(Context context, IInfoCardAdapterOwner iInfoCardAdapterOwner) {
        long j = CoreHelper.isDebugBuild() ? 60000L : 345600000L;
        if (FeedRepository.getTrackCount() == 0 || UpdateAndDownloadManager.isWorking() || !UserNotificationManager.hasEnoughTimePassedSinceLastTip(j) || !UserNotificationManager.isNotificationEnabledFor(18)) {
            return null;
        }
        Message message = new Message();
        message.MessageText = context.getResources().getString(R.string.tip_introduce_multi_select_msg);
        message.MessageTitle = context.getResources().getString(R.string.tip_notification);
        return new InfoCardTip(context, message, 18, 2, iInfoCardAdapterOwner);
    }
}
