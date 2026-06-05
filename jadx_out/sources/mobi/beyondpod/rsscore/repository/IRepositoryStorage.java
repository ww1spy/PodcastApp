package mobi.beyondpod.rsscore.repository;

import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.schedulercore.ScheduledTask;

/* loaded from: classes.dex */
public interface IRepositoryStorage {
    void deleteFeed(Feed feed);

    void deleteRepositoryFiles();

    void deleteTask(ScheduledTask scheduledTask);

    void deleteTrack(Track track);

    void deleteTracks(TrackList trackList);

    void loadRepository();

    void saveRepository();
}
