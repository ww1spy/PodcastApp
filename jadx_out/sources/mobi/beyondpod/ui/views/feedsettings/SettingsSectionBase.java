package mobi.beyondpod.ui.views.feedsettings;

import android.view.View;
import android.view.ViewStub;
import mobi.beyondpod.rsscore.Feed;

/* loaded from: classes.dex */
public abstract class SettingsSectionBase {
    protected View _InflatedContent;
    protected boolean _IsDataLoaded;
    protected FeedPropertiesView _Owner;
    protected int _StubId;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean hasFeedAddressChanged();

    protected abstract void initialize();

    public abstract boolean isURLFeed();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void patchFeedUrl(String str);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void refresh(Feed feed);

    public abstract void saveToFeed(Feed feed);

    public abstract boolean validateControls(Feed feed);

    /* JADX INFO: Access modifiers changed from: package-private */
    public SettingsSectionBase(FeedPropertiesView feedPropertiesView) {
        this._Owner = feedPropertiesView;
    }

    public void loadFromFeed(Feed feed) {
        this._IsDataLoaded = true;
    }

    public void show() {
        if (this._InflatedContent != null) {
            this._InflatedContent.setVisibility(0);
            return;
        }
        ViewStub viewStub = (ViewStub) this._Owner.findViewById(this._StubId);
        if (viewStub != null) {
            this._InflatedContent = viewStub.inflate();
            initialize();
            this._Owner.getWindow().setSoftInputMode(3);
        }
    }

    public void hide() {
        if (this._InflatedContent != null) {
            this._InflatedContent.setVisibility(8);
        }
    }

    public boolean isVisible() {
        return this._InflatedContent != null && this._InflatedContent.getVisibility() == 0;
    }

    public boolean isDataLoaded() {
        return this._IsDataLoaded;
    }

    public void focusControl(int i) {
        View findViewById = this._Owner.findViewById(i);
        if (findViewById != null) {
            findViewById.requestFocus();
        }
    }
}
