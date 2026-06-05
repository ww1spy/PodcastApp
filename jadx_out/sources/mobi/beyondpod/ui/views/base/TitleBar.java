package mobi.beyondpod.ui.views.base;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.ActionBar;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextSwitcher;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.ui.core.ThemeManager;
import mobi.beyondpod.ui.views.MasterView;

/* loaded from: classes.dex */
public class TitleBar {
    public static int PlayerStatusBarColor = Color.argb(240, 0, 0, 0);
    private static Drawable _Category = null;
    private static int _CategoryColor = -1;
    private static Drawable _Default;
    private static int _DefaultColor;
    private static Drawable _Home;
    private static int _HomeColor;
    private MasterView _Owner;
    private TitleInfo _Title;
    private String[] _episodeOptions;
    private String _previousSubtitle;
    private TextSwitcher _subTitleLine;
    private View _titleGroup;
    private TextView _titleLine;

    /* loaded from: classes.dex */
    public static class TitleInfo {
        public static final int SELECTOR_TYPE_ALL_PUBLISHED = 1;
        public static final int SELECTOR_TYPE_DISABLED = -1;
        public static final int SELECTOR_TYPE_MY_EPISODES = 0;
        public String primaryTitle;
        public int selectorType = -1;
        public String subTitle;
    }

    public TitleBar(MasterView masterView) {
        this._Owner = masterView;
        this._episodeOptions = this._Owner.getResources().getStringArray(R.array.myepisodesFilter_text);
        final LayoutInflater from = LayoutInflater.from(masterView);
        this._titleGroup = from.inflate(R.layout.action_bar_filter, (ViewGroup) null);
        this._titleLine = (TextView) this._titleGroup.findViewById(R.id.title);
        this._subTitleLine = (TextSwitcher) this._titleGroup.findViewById(R.id.subTitle);
        this._subTitleLine.setFactory(new ViewSwitcher.ViewFactory() { // from class: mobi.beyondpod.ui.views.base.TitleBar.1
            @Override // android.widget.ViewSwitcher.ViewFactory
            public View makeView() {
                return from.inflate(R.layout.action_bar_filter_switcher_item, (ViewGroup) TitleBar.this._subTitleLine, false);
            }
        });
        ActionBar supportActionBar = this._Owner.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayOptions(16);
            supportActionBar.setDisplayShowTitleEnabled(false);
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            supportActionBar.setHomeButtonEnabled(true);
            supportActionBar.setCustomView(this._titleGroup);
        }
        this._titleGroup.setOnClickListener(new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.base.TitleBar.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Integer num;
                Integer num2 = (Integer) TitleBar.this._titleGroup.getTag();
                if (num2 == null) {
                    return;
                }
                if (num2.intValue() == 1) {
                    num = 0;
                } else {
                    num = 1;
                }
                TitleBar.this._Owner.openFeed(Configuration.getActiveFeedFilter(), num.intValue() == 1, num.intValue() == 0);
            }
        });
        _HomeColor = ContextCompat.getColor(this._Owner, R.color.bp_orange);
        _DefaultColor = ContextCompat.getColor(this._Owner, R.color.bp_primary_dark);
    }

    public void setTitle(TitleInfo titleInfo) {
        String str;
        this._Title = titleInfo;
        updateActionBarBackground();
        if (this._Title.selectorType == -1) {
            this._titleLine.setText(this._Title.primaryTitle);
            str = this._Title.subTitle;
        } else {
            this._titleLine.setText(this._Title.primaryTitle);
            str = this._episodeOptions[this._Title.selectorType];
            this._titleGroup.setTag(Integer.valueOf(this._Title.selectorType));
        }
        setSubtitle(str);
        this._titleGroup.setEnabled(this._Title.selectorType != -1);
        this._Owner.supportInvalidateOptionsMenu();
    }

    private void setSubtitle(String str) {
        this._subTitleLine.setVisibility(StringUtils.isNullOrEmpty(str) ? 8 : 0);
        if (StringUtils.isNullOrEmpty(this._previousSubtitle) || StringUtils.isNullOrEmpty(str) || StringUtils.equals(this._previousSubtitle, str)) {
            this._subTitleLine.setCurrentText(str);
        } else {
            this._subTitleLine.setText(str);
        }
        this._previousSubtitle = str;
    }

    private void updateActionBarBackground() {
        int constructActionBarColor = constructActionBarColor();
        ActionBar supportActionBar = this._Owner.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setBackgroundDrawable(getDrawableForColor(constructActionBarColor));
        }
        UIUtils.setStatusBarColor(this._Owner, this._Owner.Workspace.isFullScreenPlayerVisible() ? PlayerStatusBarColor : UIUtils.createStatusBarColorFromCategoryColor(constructActionBarColor));
    }

    public static int constructActionBarColor() {
        int i = _DefaultColor;
        if (ThemeManager.isDarkTheme()) {
            return i;
        }
        FeedCategory activeFeedCategory = Configuration.getActiveFeedCategory();
        if (!Configuration.actionBarUsesCategoryColor() || activeFeedCategory == null || activeFeedCategory.color() == 0) {
            return CategoryManager.CategoryHome.equals(Configuration.getActiveFeedCategory()) ? _HomeColor : _DefaultColor;
        }
        return activeFeedCategory.color();
    }

    private Drawable getDrawableForColor(int i) {
        if (i == _DefaultColor) {
            if (_Default == null) {
                _Default = new ColorDrawable(_DefaultColor);
            }
            return _Default;
        }
        if (i == _HomeColor) {
            if (_Home == null) {
                _Home = new ColorDrawable(_HomeColor);
            }
            return _Home;
        }
        if (_CategoryColor == i && _Category != null) {
            return _Category;
        }
        _CategoryColor = i;
        _Category = new ColorDrawable(_CategoryColor);
        return _Category;
    }
}
