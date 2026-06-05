package mobi.beyondpod.services.auto;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.XmlResourceParser;
import android.os.Process;
import android.util.Base64;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class PackageValidator {
    private static final String TAG = "PackageValidator";
    private final Map<String, ArrayList<CallerInfo>> mValidCertificates;

    public PackageValidator(Context context) {
        this.mValidCertificates = readValidCertificates(context.getResources().getXml(R.xml.allowed_media_browser_callers));
    }

    private Map<String, ArrayList<CallerInfo>> readValidCertificates(XmlResourceParser xmlResourceParser) {
        HashMap hashMap = new HashMap();
        try {
            int next = xmlResourceParser.next();
            while (next != 1) {
                if (next == 2) {
                    if (xmlResourceParser.getName().equals("signing_certificate")) {
                        String attributeValue = xmlResourceParser.getAttributeValue(null, "name");
                        String attributeValue2 = xmlResourceParser.getAttributeValue(null, "package");
                        boolean attributeBooleanValue = xmlResourceParser.getAttributeBooleanValue(null, "release", false);
                        String replaceAll = xmlResourceParser.nextText().replaceAll("\\s|\\n", "");
                        CallerInfo callerInfo = new CallerInfo(attributeValue, attributeValue2, attributeBooleanValue, replaceAll);
                        ArrayList arrayList = (ArrayList) hashMap.get(replaceAll);
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                            hashMap.put(replaceAll, arrayList);
                        }
                        CoreHelper.writeTraceEntry(TAG, "Adding allowed caller: " + callerInfo.name + " package=" + callerInfo.packageName + " release=" + callerInfo.release);
                        arrayList.add(callerInfo);
                    }
                }
                next = xmlResourceParser.next();
            }
        } catch (IOException | XmlPullParserException e) {
            CoreHelper.logException(TAG, "Could not read allowed callers from XML.", e);
        }
        return hashMap;
    }

    public boolean isCallerAllowed(Context context, String str, int i) {
        if (1000 == i || Process.myUid() == i) {
            return true;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 64);
            if (packageInfo.signatures.length != 1) {
                CoreHelper.writeTraceEntry(TAG, "Caller has more than one signature certificate!");
                return false;
            }
            String encodeToString = Base64.encodeToString(packageInfo.signatures[0].toByteArray(), 2);
            ArrayList<CallerInfo> arrayList = this.mValidCertificates.get(encodeToString);
            if (arrayList == null) {
                CoreHelper.writeTraceEntry(TAG, "Signature for caller " + str + " is not valid: \n" + encodeToString);
                if (this.mValidCertificates.isEmpty()) {
                    CoreHelper.writeTraceEntry(TAG, "The list of valid certificates is empty. Either your file res/xml/allowed_media_browser_callers.xml is empty or there was an error while reading it. Check previous log messages.");
                }
                return false;
            }
            StringBuilder sb = new StringBuilder();
            Iterator<CallerInfo> it = arrayList.iterator();
            while (it.hasNext()) {
                CallerInfo next = it.next();
                if (str.equals(next.packageName)) {
                    CoreHelper.writeTraceEntry(TAG, "Valid caller: " + next.name + "  package=" + next.packageName + " release=" + next.release);
                    return true;
                }
                sb.append(next.packageName);
                sb.append(' ');
            }
            CoreHelper.writeTraceEntry(TAG, "Caller has a valid certificate, but its package doesn't match any expected package for the given certificate. Caller's package is " + str + ". Expected packages as defined in res/xml/allowed_media_browser_callers.xml are (" + ((Object) sb) + "). This caller's certificate is: \n" + encodeToString);
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            CoreHelper.logException(TAG, "Package manager can't find package: " + str, e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class CallerInfo {
        final String name;
        final String packageName;
        final boolean release;
        final String signingCertificate;

        public CallerInfo(String str, String str2, boolean z, String str3) {
            this.name = str;
            this.packageName = str2;
            this.release = z;
            this.signingCertificate = str3;
        }
    }
}
