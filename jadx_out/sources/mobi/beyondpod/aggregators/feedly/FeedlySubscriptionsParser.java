package mobi.beyondpod.aggregators.feedly;

import com.google.gson.stream.JsonReader;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.IOException;
import mobi.beyondpod.aggregators.GDataObject;
import mobi.beyondpod.aggregators.GDataObjectList;
import mobi.beyondpod.ui.views.impexp.FeedSearchResultFragment;

/* loaded from: classes.dex */
public class FeedlySubscriptionsParser {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static GDataObject parseSubscriptions(JsonReader jsonReader) throws IOException {
        GDataObject gDataObject = new GDataObject();
        gDataObject.list = new GDataObjectList();
        gDataObject.list.name = "User Subscriptions";
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            gDataObject.list.add(readSubscription(jsonReader));
        }
        jsonReader.endArray();
        return gDataObject;
    }

    private static GDataObject readSubscription(JsonReader jsonReader) throws IOException {
        GDataObject gDataObject = new GDataObject();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            int hashCode = nextName.hashCode();
            if (hashCode != 3355) {
                if (hashCode != 110371416) {
                    if (hashCode == 1296516636 && nextName.equals("categories")) {
                        c = 2;
                    }
                } else if (nextName.equals(SettingsJsonConstants.PROMPT_TITLE_KEY)) {
                    c = 1;
                }
            } else if (nextName.equals("id")) {
                c = 0;
            }
            switch (c) {
                case 0:
                    gDataObject.id = jsonReader.nextString();
                    break;
                case 1:
                    gDataObject.title = jsonReader.nextString();
                    break;
                case 2:
                    readCategories(jsonReader, gDataObject);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return gDataObject;
    }

    static void readCategories(JsonReader jsonReader, GDataObject gDataObject) throws IOException {
        if (gDataObject.list == null) {
            gDataObject.list = new GDataObjectList();
        }
        gDataObject.list.name = FeedSearchResultFragment.SECTION_CATEGORIES;
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            gDataObject.list.add(readCategory(jsonReader));
        }
        jsonReader.endArray();
    }

    private static GDataObject readCategory(JsonReader jsonReader) throws IOException {
        GDataObject gDataObject = new GDataObject();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            int hashCode = nextName.hashCode();
            if (hashCode != 3355) {
                if (hashCode == 102727412 && nextName.equals("label")) {
                    c = 1;
                }
            } else if (nextName.equals("id")) {
                c = 0;
            }
            switch (c) {
                case 0:
                    gDataObject.id = jsonReader.nextString();
                    break;
                case 1:
                    gDataObject.string = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return gDataObject;
    }
}
