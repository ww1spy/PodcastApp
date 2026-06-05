package mobi.beyondpod.sync.trackers;

import java.util.List;
import mobi.beyondpod.sync.TrackedChangeBase;

/* loaded from: classes.dex */
public interface ITracker {
    void close();

    List<TrackedChangeBase> getRemoteChangesSince(long j) throws Exception;

    void initialize() throws Exception;

    void syncChangesUp(List<TrackedChangeBase> list) throws Exception;

    List<TrackedChangeBase> syncPushPull(List<TrackedChangeBase> list, long j) throws Exception;
}
