package com.google.android.gms.iid;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.internal.zzbq;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
final class zzo implements ServiceConnection {
    int state;
    final Messenger zzing;
    zzt zzinh;
    final Queue<zzu<?>> zzini;
    final SparseArray<zzu<?>> zzinj;
    final /* synthetic */ zzm zzink;

    private zzo(zzm zzmVar) {
        this.zzink = zzmVar;
        this.state = 0;
        this.zzing = new Messenger(new Handler(Looper.getMainLooper(), new Handler.Callback(this) { // from class: com.google.android.gms.iid.zzp
            private final zzo zzinl;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzinl = this;
            }

            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.zzinl.zzc(message);
            }
        }));
        this.zzini = new ArrayDeque();
        this.zzinj = new SparseArray<>();
    }

    private final void zza(zzv zzvVar) {
        Iterator<zzu<?>> it = this.zzini.iterator();
        while (it.hasNext()) {
            it.next().zzb(zzvVar);
        }
        this.zzini.clear();
        for (int i = 0; i < this.zzinj.size(); i++) {
            this.zzinj.valueAt(i).zzb(zzvVar);
        }
        this.zzinj.clear();
    }

    private final void zzawt() {
        zzm.zzb(this.zzink).execute(new Runnable(this) { // from class: com.google.android.gms.iid.zzr
            private final zzo zzinl;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzinl = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                final zzo zzoVar = this.zzinl;
                while (true) {
                    synchronized (zzoVar) {
                        if (zzoVar.state != 2) {
                            return;
                        }
                        if (zzoVar.zzini.isEmpty()) {
                            zzoVar.zzawu();
                            return;
                        }
                        final zzu<?> poll = zzoVar.zzini.poll();
                        zzoVar.zzinj.put(poll.zzino, poll);
                        zzm.zzb(zzoVar.zzink).schedule(new Runnable(zzoVar, poll) { // from class: com.google.android.gms.iid.zzs
                            private final zzo zzinl;
                            private final zzu zzinm;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.zzinl = zzoVar;
                                this.zzinm = poll;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.zzinl.zzec(this.zzinm.zzino);
                            }
                        }, 30L, TimeUnit.SECONDS);
                        if (Log.isLoggable("MessengerIpcClient", 3)) {
                            String valueOf = String.valueOf(poll);
                            StringBuilder sb = new StringBuilder(8 + String.valueOf(valueOf).length());
                            sb.append("Sending ");
                            sb.append(valueOf);
                            Log.d("MessengerIpcClient", sb.toString());
                        }
                        Context zza = zzm.zza(zzoVar.zzink);
                        Messenger messenger = zzoVar.zzing;
                        Message obtain = Message.obtain();
                        obtain.what = poll.what;
                        obtain.arg1 = poll.zzino;
                        obtain.replyTo = messenger;
                        Bundle bundle = new Bundle();
                        bundle.putBoolean("oneWay", poll.zzaww());
                        bundle.putString("pkg", zza.getPackageName());
                        bundle.putBundle("data", poll.zzinp);
                        obtain.setData(bundle);
                        try {
                            zzt zztVar = zzoVar.zzinh;
                            if (zztVar.zzinb == null) {
                                if (zztVar.zzinn == null) {
                                    throw new IllegalStateException("Both messengers are null");
                                    break;
                                }
                                zztVar.zzinn.send(obtain);
                            } else {
                                zztVar.zzinb.send(obtain);
                            }
                        } catch (RemoteException e) {
                            zzoVar.zzl(2, e.getMessage());
                        }
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service connected");
        }
        if (iBinder == null) {
            zzl(0, "Null service connection");
            return;
        }
        try {
            this.zzinh = new zzt(iBinder);
            this.state = 2;
            zzawt();
        } catch (RemoteException e) {
            zzl(0, e.getMessage());
        }
    }

    @Override // android.content.ServiceConnection
    public final synchronized void onServiceDisconnected(ComponentName componentName) {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
            Log.v("MessengerIpcClient", "Service disconnected");
        }
        zzl(2, "Service disconnected");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void zzawu() {
        if (this.state == 2 && this.zzini.isEmpty() && this.zzinj.size() == 0) {
            if (Log.isLoggable("MessengerIpcClient", 2)) {
                Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
            }
            this.state = 3;
            com.google.android.gms.common.stats.zza.zzanm();
            zzm.zza(this.zzink).unbindService(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void zzawv() {
        if (this.state == 1) {
            zzl(1, "Timed out while binding");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized boolean zzb(zzu zzuVar) {
        switch (this.state) {
            case 0:
                this.zzini.add(zzuVar);
                zzbq.checkState(this.state == 0);
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Starting bind to GmsCore");
                }
                this.state = 1;
                Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
                intent.setPackage("com.google.android.gms");
                if (com.google.android.gms.common.stats.zza.zzanm().zza(zzm.zza(this.zzink), intent, this, 1)) {
                    zzm.zzb(this.zzink).schedule(new Runnable(this) { // from class: com.google.android.gms.iid.zzq
                        private final zzo zzinl;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.zzinl = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zzinl.zzawv();
                        }
                    }, 30L, TimeUnit.SECONDS);
                } else {
                    zzl(0, "Unable to bind to service");
                }
                return true;
            case 1:
                this.zzini.add(zzuVar);
                return true;
            case 2:
                this.zzini.add(zzuVar);
                zzawt();
                return true;
            case 3:
            case 4:
                return false;
            default:
                int i = this.state;
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unknown state: ");
                sb.append(i);
                throw new IllegalStateException(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzc(Message message) {
        int i = message.arg1;
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Received response to request: ");
            sb.append(i);
            Log.d("MessengerIpcClient", sb.toString());
        }
        synchronized (this) {
            zzu<?> zzuVar = this.zzinj.get(i);
            if (zzuVar == null) {
                StringBuilder sb2 = new StringBuilder(50);
                sb2.append("Received response for unknown request: ");
                sb2.append(i);
                Log.w("MessengerIpcClient", sb2.toString());
                return true;
            }
            this.zzinj.remove(i);
            zzawu();
            Bundle data = message.getData();
            if (data.getBoolean("unsupported", false)) {
                zzuVar.zzb(new zzv(4, "Not supported by GmsCore"));
                return true;
            }
            zzuVar.zzx(data);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void zzec(int i) {
        zzu<?> zzuVar = this.zzinj.get(i);
        if (zzuVar != null) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("Timing out request: ");
            sb.append(i);
            Log.w("MessengerIpcClient", sb.toString());
            this.zzinj.remove(i);
            zzuVar.zzb(new zzv(3, "Timed out waiting for response"));
            zzawu();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void zzl(int i, String str) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(str);
            Log.d("MessengerIpcClient", valueOf.length() != 0 ? "Disconnected: ".concat(valueOf) : new String("Disconnected: "));
        }
        switch (this.state) {
            case 0:
                throw new IllegalStateException();
            case 1:
            case 2:
                if (Log.isLoggable("MessengerIpcClient", 2)) {
                    Log.v("MessengerIpcClient", "Unbinding service");
                }
                this.state = 4;
                com.google.android.gms.common.stats.zza.zzanm();
                zzm.zza(this.zzink).unbindService(this);
                zza(new zzv(i, str));
                return;
            case 3:
                this.state = 4;
                return;
            case 4:
                return;
            default:
                int i2 = this.state;
                StringBuilder sb = new StringBuilder(26);
                sb.append("Unknown state: ");
                sb.append(i2);
                throw new IllegalStateException(sb.toString());
        }
    }
}
