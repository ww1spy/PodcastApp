package mobi.beyondpod.rsscore.helpers;

import java.util.LinkedList;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public class GenericQueue<E> {
    private static final String TAG = "GenericQueue";
    private LinkedList<E> list = new LinkedList<>();

    private synchronized LinkedList<E> getList() {
        if (this.list == null) {
            this.list = new LinkedList<>();
        }
        return this.list;
    }

    public synchronized void enqueue(E e) {
        getList().addLast(e);
    }

    public synchronized E dequeue() {
        try {
        } catch (NoSuchElementException unused) {
            return null;
        }
        return getList().poll();
    }

    public synchronized boolean hasItems() {
        return !getList().isEmpty();
    }

    public synchronized int size() {
        return getList().size();
    }

    public synchronized void addItems(GenericQueue<? extends E> genericQueue) {
        while (genericQueue.hasItems()) {
            getList().addLast(genericQueue.dequeue());
        }
    }

    public synchronized void clear() {
        getList().clear();
    }

    public synchronized E peek() {
        try {
        } catch (Exception e) {
            CoreHelper.writeLogEntry(TAG, e.getMessage());
            return null;
        }
        return getList().getFirst();
    }

    public synchronized boolean contains(E e) {
        return getList().contains(e);
    }

    public synchronized E get(int i) {
        return getList().get(i);
    }

    public synchronized void remove(E e) {
        getList().remove(e);
    }
}
