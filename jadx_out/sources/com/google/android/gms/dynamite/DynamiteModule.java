package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

@Hide
/* loaded from: classes.dex */
public final class DynamiteModule {
    private static Boolean zzhdc;
    private static zzk zzhdd;
    private static zzm zzhde;
    private static String zzhdf;
    private static final ThreadLocal<zza> zzhdg = new ThreadLocal<>();
    private static final zzi zzhdh = new com.google.android.gms.dynamite.zza();
    public static final zzd zzhdi = new com.google.android.gms.dynamite.zzb();
    private static zzd zzhdj = new com.google.android.gms.dynamite.zzc();
    public static final zzd zzhdk = new com.google.android.gms.dynamite.zzd();
    public static final zzd zzhdl = new zze();
    public static final zzd zzhdm = new zzf();
    public static final zzd zzhdn = new zzg();
    private final Context zzhdo;

    @DynamiteApi
    /* loaded from: classes.dex */
    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class zza {
        public Cursor zzhdp;

        private zza() {
        }

        /* synthetic */ zza(com.google.android.gms.dynamite.zza zzaVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class zzb implements zzi {
        private final int zzhdq;
        private final int zzhdr = 0;

        public zzb(int i, int i2) {
            this.zzhdq = i;
        }

        @Override // com.google.android.gms.dynamite.zzi
        public final int zzc(Context context, String str, boolean z) {
            return 0;
        }

        @Override // com.google.android.gms.dynamite.zzi
        public final int zzx(Context context, String str) {
            return this.zzhdq;
        }
    }

    /* loaded from: classes.dex */
    public static class zzc extends Exception {
        private zzc(String str) {
            super(str);
        }

        /* synthetic */ zzc(String str, com.google.android.gms.dynamite.zza zzaVar) {
            this(str);
        }

        private zzc(String str, Throwable th) {
            super(str, th);
        }

        /* synthetic */ zzc(String str, Throwable th, com.google.android.gms.dynamite.zza zzaVar) {
            this(str, th);
        }
    }

    /* loaded from: classes.dex */
    public interface zzd {
        zzj zza(Context context, String str, zzi zziVar) throws zzc;
    }

    private DynamiteModule(Context context) {
        this.zzhdo = (Context) zzbq.checkNotNull(context);
    }

    private static Context zza(Context context, String str, int i, Cursor cursor, zzm zzmVar) {
        try {
            return (Context) com.google.android.gms.dynamic.zzn.zzy(zzmVar.zza(com.google.android.gms.dynamic.zzn.zzz(context), str, i, com.google.android.gms.dynamic.zzn.zzz(cursor)));
        } catch (Exception e) {
            String valueOf = String.valueOf(e.toString());
            Log.e("DynamiteModule", valueOf.length() != 0 ? "Failed to load DynamiteLoader: ".concat(valueOf) : new String("Failed to load DynamiteLoader: "));
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x008d, code lost:
    
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00e2, code lost:
    
        if (r1.zzhdp != null) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.dynamite.DynamiteModule zza(android.content.Context r10, com.google.android.gms.dynamite.DynamiteModule.zzd r11, java.lang.String r12) throws com.google.android.gms.dynamite.DynamiteModule.zzc {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.zza(android.content.Context, com.google.android.gms.dynamite.DynamiteModule$zzd, java.lang.String):com.google.android.gms.dynamite.DynamiteModule");
    }

    private static DynamiteModule zza(Context context, String str, int i) throws zzc {
        Boolean bool;
        synchronized (DynamiteModule.class) {
            bool = zzhdc;
        }
        if (bool == null) {
            throw new zzc("Failed to determine which loading route to use.", (com.google.android.gms.dynamite.zza) null);
        }
        return bool.booleanValue() ? zzc(context, str, i) : zzb(context, str, i);
    }

    private static void zza(ClassLoader classLoader) throws zzc {
        zzm zznVar;
        com.google.android.gms.dynamite.zza zzaVar = null;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                zznVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                zznVar = queryLocalInterface instanceof zzm ? (zzm) queryLocalInterface : new zzn(iBinder);
            }
            zzhde = zznVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new zzc("Failed to instantiate dynamite loader", e, zzaVar);
        }
    }

    private static DynamiteModule zzb(Context context, String str, int i) throws zzc {
        StringBuilder sb = new StringBuilder(51 + String.valueOf(str).length());
        sb.append("Selected remote version of ");
        sb.append(str);
        sb.append(", version >= ");
        sb.append(i);
        Log.i("DynamiteModule", sb.toString());
        zzk zzdh = zzdh(context);
        com.google.android.gms.dynamite.zza zzaVar = null;
        if (zzdh == null) {
            throw new zzc("Failed to create IDynamiteLoader.", zzaVar);
        }
        try {
            IObjectWrapper zza2 = zzdh.zza(com.google.android.gms.dynamic.zzn.zzz(context), str, i);
            if (com.google.android.gms.dynamic.zzn.zzy(zza2) == null) {
                throw new zzc("Failed to load remote module.", zzaVar);
            }
            return new DynamiteModule((Context) com.google.android.gms.dynamic.zzn.zzy(zza2));
        } catch (RemoteException e) {
            throw new zzc("Failed to load remote module.", e, zzaVar);
        }
    }

    public static int zzc(Context context, String str, boolean z) {
        Class<?> loadClass;
        Field declaredField;
        Boolean bool;
        synchronized (DynamiteModule.class) {
            Boolean bool2 = zzhdc;
            if (bool2 == null) {
                try {
                    loadClass = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName());
                    declaredField = loadClass.getDeclaredField("sClassLoader");
                } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
                    String valueOf = String.valueOf(e);
                    StringBuilder sb = new StringBuilder(30 + String.valueOf(valueOf).length());
                    sb.append("Failed to load module via V2: ");
                    sb.append(valueOf);
                    Log.w("DynamiteModule", sb.toString());
                    bool2 = Boolean.FALSE;
                }
                synchronized (loadClass) {
                    ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                    if (classLoader != null) {
                        if (classLoader != ClassLoader.getSystemClassLoader()) {
                            try {
                                zza(classLoader);
                            } catch (zzc unused) {
                            }
                            bool = Boolean.TRUE;
                            bool2 = bool;
                            zzhdc = bool2;
                        }
                    } else if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                    } else {
                        try {
                            int zze = zze(context, str, z);
                            if (zzhdf != null && !zzhdf.isEmpty()) {
                                zzh zzhVar = new zzh(zzhdf, ClassLoader.getSystemClassLoader());
                                zza(zzhVar);
                                declaredField.set(null, zzhVar);
                                zzhdc = Boolean.TRUE;
                                return zze;
                            }
                            return zze;
                        } catch (zzc unused2) {
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                        }
                    }
                    bool = Boolean.FALSE;
                    bool2 = bool;
                    zzhdc = bool2;
                }
            }
            if (!bool2.booleanValue()) {
                return zzd(context, str, z);
            }
            try {
                return zze(context, str, z);
            } catch (zzc e2) {
                String valueOf2 = String.valueOf(e2.getMessage());
                Log.w("DynamiteModule", valueOf2.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf2) : new String("Failed to retrieve remote module version: "));
                return 0;
            }
        }
    }

    private static DynamiteModule zzc(Context context, String str, int i) throws zzc {
        zzm zzmVar;
        StringBuilder sb = new StringBuilder(51 + String.valueOf(str).length());
        sb.append("Selected remote version of ");
        sb.append(str);
        sb.append(", version >= ");
        sb.append(i);
        Log.i("DynamiteModule", sb.toString());
        synchronized (DynamiteModule.class) {
            zzmVar = zzhde;
        }
        com.google.android.gms.dynamite.zza zzaVar = null;
        if (zzmVar == null) {
            throw new zzc("DynamiteLoaderV2 was not cached.", zzaVar);
        }
        zza zzaVar2 = zzhdg.get();
        if (zzaVar2 == null || zzaVar2.zzhdp == null) {
            throw new zzc("No result cursor", zzaVar);
        }
        Context zza2 = zza(context.getApplicationContext(), str, i, zzaVar2.zzhdp, zzmVar);
        if (zza2 == null) {
            throw new zzc("Failed to get module context", zzaVar);
        }
        return new DynamiteModule(zza2);
    }

    private static int zzd(Context context, String str, boolean z) {
        zzk zzdh = zzdh(context);
        if (zzdh == null) {
            return 0;
        }
        try {
            return zzdh.zza(com.google.android.gms.dynamic.zzn.zzz(context), str, z);
        } catch (RemoteException e) {
            String valueOf = String.valueOf(e.getMessage());
            Log.w("DynamiteModule", valueOf.length() != 0 ? "Failed to retrieve remote module version: ".concat(valueOf) : new String("Failed to retrieve remote module version: "));
            return 0;
        }
    }

    private static zzk zzdh(Context context) {
        zzk zzlVar;
        synchronized (DynamiteModule.class) {
            if (zzhdd != null) {
                return zzhdd;
            }
            if (com.google.android.gms.common.zzf.zzahf().isGooglePlayServicesAvailable(context) != 0) {
                return null;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    zzlVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    zzlVar = queryLocalInterface instanceof zzk ? (zzk) queryLocalInterface : new zzl(iBinder);
                }
                if (zzlVar != null) {
                    zzhdd = zzlVar;
                    return zzlVar;
                }
            } catch (Exception e) {
                String valueOf = String.valueOf(e.getMessage());
                Log.e("DynamiteModule", valueOf.length() != 0 ? "Failed to load IDynamiteLoader from GmsCore: ".concat(valueOf) : new String("Failed to load IDynamiteLoader from GmsCore: "));
            }
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int zze(android.content.Context r8, java.lang.String r9, boolean r10) throws com.google.android.gms.dynamite.DynamiteModule.zzc {
        /*
            r0 = 0
            android.content.ContentResolver r1 = r8.getContentResolver()     // Catch: java.lang.Throwable -> L93 java.lang.Exception -> L95
            if (r10 == 0) goto La
            java.lang.String r8 = "api_force_staging"
            goto Lc
        La:
            java.lang.String r8 = "api"
        Lc:
            r10 = 42
            java.lang.String r2 = java.lang.String.valueOf(r8)     // Catch: java.lang.Throwable -> L93 java.lang.Exception -> L95
            int r2 = r2.length()     // Catch: java.lang.Throwable -> L93 java.lang.Exception -> L95
            int r10 = r10 + r2
            java.lang.String r2 = java.lang.String.valueOf(r9)     // Catch: java.lang.Throwable -> L93 java.lang.Exception -> L95
            int r2 = r2.length()     // Catch: java.lang.Throwable -> L93 java.lang.Exception -> L95
            int r10 = r10 + r2
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L93 java.lang.Exception -> L95
            r2.<init>(r10)     // Catch: java.lang.Throwable -> L93 java.lang.Exception -> L95
            java.lang.String r10 = "content://com.google.android.gms.chimera/"
            r2.append(r10)     // Catch: java.lang.Throwable -> L93 java.lang.Exception -> L95
            r2.append(r8)     // Catch: java.lang.Throwable -> L93 java.lang.Exception -> L95
            java.lang.String r8 = "/"
            r2.append(r8)     // Catch: java.lang.Throwable -> L93 java.lang.Exception -> L95
            r2.append(r9)     // Catch: java.lang.Throwable -> L93 java.lang.Exception -> L95
            java.lang.String r8 = r2.toString()     // Catch: java.lang.Throwable -> L93 java.lang.Exception -> L95
            android.net.Uri r2 = android.net.Uri.parse(r8)     // Catch: java.lang.Throwable -> L93 java.lang.Exception -> L95
            r3 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            android.database.Cursor r8 = r1.query(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L93 java.lang.Exception -> L95
            if (r8 == 0) goto L84
            boolean r9 = r8.moveToFirst()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            if (r9 != 0) goto L4e
            goto L84
        L4e:
            r9 = 0
            int r9 = r8.getInt(r9)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            if (r9 <= 0) goto L75
            java.lang.Class<com.google.android.gms.dynamite.DynamiteModule> r10 = com.google.android.gms.dynamite.DynamiteModule.class
            monitor-enter(r10)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            r1 = 2
            java.lang.String r1 = r8.getString(r1)     // Catch: java.lang.Throwable -> L72
            com.google.android.gms.dynamite.DynamiteModule.zzhdf = r1     // Catch: java.lang.Throwable -> L72
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L72
            java.lang.ThreadLocal<com.google.android.gms.dynamite.DynamiteModule$zza> r10 = com.google.android.gms.dynamite.DynamiteModule.zzhdg     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            java.lang.Object r10 = r10.get()     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            com.google.android.gms.dynamite.DynamiteModule$zza r10 = (com.google.android.gms.dynamite.DynamiteModule.zza) r10     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            if (r10 == 0) goto L75
            android.database.Cursor r1 = r10.zzhdp     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            if (r1 != 0) goto L75
            r10.zzhdp = r8     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            r8 = r0
            goto L75
        L72:
            r9 = move-exception
            monitor-exit(r10)     // Catch: java.lang.Throwable -> L72
            throw r9     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
        L75:
            if (r8 == 0) goto L7a
            r8.close()
        L7a:
            return r9
        L7b:
            r9 = move-exception
            r0 = r8
            r8 = r9
            goto La6
        L7f:
            r9 = move-exception
            r7 = r9
            r9 = r8
            r8 = r7
            goto L97
        L84:
            java.lang.String r9 = "DynamiteModule"
            java.lang.String r10 = "Failed to retrieve remote module version."
            android.util.Log.w(r9, r10)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            com.google.android.gms.dynamite.DynamiteModule$zzc r9 = new com.google.android.gms.dynamite.DynamiteModule$zzc     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            java.lang.String r10 = "Failed to connect to dynamite module ContentResolver."
            r9.<init>(r10, r0)     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
            throw r9     // Catch: java.lang.Throwable -> L7b java.lang.Exception -> L7f
        L93:
            r8 = move-exception
            goto La6
        L95:
            r8 = move-exception
            r9 = r0
        L97:
            boolean r10 = r8 instanceof com.google.android.gms.dynamite.DynamiteModule.zzc     // Catch: java.lang.Throwable -> La4
            if (r10 == 0) goto L9c
            throw r8     // Catch: java.lang.Throwable -> La4
        L9c:
            com.google.android.gms.dynamite.DynamiteModule$zzc r10 = new com.google.android.gms.dynamite.DynamiteModule$zzc     // Catch: java.lang.Throwable -> La4
            java.lang.String r1 = "V2 version check failed"
            r10.<init>(r1, r8, r0)     // Catch: java.lang.Throwable -> La4
            throw r10     // Catch: java.lang.Throwable -> La4
        La4:
            r8 = move-exception
            r0 = r9
        La6:
            if (r0 == 0) goto Lab
            r0.close()
        Lab:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.zze(android.content.Context, java.lang.String, boolean):int");
    }

    public static int zzx(Context context, String str) {
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            StringBuilder sb = new StringBuilder(61 + String.valueOf(str).length());
            sb.append("com.google.android.gms.dynamite.descriptors.");
            sb.append(str);
            sb.append(".ModuleDescriptor");
            Class<?> loadClass = classLoader.loadClass(sb.toString());
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (declaredField.get(null).equals(str)) {
                return declaredField2.getInt(null);
            }
            String valueOf = String.valueOf(declaredField.get(null));
            StringBuilder sb2 = new StringBuilder(51 + String.valueOf(valueOf).length() + String.valueOf(str).length());
            sb2.append("Module descriptor id '");
            sb2.append(valueOf);
            sb2.append("' didn't match expected id '");
            sb2.append(str);
            sb2.append("'");
            Log.e("DynamiteModule", sb2.toString());
            return 0;
        } catch (ClassNotFoundException unused) {
            StringBuilder sb3 = new StringBuilder(45 + String.valueOf(str).length());
            sb3.append("Local module descriptor class for ");
            sb3.append(str);
            sb3.append(" not found.");
            Log.w("DynamiteModule", sb3.toString());
            return 0;
        } catch (Exception e) {
            String valueOf2 = String.valueOf(e.getMessage());
            Log.e("DynamiteModule", valueOf2.length() != 0 ? "Failed to load module descriptor class: ".concat(valueOf2) : new String("Failed to load module descriptor class: "));
            return 0;
        }
    }

    public static int zzy(Context context, String str) {
        return zzc(context, str, false);
    }

    private static DynamiteModule zzz(Context context, String str) {
        String valueOf = String.valueOf(str);
        Log.i("DynamiteModule", valueOf.length() != 0 ? "Selected local version of ".concat(valueOf) : new String("Selected local version of "));
        return new DynamiteModule(context.getApplicationContext());
    }

    public final Context zzarl() {
        return this.zzhdo;
    }

    public final IBinder zzhk(String str) throws zzc {
        try {
            return (IBinder) this.zzhdo.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            String valueOf = String.valueOf(str);
            throw new zzc(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e, null);
        }
    }
}
