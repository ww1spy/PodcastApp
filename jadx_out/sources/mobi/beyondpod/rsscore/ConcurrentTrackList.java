package mobi.beyondpod.rsscore;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;

/* loaded from: classes.dex */
public class ConcurrentTrackList {
    private static final String TAG = "ConcurrentTrackList";
    public final List<Track> _List = Collections.synchronizedList(new ArrayList());

    public int getUnplayedTrackCount() {
        int i;
        synchronized (this._List) {
            Iterator<Track> it = this._List.iterator();
            i = 0;
            while (it.hasNext()) {
                if (it.next().isNew()) {
                    i++;
                }
            }
        }
        return i;
    }

    public Track getTrackByPath(String str) {
        if (this._List.size() <= 0) {
            return null;
        }
        synchronized (this._List) {
            for (Track track : this._List) {
                if (StringUtils.equalsIgnoreCase(track.trackPath(), str)) {
                    return track;
                }
            }
            return null;
        }
    }

    public Track getTrackByNameOrUrl(String str, String str2) {
        if (this._List.size() <= 0) {
            return null;
        }
        synchronized (this._List) {
            for (Track track : this._List) {
                if (track.trackPath().endsWith(str)) {
                    return track;
                }
                if (!StringUtils.isNullOrEmpty(str2) && StringUtils.equalsIgnoreCase(track.getUrl(), str2)) {
                    return track;
                }
            }
            return null;
        }
    }

    public void ensureTrackPathMatchesParent() {
        synchronized (this._List) {
            for (Track track : this._List) {
                if (track.patchTrackPathToMatchParent()) {
                    CoreHelper.writeTraceEntry(TAG, "Found streamable episode with download path that does not match parent! Patched to:" + track.trackPath());
                }
            }
        }
    }

    public int size() {
        return this._List.size();
    }

    public boolean addAll(Collection<Track> collection) {
        boolean addAll;
        synchronized (this._List) {
            addAll = this._List.addAll(collection);
        }
        return addAll;
    }

    public boolean add(Track track) {
        return this._List.add(track);
    }

    public void add(int i, Track track) {
        this._List.add(i, track);
    }

    public void sort(Comparator<Track> comparator) {
        synchronized (this._List) {
            Collections.sort(this._List, comparator);
        }
    }

    public boolean remove(Track track) {
        return this._List.remove(track);
    }

    public void clear() {
        this._List.clear();
    }

    public int indexOf(Track track) {
        return this._List.indexOf(track);
    }

    public boolean contains(Track track) {
        return this._List.contains(track);
    }

    public void appendTo(List<Track> list) {
        synchronized (this._List) {
            list.addAll(this._List);
        }
    }

    public void disableChangeTracking() {
        synchronized (this._List) {
            Iterator<Track> it = this._List.iterator();
            while (it.hasNext()) {
                it.next().changeTrackingEnabled = false;
            }
        }
    }
}
