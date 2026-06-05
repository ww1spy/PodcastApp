package mobi.beyondpod.ui.views.navigator;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedList;
import mobi.beyondpod.rsscore.FeedSorter;
import mobi.beyondpod.rsscore.categories.CategoryList;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.repository.FeedRepository;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FeedListViewDataSource {
    private int _FeedCount;
    private int _HiddenFeedCount;
    private ArrayList<ListDataItem> _Items = new ArrayList<>();
    private CategoryState _ExpandedCategories = new CategoryState();

    /* loaded from: classes.dex */
    public static class ListDataItem {
        public FeedCategory Category;
        public Feed Feed;

        public ListDataItem(FeedCategory feedCategory, Feed feed) {
            this.Category = feedCategory;
            this.Feed = feed;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clear() {
        this._Items.clear();
        this._FeedCount = 0;
        this._HiddenFeedCount = 0;
    }

    public FeedListViewDataSource() {
        this._ExpandedCategories.initialize();
    }

    public ListDataItem getAtPosition(int i) {
        if (i >= size() || i < 0) {
            return null;
        }
        return this._Items.get(i);
    }

    public int size() {
        return this._Items.size();
    }

    public int getFeedIndex(Feed feed) {
        Iterator<ListDataItem> it = this._Items.iterator();
        int i = 0;
        while (it.hasNext()) {
            ListDataItem next = it.next();
            if (next.Feed != null && next.Feed.equals(feed)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public int getCategoryIndex(FeedCategory feedCategory) {
        Iterator<ListDataItem> it = this._Items.iterator();
        int i = 0;
        while (it.hasNext()) {
            ListDataItem next = it.next();
            if (next.Category != null && next.Category.equals(feedCategory)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public boolean hasReadFeeds() {
        Iterator<ListDataItem> it = this._Items.iterator();
        while (it.hasNext()) {
            ListDataItem next = it.next();
            if (next.Feed != null && !next.Feed.mayHaveUnreadItems()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void filterAndGroupByFirstCategory(Feed feed, boolean z) {
        HashMap<FeedCategory, FeedList> hashMap = new HashMap<>();
        if (!CategoryManager.hasUserCategories()) {
            expandCollapseCategory(CategoryManager.AllFeeds, true);
        }
        CategoryList categoryList = new CategoryList();
        if (feed.canNavigateUp()) {
            categoryList.add(CategoryManager.AllFeeds);
        } else {
            categoryList.addAll(CategoryManager.getCategoriesForFilter());
        }
        for (Feed feed2 : feed.subFeeds()) {
            FeedCategory primary = feed2.getCategories().getPrimary();
            FeedCategory secondary = feed2.getCategories().getSecondary();
            if (CategoryManager.hasUserCategories() && primary.equals(CategoryManager.Unassigned) && secondary.equals(CategoryManager.Unassigned)) {
                addFeedToCategoryGroup(hashMap, CategoryManager.Unassigned, feed2);
            } else {
                if (!primary.equals(CategoryManager.Unassigned)) {
                    addFeedToCategoryGroup(hashMap, primary, feed2);
                }
                if (!secondary.equals(CategoryManager.Unassigned)) {
                    addFeedToCategoryGroup(hashMap, secondary, feed2);
                }
            }
            addFeedToCategoryGroup(hashMap, CategoryManager.AllFeeds, feed2);
        }
        if (hashMap.get(CategoryManager.Unassigned) == null) {
            categoryList.remove(CategoryManager.Unassigned);
        }
        FeedSorter feedSorter = new FeedSorter(Configuration.getFeedsSortOrder());
        Iterator<FeedCategory> it = categoryList.iterator();
        while (it.hasNext()) {
            FeedCategory next = it.next();
            if (!feed.canNavigateUp()) {
                this._Items.add(new ListDataItem(next, null));
                if (!this._ExpandedCategories.isExpanded(next)) {
                }
            }
            FeedList feedList = hashMap.get(next);
            if (feedList != null) {
                Collections.sort(feedList, feedSorter);
                Iterator<Feed> it2 = hashMap.get(next).iterator();
                while (it2.hasNext()) {
                    Feed next2 = it2.next();
                    if (!z || next2.mayHaveUnreadItems()) {
                        this._Items.add(new ListDataItem(null, next2));
                        this._FeedCount++;
                    } else {
                        this._HiddenFeedCount++;
                    }
                }
            }
        }
        if (feed.canNavigateUp()) {
            this._Items.add(0, new ListDataItem(null, FeedRepository.getGoUpPlaceholder()));
        }
    }

    private void addFeedToCategoryGroup(HashMap<FeedCategory, FeedList> hashMap, FeedCategory feedCategory, Feed feed) {
        FeedList feedList = hashMap.get(feedCategory);
        if (feedList == null) {
            feedList = new FeedList();
            hashMap.put(feedCategory, feedList);
        }
        if (feedList.contains(feed)) {
            return;
        }
        feedList.add(feed);
    }

    public FeedList getFeeds() {
        FeedList feedList = new FeedList();
        Iterator<ListDataItem> it = this._Items.iterator();
        while (it.hasNext()) {
            ListDataItem next = it.next();
            if (next.Feed != null) {
                feedList.add(next.Feed);
            }
        }
        return feedList;
    }

    public int feedCount() {
        return this._FeedCount;
    }

    public int hiddenFeedCount() {
        return this._HiddenFeedCount;
    }

    public boolean hasHiddenReadFeeds() {
        return this._HiddenFeedCount > 0;
    }

    public boolean isCategoryExpanded(FeedCategory feedCategory) {
        return this._ExpandedCategories.isExpanded(feedCategory);
    }

    public void expandCollapseCategory(FeedCategory feedCategory, boolean z) {
        if (feedCategory == null) {
            return;
        }
        if (z) {
            if (isCategoryExpanded(feedCategory)) {
                return;
            }
            this._ExpandedCategories.expand(feedCategory);
            return;
        }
        this._ExpandedCategories.collapse(feedCategory);
    }

    public void expandFirstCategory() {
        this._ExpandedCategories.expandFirstCategory();
    }
}
