package mobi.beyondpod.ui.core;

/* loaded from: classes.dex */
public class MovieViewCounter {
    static volatile int _InstanceCount;

    public static boolean hasInstances() {
        return _InstanceCount > 0;
    }

    public static int instanceCount() {
        return _InstanceCount;
    }

    public static void addInstance() {
        _InstanceCount++;
    }

    public static void removeInstance() {
        _InstanceCount--;
    }
}
