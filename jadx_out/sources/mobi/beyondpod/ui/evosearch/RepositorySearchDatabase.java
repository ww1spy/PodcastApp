package mobi.beyondpod.ui.evosearch;

import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedSorter;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.TrackSorter;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;

/* loaded from: classes.dex */
public class RepositorySearchDatabase {
    private String EPISODES;
    private String IN;

    public RepositorySearchDatabase(Context context) {
        this.IN = "In";
        this.EPISODES = "Episodes";
        this.IN = context.getResources().getString(R.string.folder_browser_in);
        this.EPISODES = context.getResources().getString(R.string.feed_search_db_episodes);
    }

    public Cursor getWord(String str, String[] strArr) {
        return query(str, strArr);
    }

    public Cursor getFeedTrackMatches(String str, String[] strArr) {
        return query(str, strArr);
    }

    private Cursor query(String str, String[] strArr) {
        String str2;
        String name;
        String str3;
        if (StringUtils.isNullOrEmpty(str)) {
            return null;
        }
        FeedRepository.FeedSearchArguments feedSearchArguments = new FeedRepository.FeedSearchArguments(str);
        feedSearchArguments.leafFeedsOnly = false;
        Feed searchForFeeds = FeedRepository.searchForFeeds(FeedRepository.getRootFeed(), feedSearchArguments);
        TrackList searchForTracks = FeedRepository.searchForTracks(feedSearchArguments);
        if (searchForFeeds.subFeeds().size() == 0 && searchForTracks.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(searchForFeeds.subFeeds());
        Collections.sort(arrayList, new FeedSorter(Configuration.getFeedsSortOrder()));
        Collections.sort(searchForTracks, new TrackSorter(Configuration.getPodcastsSortOrder()));
        MatrixCursor matrixCursor = new MatrixCursor(strArr, arrayList.size() + searchForTracks.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Feed feed = (Feed) it.next();
            ArrayList arrayList2 = new ArrayList(strArr.length);
            arrayList2.add(0);
            arrayList2.add(feed.getName());
            FeedCategory primary = feed.getCategories().getPrimary();
            FeedCategory secondary = feed.getCategories().getSecondary();
            if (primary.equals(CategoryManager.Unassigned) && secondary.equals(CategoryManager.Unassigned)) {
                name = primary.name();
            } else if (primary.equals(CategoryManager.Unassigned)) {
                name = secondary.name();
            } else if (secondary.equals(CategoryManager.Unassigned)) {
                name = primary.name();
            } else {
                name = primary.name();
            }
            if (feed.tracks().size() > 0) {
                str3 = " - " + feed.tracks().size() + " " + this.EPISODES + ", ";
            } else {
                str3 = " - ";
            }
            StringBuilder sb = new StringBuilder();
            sb.append(feed.getLastModifiedDate() != null ? DateTime.formatDateTime(feed.getLastModifiedDate()) : "");
            sb.append(str3);
            sb.append(this.IN);
            sb.append(" ");
            sb.append(name);
            arrayList2.add(sb.toString());
            int i = R.drawable.default_feed_image;
            if (feed.getType() == 1) {
                i = feed.isSubFeed() ? R.drawable.ic_action_folder_open_blue : R.drawable.ic_action_folder_open_yellow;
            }
            arrayList2.add(Integer.toString(i));
            arrayList2.add(feed.id().toString());
            matrixCursor.addRow(arrayList2);
        }
        Iterator<Track> it2 = searchForTracks.iterator();
        while (it2.hasNext()) {
            Track next = it2.next();
            ArrayList arrayList3 = new ArrayList(strArr.length);
            arrayList3.add(0);
            arrayList3.add(next.displayName());
            StringBuilder sb2 = new StringBuilder();
            if (next.getLastModifiedDate() != null) {
                str2 = DateTime.formatDateTime(next.getLastModifiedDate()) + " - ";
            } else {
                str2 = "";
            }
            sb2.append(str2);
            sb2.append(next.getParentFeed().getName());
            arrayList3.add(sb2.toString());
            int contentType = next.contentType();
            int i2 = R.drawable.podcast_list_audio_bg;
            switch (contentType) {
                case 2:
                    i2 = R.drawable.podcast_list_movie_bg;
                    break;
                case 3:
                    i2 = R.drawable.podcast_list_image_bg;
                    break;
            }
            arrayList3.add(Integer.toString(i2));
            arrayList3.add(next.trackPath());
            matrixCursor.addRow(arrayList3);
        }
        if (matrixCursor == null) {
            return null;
        }
        if (matrixCursor.moveToFirst()) {
            return matrixCursor;
        }
        matrixCursor.close();
        return null;
    }
}
