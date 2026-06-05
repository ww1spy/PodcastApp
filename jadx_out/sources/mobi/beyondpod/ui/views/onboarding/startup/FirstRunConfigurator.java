package mobi.beyondpod.ui.views.onboarding.startup;

import android.graphics.Color;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.widget.Toast;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedList;
import mobi.beyondpod.rsscore.categories.CategoryList;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.helpers.TimeSpan;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.schedulercore.Event;
import mobi.beyondpod.schedulercore.OperationBase;
import mobi.beyondpod.schedulercore.OperationUpdateCategory;
import mobi.beyondpod.schedulercore.ScheduledTask;
import mobi.beyondpod.schedulercore.ScheduledTasksManager;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.core.volley.ImageLoaderFeedSearch;
import mobi.beyondpod.ui.views.impexp.FeedSearchService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class FirstRunConfigurator {
    public static final int MAX_RESULTS = 5;
    public static String TAG = "FirstRunConfigurator";
    ImageLoader _ImageLoader;
    String[] _LocalCategoryColors;
    String[] _LocalCategoryIds;
    String[] _LocalCategoryNames;
    FragmentActivity _OwnerActivity;
    private View _Progress;
    String _SelectedCategories;
    private Response.ErrorListener _errorListener = new Response.ErrorListener() { // from class: mobi.beyondpod.ui.views.onboarding.startup.FirstRunConfigurator.1
        @Override // com.android.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            int i;
            FirstRunConfigurator.this.toggleProgressFooter(false);
            if (CoreHelper.getDeviceNetworkConnection().isConnectedToNetwork()) {
                String str = FirstRunConfigurator.TAG;
                StringBuilder sb = new StringBuilder();
                sb.append("Error fetching sample content: Http Error: ");
                sb.append(volleyError.networkResponse != null ? Integer.valueOf(volleyError.networkResponse.statusCode) : volleyError.getMessage());
                CoreHelper.writeTraceEntry(str, sb.toString());
                i = R.string.search_error;
            } else {
                i = R.string.search_error_must_be_online_to_add_feeds;
            }
            Toast.makeText(FirstRunConfigurator.this._OwnerActivity, i, 1).show();
        }
    };
    boolean _AutomaticDownloadsEnabled = true;
    boolean _DownloadOnWiFiOnly = true;
    boolean _EnablaeAnalytics = true;
    private SearchSuccessListener _successListener = new SearchSuccessListener();

    public FirstRunConfigurator(FragmentActivity fragmentActivity, View view) {
        this._OwnerActivity = fragmentActivity;
        this._ImageLoader = new ImageLoaderFeedSearch(fragmentActivity);
        this._Progress = view;
        this._LocalCategoryColors = fragmentActivity.getResources().getStringArray(R.array.sample_content_category_colors);
        this._LocalCategoryNames = fragmentActivity.getResources().getStringArray(R.array.sample_content_category_names);
        this._LocalCategoryIds = fragmentActivity.getResources().getStringArray(R.array.sample_content_category_ids);
    }

    public void setSelectedCategories(String str) {
        this._SelectedCategories = str;
    }

    public void release() {
        this._ImageLoader.release();
    }

    String getLocaleCategoryNameFor(int i) {
        String num = Integer.toString(i);
        for (int i2 = 0; i2 != this._LocalCategoryIds.length; i2++) {
            if (num.equals(this._LocalCategoryIds[i2])) {
                return this._LocalCategoryNames[i2];
            }
        }
        return null;
    }

    String getLocaleCategoryColorFor(int i) {
        String num = Integer.toString(i);
        for (int i2 = 0; i2 != this._LocalCategoryIds.length; i2++) {
            if (num.equals(this._LocalCategoryIds[i2])) {
                return this._LocalCategoryColors[i2];
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void buildSampleContent() {
        FeedSearchService feedSearchService = new FeedSearchService(Configuration.beyondPodPublicAPIRoot(), this._ImageLoader.getRequestQueue());
        toggleProgressFooter(true);
        try {
            feedSearchService.getSampleContent(this._SelectedCategories, 5, this._successListener, this._errorListener);
        } catch (Exception e) {
            Toast.makeText(this._OwnerActivity, R.string.search_error, 1).show();
            CoreHelper.logException(TAG, this._OwnerActivity.getResources().getString(R.string.search_error), e);
            toggleProgressFooter(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleProgressFooter(boolean z) {
        this._Progress.setVisibility(z ? 0 : 8);
    }

    public boolean canBuildContent() {
        return !StringUtils.isNullOrEmpty(this._SelectedCategories);
    }

    public void downloadOptionsChanged(boolean z, boolean z2) {
        this._AutomaticDownloadsEnabled = z;
        this._DownloadOnWiFiOnly = z2;
    }

    public void analyticsOptionsChanged(boolean z) {
        this._EnablaeAnalytics = z;
    }

    /* loaded from: classes.dex */
    class SearchSuccessListener implements Response.Listener<JSONArray> {
        String _Query;
        Random _random = new Random(System.nanoTime());

        SearchSuccessListener() {
        }

        void setQuery(String str) {
            this._Query = str;
        }

        @Override // com.android.volley.Response.Listener
        public void onResponse(JSONArray jSONArray) {
            try {
                try {
                    List<SampleContentResult> parseResults = parseResults(jSONArray);
                    configureAutomaticUpdate();
                    configureAnalytics();
                    if (parseResults.size() > 0) {
                        addSampleContent(parseResults);
                    }
                    FirstRunConfigurator.this._OwnerActivity.setResult(-1);
                    FirstRunConfigurator.this._OwnerActivity.finish();
                } catch (Exception e) {
                    Toast.makeText(FirstRunConfigurator.this._OwnerActivity, R.string.search_error, 1).show();
                    CoreHelper.writeTraceEntry(FirstRunConfigurator.TAG, "Error getting sample content: " + e.getMessage());
                }
            } finally {
                FirstRunConfigurator.this.toggleProgressFooter(false);
            }
        }

        private void addSampleContent(List<SampleContentResult> list) {
            int globalDefaultPodcastDownloadAction = Configuration.getGlobalDefaultPodcastDownloadAction();
            Configuration.setGlobalDefaultPodcastDownloadAction(2);
            FeedList feedList = new FeedList();
            Iterator<SampleContentResult> it = list.iterator();
            while (it.hasNext()) {
                Feed addFeed = addFeed(it.next());
                if (addFeed != null) {
                    feedList.add(addFeed);
                }
            }
            CategoryList categoriesForFilterNoUncategorized = CategoryManager.getCategoriesForFilterNoUncategorized();
            if (categoriesForFilterNoUncategorized.size() > 0) {
                FeedCategory feedCategory = categoriesForFilterNoUncategorized.get(categoriesForFilterNoUncategorized.size() - 1);
                if (!CategoryManager.AllFeeds.equals(feedCategory)) {
                    CategoryManager.moveCategory(CategoryManager.AllFeeds, feedCategory);
                }
            }
            Configuration.setGlobalDefaultPodcastDownloadAction(globalDefaultPodcastDownloadAction);
            if (feedList.size() > 0) {
                CommandManager.cmdUpdateFeeds(feedList, false);
            }
        }

        private void configureAutomaticUpdate() {
            Configuration.setDownloadEnclosuresOnWiFiOnly(FirstRunConfigurator.this._DownloadOnWiFiOnly);
            if (FirstRunConfigurator.this._AutomaticDownloadsEnabled && ScheduledTasksManager.tasks().size() <= 0) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar();
                gregorianCalendar.set(11, getRandomHour());
                gregorianCalendar.set(12, getRandomMinute());
                Event event = new Event(gregorianCalendar.getTime(), 1, new TimeSpan(1L, 0L, 0L, 0L));
                OperationBase createInstance = ScheduledTasksManager.operations().get(OperationUpdateCategory.OperationID).createInstance("");
                ((OperationUpdateCategory) createInstance).setCategoryToUpdate(CategoryManager.AllFeeds.value());
                ScheduledTask scheduledTask = new ScheduledTask(event, createInstance);
                scheduledTask.active = true;
                ScheduledTasksManager.registerTask(scheduledTask);
                ScheduledTasksManager.setScheduledTaskToDevice(scheduledTask);
                FeedRepository.saveRepositoryAsync();
            }
        }

        private void configureAnalytics() {
            Configuration.setGatherAnalyticsData(FirstRunConfigurator.this._EnablaeAnalytics);
        }

        private int getRandomHour() {
            return new int[]{1, 2, 3, 4}[this._random.nextInt(r0.length - 1)];
        }

        private int getRandomMinute() {
            return new int[]{1, 15, 30, 45}[this._random.nextInt(r0.length - 1)];
        }

        private List<SampleContentResult> parseResults(JSONArray jSONArray) throws JSONException {
            ArrayList arrayList = new ArrayList();
            if (jSONArray == null || jSONArray.length() == 0) {
                return arrayList;
            }
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                Integer num = null;
                String string = jSONObject.isNull("Title") ? null : jSONObject.getString("Title");
                String string2 = jSONObject.isNull("Url") ? null : jSONObject.getString("Url");
                String string3 = jSONObject.isNull("ImageUrl") ? null : jSONObject.getString("ImageUrl");
                String string4 = jSONObject.isNull("Category") ? null : jSONObject.getString("Category");
                String string5 = jSONObject.isNull("CategoryColor") ? null : jSONObject.getString("CategoryColor");
                if (!jSONObject.isNull("CategoryId")) {
                    num = Integer.valueOf(jSONObject.getInt("CategoryId"));
                }
                arrayList.add(new SampleContentResult(string, string2, string3, string4, string5, num.intValue()));
            }
            return arrayList;
        }

        private Feed addFeed(SampleContentResult sampleContentResult) {
            int i;
            if (FeedRepository.getFeedByUrl(sampleContentResult.feedUrl) != null) {
                return null;
            }
            Feed createAndAddFeedWithDefaults = Feed.createAndAddFeedWithDefaults(sampleContentResult.feedUrl, sampleContentResult.feedName, sampleContentResult.feedImageUrl);
            String localeCategoryNameFor = FirstRunConfigurator.this.getLocaleCategoryNameFor(sampleContentResult.categoryId);
            if (StringUtils.isNullOrEmpty(localeCategoryNameFor)) {
                localeCategoryNameFor = sampleContentResult.categoryName;
            }
            String str = sampleContentResult.categoryColor;
            if (StringUtils.isNullOrEmpty(str)) {
                str = FirstRunConfigurator.this.getLocaleCategoryColorFor(sampleContentResult.categoryId);
            }
            FeedCategory findOrCreateCategory = findOrCreateCategory(localeCategoryNameFor);
            try {
                i = Color.parseColor(str);
            } catch (Exception unused) {
                i = 0;
            }
            if (findOrCreateCategory != CategoryManager.CategoryNull) {
                if (findOrCreateCategory.color() == 0 && i != 0) {
                    CategoryManager.setCategoryColor(findOrCreateCategory, i);
                }
                if (createAndAddFeedWithDefaults.getCategories().getPrimary() != findOrCreateCategory) {
                    createAndAddFeedWithDefaults.getCategories().setPrimary(findOrCreateCategory);
                }
            }
            FeedRepository.notifyFeedChanged(createAndAddFeedWithDefaults);
            return createAndAddFeedWithDefaults;
        }

        private FeedCategory findOrCreateCategory(String str) {
            if (StringUtils.isNullOrEmpty(str)) {
                return CategoryManager.Unassigned;
            }
            if (CategoryManager.getCategoryByValue(str) == CategoryManager.CategoryNull) {
                try {
                    CategoryManager.addCategory(str);
                } catch (Exception unused) {
                    return CategoryManager.Unassigned;
                }
            }
            return CategoryManager.getCategoryByValue(str);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class SampleContentResult {
            public String categoryColor;
            public int categoryId;
            public String categoryName;
            public String feedImageUrl;
            public String feedName;
            public String feedUrl;

            SampleContentResult(String str, String str2, String str3, String str4, String str5, int i) {
                this.feedName = str;
                this.feedUrl = str2;
                this.feedImageUrl = str3;
                this.categoryName = str4;
                this.categoryColor = str5;
                this.categoryId = i;
            }
        }
    }
}
