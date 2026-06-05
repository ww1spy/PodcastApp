package mobi.beyondpod.rsscore.categories;

import java.util.Iterator;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;

/* loaded from: classes.dex */
public class FeedCategory implements Comparable<FeedCategory> {
    protected int _Color = 0;
    protected String _Name;
    protected String _Value;

    public FeedCategory(String str) {
        this._Name = "";
        this._Value = "";
        String trim = str.trim();
        this._Name = trim;
        this._Value = trim;
    }

    public String name() {
        return this._Name;
    }

    public String value() {
        return this._Value;
    }

    public int color() {
        return this._Color;
    }

    public String serializedData() {
        return this._Value + "^" + this._Color;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FeedCategory)) {
            obj = null;
        }
        FeedCategory feedCategory = (FeedCategory) obj;
        if (feedCategory == null) {
            return false;
        }
        return StringUtils.equalsIgnoreCase(this._Name, feedCategory._Name) && StringUtils.equalsIgnoreCase(this._Value, feedCategory._Value);
    }

    public int hashCode() {
        return this._Name.hashCode() + (29 * this._Value.hashCode());
    }

    public void renameTo(String str) {
        this._Name = str;
        this._Value = str;
    }

    public boolean hasUnreadFeeds() {
        Iterator<Feed> it = FeedRepository.getFeedsInCategory(this).iterator();
        while (it.hasNext()) {
            if (it.next().mayHaveUnreadItems()) {
                return true;
            }
        }
        return false;
    }

    public int numberOfFeedsInCategory() {
        return FeedRepository.getFeedsInCategory(this).size();
    }

    public int numberOfPodcastsInCategory() {
        Iterator<Feed> it = FeedRepository.getFeedsInCategory(this).iterator();
        int i = 0;
        while (it.hasNext()) {
            i += it.next().tracksAndSubTracks().size();
        }
        return i;
    }

    public String toString() {
        return name();
    }

    @Override // java.lang.Comparable
    public int compareTo(FeedCategory feedCategory) {
        if (feedCategory == null) {
            return 1;
        }
        return name().compareTo(feedCategory.name());
    }

    public static FeedCategory deserialize(String str) {
        String[] split = str.split("\\^");
        FeedCategory feedCategory = CategoryManager.CategoryNull;
        if (split.length > 0) {
            if (CategoryManager.Unassigned.value().equals(split[0])) {
                feedCategory = CategoryManager.Unassigned;
            } else if (CategoryManager.AllFeeds.value().equals(split[0])) {
                feedCategory = CategoryManager.AllFeeds;
            } else {
                feedCategory = new FeedCategory(split[0]);
            }
            if (split.length > 1) {
                feedCategory._Color = StringUtils.tryParseIntFromString(split[1], 0).intValue();
            }
        }
        return feedCategory;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setColor(int i) {
        this._Color = i;
    }
}
