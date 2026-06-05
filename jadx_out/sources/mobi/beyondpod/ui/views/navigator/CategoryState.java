package mobi.beyondpod.ui.views.navigator;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.RepositoryPersistence;
import mobi.beyondpod.services.auto.MediaIdHelper;

/* loaded from: classes.dex */
public class CategoryState {
    public static final String ALL_FEEDS_TAG = "#!ALL#";
    private static final List<FeedCategory> _List = Collections.synchronizedList(new ArrayList());
    private Runnable _SaveCategoriesRunnable = new Runnable() { // from class: mobi.beyondpod.ui.views.navigator.CategoryState.1
        @Override // java.lang.Runnable
        public void run() {
            CategoryState.this.saveCategoriesInternal();
        }
    };

    public void initialize() {
        loadCategories();
        if (_List.size() == 0) {
            FeedCategory activeFeedCategory = Configuration.getActiveFeedCategory();
            if (CategoryManager.AllFeeds.equals(activeFeedCategory)) {
                activeFeedCategory = CategoryManager.getCategoriesForFilterNoUncategorized().get(0);
            }
            expand(activeFeedCategory);
        }
    }

    public void expandFirstCategory() {
        _List.clear();
        if (!CategoryManager.hasUserCategories()) {
            expand(CategoryManager.AllFeeds);
        } else {
            expand(CategoryManager.getCategoriesForFilterNoUncategorized().get(0));
        }
    }

    public void expand(FeedCategory feedCategory) {
        _List.add(feedCategory);
        saveAsync();
    }

    public boolean isExpanded(FeedCategory feedCategory) {
        return _List.contains(feedCategory);
    }

    private void saveAsync() {
        RepositoryPersistence.repositoryHandler().removeCallbacks(this._SaveCategoriesRunnable);
        RepositoryPersistence.repositoryHandler().postDelayed(this._SaveCategoriesRunnable, 1000L);
    }

    public void collapse(FeedCategory feedCategory) {
        _List.remove(feedCategory);
        saveAsync();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveCategoriesInternal() {
        StringBuilder sb = new StringBuilder();
        synchronized (_List) {
            for (FeedCategory feedCategory : _List) {
                sb.append(CategoryManager.AllFeeds.equals(feedCategory) ? ALL_FEEDS_TAG : feedCategory.value());
                sb.append(MediaIdHelper.AUTO_MEDIA_ID_SEPERATOR);
            }
        }
        Configuration.setExpandedCategories(sb.toString());
    }

    private void loadCategories() {
        FeedCategory categoryByValue;
        String expandedCategories = Configuration.getExpandedCategories();
        if (StringUtils.isNullOrEmpty(expandedCategories)) {
            return;
        }
        String[] split = expandedCategories.split("\\|");
        _List.clear();
        for (String str : split) {
            if (!StringUtils.isNullOrEmpty(str)) {
                if (ALL_FEEDS_TAG.equals(str)) {
                    categoryByValue = CategoryManager.AllFeeds;
                } else {
                    categoryByValue = CategoryManager.getCategoryByValue(str);
                }
                if (!CategoryManager.CategoryNull.equals(categoryByValue)) {
                    _List.add(categoryByValue);
                }
            }
        }
    }
}
