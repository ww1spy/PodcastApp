package mobi.beyondpod.aggregators;

/* loaded from: classes.dex */
public class GDataObject {
    public String id;
    public GDataObjectList list;
    public String string;
    public String title;

    public String getIDAsUrl() {
        if (this.id.length() > 5) {
            return this.id.substring(5);
        }
        return null;
    }
}
