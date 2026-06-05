package mobi.beyondpod.rsscore.helpers;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class CallStackDumper {
    public static synchronized String getCallStackAsString() {
        String sb;
        synchronized (CallStackDumper.class) {
            StringBuilder sb2 = new StringBuilder();
            for (String str : getCallStackAsStringArray(Thread.currentThread().getStackTrace())) {
                sb2.append(str);
                sb2.append("\n");
            }
            sb = sb2.toString();
        }
        return sb;
    }

    public static synchronized String[] getCallStackAsStringArray() {
        String[] callStackAsStringArray;
        synchronized (CallStackDumper.class) {
            callStackAsStringArray = getCallStackAsStringArray(Thread.currentThread().getStackTrace());
        }
        return callStackAsStringArray;
    }

    private static synchronized String[] getCallStackAsStringArray(StackTraceElement[] stackTraceElementArr) {
        String[] strArr;
        synchronized (CallStackDumper.class) {
            ArrayList arrayList = new ArrayList();
            String[] strArr2 = new String[1];
            for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                arrayList.add(stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ":" + stackTraceElement.getLineNumber());
            }
            strArr = (String[]) arrayList.toArray(strArr2);
        }
        return strArr;
    }
}
