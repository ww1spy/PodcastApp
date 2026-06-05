package mobi.beyondpod.services.player;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Intent;
import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.support.v4.content.ContextCompat;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.services.player.impl.ChromecastDevice;

/* loaded from: classes.dex */
public abstract class AudioFocusHelper {
    private static String TAG = "AudioFocusHelper";

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void releaseAudioFocus();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean trySetAudioFocus();

    public static AudioFocusHelper getInstance() {
        return AudioFocus.Holder.sInstance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class AudioFocus extends AudioFocusHelper {
        AudioManager.OnAudioFocusChangeListener _AudioFocusChangeListener;
        private boolean _WasBluetoothA2dpOnTransientAudioFocusLoss;
        private boolean _WasConnectedToCrhomecastOnTransientAudioFocusLoss;
        private boolean _WasPlayingOnTransientAudioFocusLoss;
        private boolean _WasWiredHeadsetConnectedOnTransientAudioFocusLoss;
        private final Object _focusLock;

        @Override // mobi.beyondpod.services.player.AudioFocusHelper
        void releaseAudioFocus() {
        }

        private AudioFocus() {
            this._WasPlayingOnTransientAudioFocusLoss = false;
            this._WasConnectedToCrhomecastOnTransientAudioFocusLoss = false;
            this._WasBluetoothA2dpOnTransientAudioFocusLoss = false;
            this._WasWiredHeadsetConnectedOnTransientAudioFocusLoss = false;
            this._focusLock = new Object();
            this._AudioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: mobi.beyondpod.services.player.AudioFocusHelper.AudioFocus.1
                @Override // android.media.AudioManager.OnAudioFocusChangeListener
                public void onAudioFocusChange(int i) {
                    if (!Configuration.pauseOnNotification()) {
                        CoreHelper.writeTraceEntry(AudioFocusHelper.TAG, "**** Audiofocus changed but pause on notification is Disabled");
                        return;
                    }
                    if (i == 1) {
                        CoreHelper.writeTraceEntry(AudioFocusHelper.TAG, "**** Audiofocus change: AUDIOFOCUS_GAIN. Is Playing:" + AudioFocus.this.isPlaying() + ", Was playing when audiofocus was lost:" + AudioFocus.this._WasPlayingOnTransientAudioFocusLoss + ", Was Connected to Chromecast on focus lost: " + AudioFocus.this._WasConnectedToCrhomecastOnTransientAudioFocusLoss + ", Is connected now: " + ChromecastDevice.isConnected() + ", Was Connected to Bluetooth when audiofocus was lost: " + AudioFocus.this._WasBluetoothA2dpOnTransientAudioFocusLoss + ", Is connected now: " + AudioFocus.this.isBluetoothA2dpOn() + ", Was wired headset connected when audiofocus was lost: " + AudioFocus.this._WasWiredHeadsetConnectedOnTransientAudioFocusLoss + ", Is Connected now: " + AudioFocus.this.isWiredHeadsetPluggedIn());
                        if (!AudioFocus.this.isPlaying() && AudioFocus.this._WasPlayingOnTransientAudioFocusLoss) {
                            if (AudioFocus.this._WasConnectedToCrhomecastOnTransientAudioFocusLoss != ChromecastDevice.isConnected() || AudioFocus.this._WasBluetoothA2dpOnTransientAudioFocusLoss != AudioFocus.this.isBluetoothA2dpOn() || AudioFocus.this._WasWiredHeadsetConnectedOnTransientAudioFocusLoss != AudioFocus.this.isWiredHeadsetPluggedIn()) {
                                CoreHelper.writeTraceEntry(AudioFocusHelper.TAG, "**** CC, BT or WH connections have changed since we paused. Will not resume!");
                            } else {
                                AudioFocus.this.play();
                            }
                        }
                        AudioFocus.this._WasPlayingOnTransientAudioFocusLoss = false;
                        return;
                    }
                    switch (i) {
                        case -3:
                            if (ChromecastDevice.isConnected()) {
                                CoreHelper.writeTraceEntry(AudioFocusHelper.TAG, "**** Audiofocus change: AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK! Currently playing on Chromecast player. Ignoring...");
                                return;
                            }
                            AudioFocus.this._WasPlayingOnTransientAudioFocusLoss = AudioFocus.this.isPlaying();
                            AudioFocus.this._WasConnectedToCrhomecastOnTransientAudioFocusLoss = ChromecastDevice.isConnected();
                            AudioFocus.this._WasBluetoothA2dpOnTransientAudioFocusLoss = AudioFocus.this.isBluetoothA2dpOn();
                            AudioFocus.this._WasWiredHeadsetConnectedOnTransientAudioFocusLoss = AudioFocus.this.isWiredHeadsetPluggedIn();
                            CoreHelper.writeTraceEntry(AudioFocusHelper.TAG, "**** Audiofocus change: AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK. Is Playing: " + AudioFocus.this._WasPlayingOnTransientAudioFocusLoss + ", Is Connected to Chromecast: " + ChromecastDevice.isConnected() + ", Is Connected to Bluetooth Audio: " + AudioFocus.this._WasBluetoothA2dpOnTransientAudioFocusLoss + ", Is Wired Headset Connected: " + AudioFocus.this._WasWiredHeadsetConnectedOnTransientAudioFocusLoss);
                            AudioFocus.this.duck();
                            return;
                        case -2:
                            AudioFocus.this._WasPlayingOnTransientAudioFocusLoss = AudioFocus.this.isPlaying();
                            AudioFocus.this._WasConnectedToCrhomecastOnTransientAudioFocusLoss = ChromecastDevice.isConnected();
                            AudioFocus.this._WasBluetoothA2dpOnTransientAudioFocusLoss = AudioFocus.this.isBluetoothA2dpOn();
                            AudioFocus.this._WasWiredHeadsetConnectedOnTransientAudioFocusLoss = AudioFocus.this.isWiredHeadsetPluggedIn();
                            CoreHelper.writeTraceEntry(AudioFocusHelper.TAG, "**** Audiofocus change: AUDIOFOCUS_LOSS_TRANSIENT. Is Playing:" + AudioFocus.this._WasPlayingOnTransientAudioFocusLoss + ", Is Connected to Chromecast: " + ChromecastDevice.isConnected() + ", Is Connected to Bluetooth Audio: " + AudioFocus.this._WasBluetoothA2dpOnTransientAudioFocusLoss + ", Is Wired headset connected: " + AudioFocus.this._WasWiredHeadsetConnectedOnTransientAudioFocusLoss);
                            AudioFocus.this.duck();
                            return;
                        case -1:
                            CoreHelper.writeTraceEntry(AudioFocusHelper.TAG, "**** Audiofocus change: AUDIOFOCUS_LOSS. Is Playing:" + AudioFocus.this.isPlaying() + ", Is Connected to Chromecast: " + ChromecastDevice.isConnected());
                            AudioFocus.this.pause();
                            AudioFocus.this._WasPlayingOnTransientAudioFocusLoss = false;
                            return;
                        default:
                            return;
                    }
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Holder {
            private static final AudioFocus sInstance = new AudioFocus();

            private Holder() {
            }
        }

        @Override // mobi.beyondpod.services.player.AudioFocusHelper
        @SuppressLint({"NewApi"})
        boolean trySetAudioFocus() {
            int requestAudioFocus;
            boolean z;
            AudioManager audioManager = (AudioManager) BeyondPodApplication.getInstance().getSystemService("audio");
            if (audioManager == null) {
                return false;
            }
            if (!CoreHelper.isOreoCompatible()) {
                requestAudioFocus = audioManager.requestAudioFocus(this._AudioFocusChangeListener, 3, 1);
            } else {
                requestAudioFocus = audioManager.requestAudioFocus(new AudioFocusRequest.Builder(1).setOnAudioFocusChangeListener(this._AudioFocusChangeListener).setAudioAttributes(new AudioAttributes.Builder().setLegacyStreamType(3).setUsage(1).setContentType(2).build()).setAcceptsDelayedFocusGain(true).setWillPauseWhenDucked(true).build());
            }
            String str = AudioFocusHelper.TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("**** Requesting Audiofocus... . Requested:");
            sb.append(requestAudioFocus == 1);
            CoreHelper.writeTraceEntry(str, sb.toString());
            synchronized (this._focusLock) {
                z = requestAudioFocus == 1;
            }
            return z;
        }

        protected void duck() {
            if (!isPlaying()) {
                CoreHelper.writeTraceEntry(AudioFocusHelper.TAG, "**** Trying to 'duck' but we are not playing. Nothing to do!");
            } else {
                CoreHelper.writeTraceEntry(AudioFocusHelper.TAG, "**** Ducking...");
                sendServiceCommand(MediaPlaybackService.CMDDUCK);
            }
        }

        protected void pause() {
            if (!isPlaying()) {
                CoreHelper.writeTraceEntry(AudioFocusHelper.TAG, "**** We lost audiofocus but we are not playing. Nothing to do!");
            } else {
                sendServiceCommand(MediaPlaybackService.CMDPAUSE);
            }
        }

        protected boolean isPlaying() {
            return PlayList.isCurrentlyPlaying();
        }

        protected void play() {
            sendServiceCommand(MediaPlaybackService.CMDRESUME);
        }

        private void sendServiceCommand(String str) {
            Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) MediaPlaybackService.class);
            intent.setAction(MediaPlaybackService.SERVICECMD);
            intent.putExtra(MediaPlaybackService.CMDNAME, str);
            if (CoreHelper.isOreoCompatible()) {
                ContextCompat.startForegroundService(BeyondPodApplication.getInstance(), intent);
            } else {
                BeyondPodApplication.getInstance().startService(intent);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @TargetApi(23)
        public boolean isBluetoothA2dpOn() {
            AudioManager audioManager = (AudioManager) BeyondPodApplication.getInstance().getSystemService("audio");
            if (audioManager == null) {
                return false;
            }
            if (CoreHelper.apiLevel() < 23) {
                return audioManager.isBluetoothA2dpOn();
            }
            for (AudioDeviceInfo audioDeviceInfo : audioManager.getDevices(2)) {
                if (audioDeviceInfo.getType() == 8) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @TargetApi(23)
        public boolean isWiredHeadsetPluggedIn() {
            AudioManager audioManager = (AudioManager) BeyondPodApplication.getInstance().getSystemService("audio");
            if (audioManager == null) {
                return false;
            }
            if (CoreHelper.apiLevel() < 23) {
                return audioManager.isWiredHeadsetOn();
            }
            for (AudioDeviceInfo audioDeviceInfo : audioManager.getDevices(2)) {
                if (audioDeviceInfo.getType() == 4 || audioDeviceInfo.getType() == 3) {
                    return true;
                }
            }
            return false;
        }
    }
}
