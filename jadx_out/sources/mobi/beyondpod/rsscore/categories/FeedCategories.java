package mobi.beyondpod.rsscore.categories;

import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.services.auto.MediaIdHelper;

/* loaded from: classes.dex */
public class FeedCategories {
    private FeedCategory m_Primary = CategoryManager.Unassigned;
    private FeedCategory m_Secondary = CategoryManager.Unassigned;
    private boolean m_Modified = false;

    public boolean getIsUnassigned() {
        return getPrimary() == CategoryManager.Unassigned && getSecondary() == CategoryManager.Unassigned;
    }

    public FeedCategory getPrimary() {
        return this.m_Primary;
    }

    public void setPrimary(FeedCategory feedCategory) {
        this.m_Primary = feedCategory;
        this.m_Modified = true;
    }

    public FeedCategory getSecondary() {
        return this.m_Secondary;
    }

    public void setSecondary(FeedCategory feedCategory) {
        this.m_Secondary = feedCategory;
        this.m_Modified = true;
    }

    public boolean getIsModified() {
        return this.m_Modified;
    }

    public void setIsModified(boolean z) {
        this.m_Modified = z;
    }

    public boolean isOfCategory(FeedCategory feedCategory) {
        return feedCategory == CategoryManager.Unassigned ? getPrimary() == CategoryManager.Unassigned && getSecondary() == CategoryManager.Unassigned : getPrimary() == feedCategory || getSecondary() == feedCategory;
    }

    public String serialize() {
        return getPrimary().value() + MediaIdHelper.AUTO_MEDIA_ID_SEPERATOR + getSecondary().value();
    }

    public static FeedCategories deserialize(String str) {
        FeedCategories feedCategories = new FeedCategories();
        if (StringUtils.isNullOrEmpty(str)) {
            return feedCategories;
        }
        String[] split = str.split("\\|");
        if (split.length > 0) {
            feedCategories.m_Primary = loadCategory(split[0]);
        }
        if (split.length > 1) {
            feedCategories.m_Secondary = loadCategory(split[1]);
        }
        return feedCategories;
    }

    private static FeedCategory loadCategory(String str) {
        FeedCategory categoryByValue = CategoryManager.getCategoryByValue(str.trim());
        return categoryByValue == CategoryManager.CategoryNull ? CategoryManager.Unassigned : categoryByValue;
    }
}
