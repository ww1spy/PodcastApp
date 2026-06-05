package mobi.beyondpod.ui.views.myepisodesview;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.TrackSorter;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.history.EpisodeHistoryManager;
import mobi.beyondpod.rsscore.repository.FeedRepository;

/* loaded from: classes.dex */
public class HomeScreenContentBuilder {
    public static final String TAG = "HomeScreenContentBuilder";
    Context _Context;

    /* loaded from: classes.dex */
    public static class SectionInfo {
        public TrackList EpisodeBucket = new TrackList();
        public String SectionName;

        public boolean isEmpty() {
            return this.EpisodeBucket == null || this.EpisodeBucket.size() == 0;
        }
    }

    /* loaded from: classes.dex */
    public static class HomeScreenSections extends ArrayList<SectionInfo> {
        @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            Iterator<SectionInfo> it = iterator();
            while (it.hasNext()) {
                if (!it.next().isEmpty()) {
                    return false;
                }
            }
            return true;
        }

        public int numEpisodes() {
            Iterator<SectionInfo> it = iterator();
            int i = 0;
            while (it.hasNext()) {
                SectionInfo next = it.next();
                if (!next.isEmpty()) {
                    i += next.EpisodeBucket.size();
                }
            }
            return i;
        }
    }

    public HomeScreenContentBuilder(Context context) {
        this._Context = context;
    }

    public HomeScreenSections build() {
        HomeScreenSections homeScreenSections = new HomeScreenSections();
        SectionInfo generateLatestEpisodes = generateLatestEpisodes();
        if (generateLatestEpisodes.EpisodeBucket.size() > 0) {
            homeScreenSections.add(generateLatestEpisodes);
        }
        SectionInfo generateUnfinishedEpisodes = generateUnfinishedEpisodes();
        if (generateUnfinishedEpisodes.EpisodeBucket.size() > 0) {
            homeScreenSections.add(generateUnfinishedEpisodes);
        }
        SectionInfo generateFavoriteEpisodes = generateFavoriteEpisodes();
        if (generateFavoriteEpisodes.EpisodeBucket.size() > 0) {
            homeScreenSections.add(generateFavoriteEpisodes);
        }
        return homeScreenSections;
    }

    private SectionInfo generateLatestEpisodes() {
        SectionInfo sectionInfo = new SectionInfo();
        sectionInfo.EpisodeBucket = EpisodeHistoryManager.getLatestAddedEpisodes(6);
        sectionInfo.SectionName = this._Context.getResources().getString(R.string.card_section_what_is_new);
        return sectionInfo;
    }

    private SectionInfo generateUnfinishedEpisodes() {
        SectionInfo sectionInfo = new SectionInfo();
        sectionInfo.EpisodeBucket = EpisodeHistoryManager.getLatestPlayedEpisodes(6);
        sectionInfo.SectionName = this._Context.getResources().getString(R.string.card_section_recently_played);
        return sectionInfo;
    }

    private SectionInfo generateFavoriteEpisodes() {
        SectionInfo sectionInfo = new SectionInfo();
        try {
            sectionInfo.EpisodeBucket.addAll(FeedRepository.getLockedEpisodes());
            if (sectionInfo.EpisodeBucket.size() > 0) {
                Collections.sort(sectionInfo.EpisodeBucket, new TrackSorter(0));
            }
            sectionInfo.SectionName = this._Context.getResources().getString(R.string.card_section_favorite_episodes);
        } catch (Exception e) {
            CoreHelper.logException(TAG, "failed to build Favorites home screen section", e);
        }
        return sectionInfo;
    }
}
