package mobi.beyondpod.ui.commands;

import android.os.AsyncTask;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;

/* loaded from: classes.dex */
public class RefreshVirtualFeedTask extends AsyncTask<Feed, Integer, Void> {
    ITrackImageRefreshProgress _ProgressNotifier;

    /* loaded from: classes.dex */
    public interface ITrackImageRefreshProgress {
        void onRefreshCompleted();

        void onRefreshProgress(int i);

        void onRefreshStarted();
    }

    public RefreshVirtualFeedTask(ITrackImageRefreshProgress iTrackImageRefreshProgress) {
        this._ProgressNotifier = iTrackImageRefreshProgress;
    }

    @Override // android.os.AsyncTask
    public Void doInBackground(Feed... feedArr) {
        if (feedArr != null) {
            try {
                FeedRepository.refreshVirtualFeed(feedArr[0]);
                TrackList tracksAndSubTracks = feedArr[0].tracksAndSubTracks();
                int size = tracksAndSubTracks.size() > 40 ? tracksAndSubTracks.size() / 20 : 1;
                for (int i = 0; i != tracksAndSubTracks.size(); i++) {
                    Track track = tracksAndSubTracks.get(i);
                    track.setTrackImagePath(null);
                    track.setContentMimeType(null);
                    track.ensureTrackHasContentType();
                    if (i % size == 0 && (i / size) * 5 < 100) {
                        publishProgress(Integer.valueOf((i / size) * 5));
                    }
                }
                publishProgress(99);
                FeedRepository.saveRepositorySync();
                BeyondPodApplication.messageBus.publishEventAsync(new RepositoryEvents.RepositoryEvent(16, feedArr[0]));
                publishProgress(100);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onProgressUpdate(Integer... numArr) {
        if (this._ProgressNotifier != null) {
            this._ProgressNotifier.onRefreshProgress(numArr[0].intValue());
        }
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        if (this._ProgressNotifier != null) {
            this._ProgressNotifier.onRefreshStarted();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(Void r1) {
        if (this._ProgressNotifier != null) {
            this._ProgressNotifier.onRefreshCompleted();
        }
    }
}
