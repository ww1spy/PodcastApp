package com.google.android.gms.internal;

import android.support.v4.view.PointerIconCompat;
import com.google.android.gms.internal.zzfhu;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zziw {

    /* loaded from: classes.dex */
    public static final class zza extends zzfhu<zza, C0007zza> implements zzfje {
        private static final zza zzbbl;
        private static volatile zzfjl<zza> zzbbm;

        /* renamed from: com.google.android.gms.internal.zziw$zza$zza, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0007zza extends zzfhu.zza<zza, C0007zza> implements zzfje {
            private C0007zza() {
                super(zza.zzbbl);
            }

            /* synthetic */ C0007zza(zzix zzixVar) {
                this();
            }
        }

        /* loaded from: classes.dex */
        public enum zzb implements zzfia {
            UNKNOWN_EVENT_TYPE(0),
            AD_REQUEST(1),
            AD_LOADED(2),
            AD_FAILED_TO_LOAD(3),
            AD_FAILED_TO_LOAD_NO_FILL(4),
            AD_IMPRESSION(5),
            AD_FIRST_CLICK(6),
            AD_SUBSEQUENT_CLICK(7),
            REQUEST_WILL_START(8),
            REQUEST_DID_END(9),
            REQUEST_WILL_UPDATE_SIGNALS(10),
            REQUEST_DID_UPDATE_SIGNALS(11),
            REQUEST_WILL_BUILD_URL(12),
            REQUEST_DID_BUILD_URL(13),
            REQUEST_WILL_MAKE_NETWORK_REQUEST(14),
            REQUEST_DID_RECEIVE_NETWORK_RESPONSE(15),
            REQUEST_WILL_PROCESS_RESPONSE(16),
            REQUEST_DID_PROCESS_RESPONSE(17),
            REQUEST_WILL_RENDER(18),
            REQUEST_DID_RENDER(19),
            REQUEST_WILL_UPDATE_GMS_SIGNALS(1000),
            REQUEST_DID_UPDATE_GMS_SIGNALS(PointerIconCompat.TYPE_CONTEXT_MENU),
            REQUEST_FAILED_TO_UPDATE_GMS_SIGNALS(PointerIconCompat.TYPE_HAND),
            REQUEST_FAILED_TO_BUILD_URL(PointerIconCompat.TYPE_HELP),
            REQUEST_FAILED_TO_MAKE_NETWORK_REQUEST(PointerIconCompat.TYPE_WAIT),
            REQUEST_FAILED_TO_PROCESS_RESPONSE(1005);

            private static final zzfib<zzb> zzbcn = new zziy();
            private final int value;

            zzb(int i) {
                this.value = i;
            }

            @Override // com.google.android.gms.internal.zzfia
            public final int zzhu() {
                return this.value;
            }
        }

        static {
            zza zzaVar = new zza();
            zzbbl = zzaVar;
            zzaVar.zza(zzfhu.zzg.zzppw, (Object) null, (Object) null);
            zzaVar.zzpph.zzbkr();
        }

        private zza() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzfhu
        public final Object zza(int i, Object obj, Object obj2) {
            zzix zzixVar = null;
            switch (zzix.zzbbk[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return zzbbl;
                case 3:
                    return null;
                case 4:
                    return new C0007zza(zzixVar);
                case 5:
                    return this;
                case 6:
                    zzfhb zzfhbVar = (zzfhb) obj;
                    if (((zzfhm) obj2) != null) {
                        boolean z = false;
                        while (!z) {
                            try {
                                int zzcxx = zzfhbVar.zzcxx();
                                if (zzcxx == 0 || !zza(zzcxx, zzfhbVar)) {
                                    z = true;
                                }
                            } catch (zzfie e) {
                                throw new RuntimeException(e.zzi(this));
                            } catch (IOException e2) {
                                throw new RuntimeException(new zzfie(e2.getMessage()).zzi(this));
                            }
                        }
                        break;
                    } else {
                        throw new NullPointerException();
                    }
                    break;
                case 7:
                    break;
                case 8:
                    if (zzbbm == null) {
                        synchronized (zza.class) {
                            if (zzbbm == null) {
                                zzbbm = new zzfhu.zzb(zzbbl);
                            }
                        }
                    }
                    return zzbbm;
                case 9:
                    return (byte) 1;
                case 10:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
            return zzbbl;
        }

        @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
        public final void zza(zzfhg zzfhgVar) throws IOException {
            this.zzpph.zza(zzfhgVar);
        }

        @Override // com.google.android.gms.internal.zzfhu, com.google.android.gms.internal.zzfjc
        public final int zzhs() {
            int i = this.zzppi;
            if (i != -1) {
                return i;
            }
            int zzhs = 0 + this.zzpph.zzhs();
            this.zzppi = zzhs;
            return zzhs;
        }
    }
}
