package mobi.beyondpod.services.player;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.SystemClock;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public abstract class TransportFocusHelper {
    static final ComponentName MEDIA_RECEIVER = new ComponentName(Configuration.packageName(), "mobi.beyondpod.services.player.MediaButtonIntentReceiver");

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void startListeningForMediaButton();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void stopListeningForMediaButton();

    public static TransportFocusHelper getInstance() {
        return TransportFocus.Holder.sInstance;
    }

    /* loaded from: classes.dex */
    private static class BroadcastReceiverTransportFocus extends TransportFocusHelper {
        private BroadcastReceiverTransportFocus() {
        }

        /* loaded from: classes.dex */
        private static class Holder {
            private static final BroadcastReceiverTransportFocus sInstance = new BroadcastReceiverTransportFocus();

            private Holder() {
            }
        }

        @Override // mobi.beyondpod.services.player.TransportFocusHelper
        void startListeningForMediaButton() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.media.AUDIO_BECOMING_NOISY");
            intentFilter.setPriority(999);
            BeyondPodApplication.getInstance().registerReceiver(MediaButtonIntentReceiver.Instance, intentFilter);
        }

        @Override // mobi.beyondpod.services.player.TransportFocusHelper
        void stopListeningForMediaButton() {
            BeyondPodApplication.getInstance().unregisterReceiver(MediaButtonIntentReceiver.Instance);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class TransportFocus extends TransportFocusHelper {
        private static MediaSession _session;

        private TransportFocus() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Holder {
            private static final TransportFocus sInstance = new TransportFocus();

            private Holder() {
            }
        }

        private static Intent buildIntent(ComponentName componentName) {
            Intent intent = new Intent();
            intent.setComponent(MEDIA_RECEIVER);
            return intent;
        }

        private static PendingIntent buildPendingIntentForComponent(ComponentName componentName) {
            return PendingIntent.getBroadcast(BeyondPodApplication.getInstance(), 0, buildIntent(componentName), CoreHelper.apiLevel() < 21 ? 268435456 : 134217728);
        }

        @Override // mobi.beyondpod.services.player.TransportFocusHelper
        @SuppressLint({"NewApi"})
        void startListeningForMediaButton() {
            if (Configuration.enableHeadsetButton()) {
                if (CoreHelper.apiLevel() < 21) {
                    AudioManager audioManager = (AudioManager) BeyondPodApplication.getInstance().getSystemService("audio");
                    if (audioManager != null) {
                        audioManager.registerMediaButtonEventReceiver(MEDIA_RECEIVER);
                    }
                } else if (_session == null) {
                    PlaybackState build = new PlaybackState.Builder().setActions(631L).setState(3, 0L, 1.0f, SystemClock.elapsedRealtime()).build();
                    PendingIntent buildPendingIntentForComponent = buildPendingIntentForComponent(MEDIA_RECEIVER);
                    Context applicationContext = BeyondPodApplication.getInstance().getApplicationContext();
                    _session = new MediaSession(applicationContext, applicationContext.getPackageName());
                    _session.setMediaButtonReceiver(buildPendingIntentForComponent);
                    _session.setPlaybackState(build);
                    _session.setActive(true);
                }
            }
            BroadcastReceiverTransportFocus.Holder.sInstance.startListeningForMediaButton();
        }

        @Override // mobi.beyondpod.services.player.TransportFocusHelper
        @SuppressLint({"NewApi"})
        void stopListeningForMediaButton() {
            if (CoreHelper.apiLevel() < 21) {
                AudioManager audioManager = (AudioManager) BeyondPodApplication.getInstance().getSystemService("audio");
                if (audioManager != null) {
                    audioManager.unregisterMediaButtonEventReceiver(MEDIA_RECEIVER);
                }
            } else if (_session != null) {
                _session.setMediaButtonReceiver(null);
                _session.release();
                _session = null;
            }
            BroadcastReceiverTransportFocus.Holder.sInstance.stopListeningForMediaButton();
        }
    }
}
