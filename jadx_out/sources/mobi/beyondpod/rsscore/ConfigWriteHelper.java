package mobi.beyondpod.rsscore;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public abstract class ConfigWriteHelper {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void putBoolean(SharedPreferences sharedPreferences, String str, boolean z);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void putInt(SharedPreferences sharedPreferences, String str, int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void putLong(SharedPreferences sharedPreferences, String str, long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void putString(SharedPreferences sharedPreferences, String str, String str2);

    public static ConfigWriteHelper getInstance() {
        return ApplyWriter.Holder.sInstance;
    }

    /* loaded from: classes.dex */
    private static class CommitWriter extends ConfigWriteHelper {
        private CommitWriter() {
        }

        /* loaded from: classes.dex */
        private static class Holder {
            private static final CommitWriter sInstance = new CommitWriter();

            private Holder() {
            }
        }

        @Override // mobi.beyondpod.rsscore.ConfigWriteHelper
        @SuppressLint({"ApplySharedPref"})
        void putString(SharedPreferences sharedPreferences, String str, String str2) {
            sharedPreferences.edit().putString(str, str2).commit();
        }

        @Override // mobi.beyondpod.rsscore.ConfigWriteHelper
        @SuppressLint({"ApplySharedPref"})
        void putInt(SharedPreferences sharedPreferences, String str, int i) {
            sharedPreferences.edit().putInt(str, i).commit();
        }

        @Override // mobi.beyondpod.rsscore.ConfigWriteHelper
        @SuppressLint({"ApplySharedPref"})
        void putBoolean(SharedPreferences sharedPreferences, String str, boolean z) {
            sharedPreferences.edit().putBoolean(str, z).commit();
        }

        @Override // mobi.beyondpod.rsscore.ConfigWriteHelper
        @SuppressLint({"ApplySharedPref"})
        void putLong(SharedPreferences sharedPreferences, String str, long j) {
            sharedPreferences.edit().putLong(str, j).commit();
        }
    }

    @SuppressLint({"NewApi"})
    /* loaded from: classes.dex */
    private static class ApplyWriter extends ConfigWriteHelper {
        private ApplyWriter() {
        }

        /* loaded from: classes.dex */
        private static class Holder {
            private static final ApplyWriter sInstance = new ApplyWriter();

            private Holder() {
            }
        }

        @Override // mobi.beyondpod.rsscore.ConfigWriteHelper
        @SuppressLint({"NewApi"})
        void putString(SharedPreferences sharedPreferences, String str, String str2) {
            sharedPreferences.edit().putString(str, str2).apply();
        }

        @Override // mobi.beyondpod.rsscore.ConfigWriteHelper
        @SuppressLint({"NewApi"})
        void putInt(SharedPreferences sharedPreferences, String str, int i) {
            sharedPreferences.edit().putInt(str, i).apply();
        }

        @Override // mobi.beyondpod.rsscore.ConfigWriteHelper
        @SuppressLint({"NewApi"})
        void putBoolean(SharedPreferences sharedPreferences, String str, boolean z) {
            sharedPreferences.edit().putBoolean(str, z).apply();
        }

        @Override // mobi.beyondpod.rsscore.ConfigWriteHelper
        @SuppressLint({"NewApi"})
        void putLong(SharedPreferences sharedPreferences, String str, long j) {
            sharedPreferences.edit().putLong(str, j).apply();
        }
    }
}
