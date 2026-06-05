package mobi.beyondpod.rsscore.categories;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.helpers.AnalyticsTracker;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.services.auto.MediaIdHelper;
import mobi.beyondpod.services.player.smartplay.SmartPlaylistManager;

/* loaded from: classes.dex */
public final class CategoryManager {
    public static final int MAX_FEED_CATEGORIES = 2;
    private static final String TAG = "CategoryManager";
    private static boolean m_IsModified = true;
    private static final List<FeedCategory> m_Categories = Collections.synchronizedList(new ArrayList());
    public static FeedCategory AllFeeds = new AllFeedsCategory();
    public static FeedCategory Unassigned = new CategoryNone();
    public static FeedCategory CategoryNull = new NullCategory();
    public static FeedCategory CategoryHome = new HomeCategory();

    static {
        m_Categories.add(AllFeeds);
        m_Categories.add(Unassigned);
    }

    public static CategoryList getCategoriesForFilter() {
        CategoryList categoryList = new CategoryList();
        categoryList.addAll(m_Categories);
        return categoryList;
    }

    public static CategoryList getCategoriesForFilterNoUncategorized() {
        CategoryList categoryList = new CategoryList();
        categoryList.addAll(m_Categories);
        categoryList.remove(Unassigned);
        return categoryList;
    }

    public static CategoryList getCategoriesForAssignment() {
        CategoryList categoryList = new CategoryList();
        categoryList.addAll(m_Categories);
        categoryList.remove(AllFeeds);
        categoryList.remove(CategoryHome);
        return categoryList;
    }

    public static CategoryList getCategoriesUserDefined() {
        CategoryList categoryList = new CategoryList();
        categoryList.addAll(m_Categories);
        categoryList.remove(AllFeeds);
        categoryList.remove(CategoryHome);
        categoryList.remove(Unassigned);
        return categoryList;
    }

    public static FeedCategory getCategoryByValue(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return AllFeeds;
        }
        String trim = str.trim();
        if (StringUtils.equalsIgnoreCase(Unassigned.value(), trim)) {
            return Unassigned;
        }
        if (StringUtils.equalsIgnoreCase(CategoryHome.value(), trim)) {
            return CategoryHome;
        }
        synchronized (m_Categories) {
            for (FeedCategory feedCategory : m_Categories) {
                if (StringUtils.equalsIgnoreCase(feedCategory.value(), trim)) {
                    return feedCategory;
                }
            }
            return CategoryNull;
        }
    }

    public static boolean hasUserCategories() {
        return m_Categories.size() > 2;
    }

    public static void deleteCategory(FeedCategory feedCategory) {
        m_Categories.remove(feedCategory);
        if (Configuration.getActiveFeedCategory().equals(feedCategory)) {
            Configuration.setActiveFeedCategory(AllFeeds);
        }
        for (Feed feed : FeedRepository.getRootFeed().subFeeds()) {
            if (feed.getCategories().getPrimary().equals(feedCategory)) {
                feed.getCategories().setPrimary(Unassigned);
            }
            if (feed.getCategories().getSecondary() == feedCategory) {
                feed.getCategories().setSecondary(Unassigned);
            }
        }
        setIsModified(true);
        FeedRepository.notifyCategoryEvent(13);
    }

    public static void addCategory(String str) throws Exception {
        assertCategoryValueDoesNotExist(str);
        addCategory(new FeedCategory(str));
    }

    public static void addCategory(FeedCategory feedCategory) {
        if (!m_Categories.contains(feedCategory)) {
            m_Categories.add(feedCategory);
        }
        setIsModified(true);
        FeedRepository.notifyCategoryEvent(12);
    }

    public static void renameCategory(FeedCategory feedCategory, String str) throws Exception {
        assertCategoryValueDoesNotExist(str);
        boolean equals = Configuration.getActiveFeedCategory().equals(feedCategory);
        feedCategory.renameTo(str);
        SmartPlaylistManager.onCategoryRenamed(feedCategory);
        for (Feed feed : FeedRepository.getRootFeed().subFeeds()) {
            if (isInCategory(feed, feedCategory)) {
                feed.touch();
            }
        }
        if (equals) {
            Configuration.setActiveFeedCategory(feedCategory);
        }
        setIsModified(true);
        FeedRepository.notifyCategoryEvent(14);
    }

    public static void setCategoryColor(FeedCategory feedCategory, int i) {
        if (feedCategory == null) {
            return;
        }
        feedCategory.setColor(i);
        setIsModified(true);
        FeedRepository.notifyCategoryEvent(14);
    }

    public static String serialize() {
        StringBuilder sb = new StringBuilder();
        try {
            synchronized (m_Categories) {
                Iterator<FeedCategory> it = m_Categories.iterator();
                while (it.hasNext()) {
                    sb.append(it.next().serializedData());
                    sb.append(MediaIdHelper.AUTO_MEDIA_ID_SEPERATOR);
                }
            }
        } catch (Exception e) {
            CoreHelper.logException(TAG, "Unable to serialize categories!", e);
        }
        return sb.toString();
    }

    public static boolean isInCategory(Feed feed, FeedCategory feedCategory) {
        if (feed == null || feedCategory == null) {
            return false;
        }
        if (feedCategory.equals(AllFeeds)) {
            return true;
        }
        return feed.getCategories() != null && feed.getCategories().isOfCategory(feedCategory);
    }

    private static void assertCategoryValueDoesNotExist(String str) throws Exception {
        if (getCategoryByValue(str) != CategoryNull) {
            throw new Exception("Category " + str + " already exists!");
        }
    }

    public static void deserialize(String str) {
        String[] split = str.split("\\|");
        m_Categories.clear();
        for (String str2 : split) {
            if (!StringUtils.isNullOrEmpty(str2)) {
                m_Categories.add(FeedCategory.deserialize(str2));
            }
        }
        AnalyticsTracker.onCategoriesLoaded(m_Categories.size());
        if (!m_Categories.contains(AllFeeds)) {
            m_Categories.add(0, AllFeeds);
        }
        if (m_Categories.contains(Unassigned)) {
            return;
        }
        m_Categories.add(Unassigned);
    }

    public static void clear() {
        m_Categories.clear();
        CoreHelper.writeTraceEntry(TAG, "Categories unloaded");
    }

    public static boolean isModified() {
        return m_IsModified;
    }

    public static void setIsModified(boolean z) {
        m_IsModified = z;
    }

    public static void moveCategory(FeedCategory feedCategory, FeedCategory feedCategory2) {
        int indexOf = m_Categories.indexOf(feedCategory);
        int indexOf2 = m_Categories.indexOf(feedCategory2);
        if (indexOf < 0 || indexOf2 < 0) {
            return;
        }
        moveCategoryByPos(indexOf, indexOf2);
    }

    private static void moveCategoryByPos(int i, int i2) {
        FeedCategory feedCategory = m_Categories.get(i);
        if (feedCategory == null || i2 < 0 || i2 >= m_Categories.size()) {
            return;
        }
        m_Categories.remove(feedCategory);
        m_Categories.add(i2, feedCategory);
        setIsModified(true);
        FeedRepository.notifyCategoryEvent(14);
    }

    public static boolean hasCategory(FeedCategory feedCategory) {
        if (feedCategory == CategoryHome) {
            return true;
        }
        if (m_Categories.size() > 0) {
            for (int i = 0; i < m_Categories.size(); i++) {
                if (m_Categories.get(i) == feedCategory) {
                    return true;
                }
            }
        }
        return false;
    }
}
