package mobi.beyondpod.ui.views.impexp;

import android.os.Parcel;
import android.os.Parcelable;
import java.text.SimpleDateFormat;
import java.util.Date;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;

/* loaded from: classes.dex */
public class FeedSearchResult implements Parcelable {
    private String _Description;
    private String _EpisodeUrl;
    private String _ImageUrl;
    private String _Language;
    private String _Link;
    private String _OriginatingFeed;
    private String _PubDate;
    private String _Title;
    private String _TotalTime;
    private String _Type;
    private static SimpleDateFormat _DateFormat = new SimpleDateFormat("yyyy-MM-dd");
    public static final Parcelable.Creator<FeedSearchResult> CREATOR = new Parcelable.Creator<FeedSearchResult>() { // from class: mobi.beyondpod.ui.views.impexp.FeedSearchResult.1
        @Override // android.os.Parcelable.Creator
        public FeedSearchResult createFromParcel(Parcel parcel) {
            return new FeedSearchResult(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public FeedSearchResult[] newArray(int i) {
            return new FeedSearchResult[i];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public FeedSearchResult(Parcel parcel) {
        this._Title = parcel.readString();
        this._Type = parcel.readString();
        this._Link = parcel.readString();
        this._ImageUrl = parcel.readString();
        this._Description = parcel.readString();
        this._OriginatingFeed = parcel.readString();
        this._EpisodeUrl = parcel.readString();
        this._Language = parcel.readString();
        this._TotalTime = parcel.readString();
        this._PubDate = parcel.readString();
    }

    public FeedSearchResult(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10) {
        this._Title = str;
        this._Type = str5;
        this._Link = str3;
        this._ImageUrl = str4;
        this._Description = str2;
        this._OriginatingFeed = str6;
        this._EpisodeUrl = str7;
        this._Language = str8;
        this._TotalTime = str9;
        this._PubDate = str10;
    }

    public String getTitle() {
        return this._Title;
    }

    public void setTitle(String str) {
        this._Title = str;
    }

    public String getType() {
        return this._Type;
    }

    public void setType(String str) {
        this._Type = str;
    }

    public String getLink() {
        return this._Link;
    }

    public void setLink(String str) {
        this._Link = str;
    }

    public String getImageUrl() {
        return this._ImageUrl;
    }

    public void setImageUrl(String str) {
        this._ImageUrl = str;
    }

    public String getDescription() {
        return this._Description;
    }

    public void setDescription(String str) {
        this._Description = str;
    }

    public String getOriginatingFeed() {
        return this._OriginatingFeed;
    }

    public void setOriginatingFeed(String str) {
        this._OriginatingFeed = str;
    }

    public String getEpisodeUrl() {
        return this._EpisodeUrl;
    }

    public void setEpisodeUrl(String str) {
        this._EpisodeUrl = str;
    }

    public String getLanguage() {
        return this._Language;
    }

    public void setLanguage(String str) {
        this._Language = str;
    }

    public String getTotalTime() {
        return this._TotalTime;
    }

    public void setTotalTime(String str) {
        this._TotalTime = str;
    }

    public String getPubDate() {
        return this._PubDate;
    }

    public Date getPubDateAsDate() {
        if (StringUtils.isNullOrEmpty(this._PubDate)) {
            return null;
        }
        return DateTime.tryParseDateTimeWithFormat(this._PubDate, _DateFormat);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this._Title);
        parcel.writeString(this._Type);
        parcel.writeString(this._Link);
        parcel.writeString(this._ImageUrl);
        parcel.writeString(this._Description);
        parcel.writeString(this._OriginatingFeed);
        parcel.writeString(this._EpisodeUrl);
        parcel.writeString(this._Language);
        parcel.writeString(this._TotalTime);
        parcel.writeString(this._PubDate);
    }
}
