package mobi.beyondpod.rsscore.rss.parsers;

import android.graphics.drawable.Drawable;
import android.text.Html;
import java.util.ArrayList;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import mobi.beyondpod.rsscore.helpers.StringUtils;

/* loaded from: classes.dex */
public class ImageParser {
    private static Pattern imgRegex = Pattern.compile("<img[^>]+src\\s*=\\s*['\"]([^'\"]+)['\"][^>]*>");
    static String[] _InvalidUrls = {"api.tweetmeme.com", "ads.pheedo.com", "share-buttons"};

    public static ArrayList<String> parseImagesFromStringWithRegEx(String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        Matcher matcher = imgRegex.matcher(str);
        while (matcher.find()) {
            checkAndAddImageUrl(arrayList, matcher.group(1));
        }
        return arrayList;
    }

    public static ArrayList<String> parseImagesFromStringWithParser(String str) {
        final ArrayList<String> arrayList = new ArrayList<>();
        Html.fromHtml(str, new Html.ImageGetter() { // from class: mobi.beyondpod.rsscore.rss.parsers.ImageParser.1
            @Override // android.text.Html.ImageGetter
            public Drawable getDrawable(String str2) {
                ImageParser.checkAndAddImageUrl(arrayList, str2);
                return null;
            }
        }, null);
        return arrayList;
    }

    public static void checkAndAddImageUrl(ArrayList<String> arrayList, String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return;
        }
        String lowerCase = str.toLowerCase(Locale.US);
        if (lowerCase.startsWith("http")) {
            for (String str2 : _InvalidUrls) {
                if (lowerCase.contains(str2)) {
                    return;
                }
            }
            arrayList.add(str);
        }
    }
}
