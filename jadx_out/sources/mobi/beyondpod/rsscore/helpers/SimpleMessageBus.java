package mobi.beyondpod.rsscore.helpers;

import android.os.Handler;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Collections;
import java.util.EventObject;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* loaded from: classes.dex */
public final class SimpleMessageBus {
    private static final String TAG = "SimpleMessageBus";
    private Handler _Handler;
    private final ConcurrentMap<Class<?>, ConcurrentMap<Class<?>, Object>> _HandlerMap = new ConcurrentHashMap();
    private final ConcurrentMap<Class<?>, String> _MethodNameCache = new ConcurrentHashMap();

    public SimpleMessageBus(Handler handler) {
        this._Handler = handler;
    }

    public void subscribe(Object obj, Class<?> cls) {
        ConcurrentMap<Class<?>, Object> concurrentMap = this._HandlerMap.get(cls);
        if (concurrentMap == null) {
            concurrentMap = new ConcurrentHashMap<>();
            this._HandlerMap.put(cls, concurrentMap);
        }
        concurrentMap.put(obj.getClass(), obj);
    }

    public void unsubscribe(Object obj, Class<?> cls) {
        ConcurrentMap<Class<?>, Object> concurrentMap = this._HandlerMap.get(cls);
        if (concurrentMap == null) {
            return;
        }
        concurrentMap.remove(obj.getClass());
    }

    private void publishEvent(EventObject eventObject, boolean z) {
        if (eventObject == null) {
            return;
        }
        if (z) {
            this._Handler.post(new Publisher(eventObject));
        } else {
            new Publisher(eventObject).run();
        }
    }

    public void publishEventAsync(EventObject eventObject) {
        publishEvent(eventObject, true);
    }

    public void publishEvent(EventObject eventObject) {
        publishEvent(eventObject, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Method getMethodHandlerFor(Object obj, Class<?> cls) {
        String str = this._MethodNameCache.get(cls);
        if (str == null) {
            Method searchForMethodHandlerFor = searchForMethodHandlerFor(obj, cls);
            if (searchForMethodHandlerFor != null) {
                this._MethodNameCache.put(cls, searchForMethodHandlerFor.getName());
            }
            return searchForMethodHandlerFor;
        }
        try {
            return obj.getClass().getMethod(str, cls);
        } catch (NoSuchMethodException unused) {
            return searchForMethodHandlerFor(obj, cls);
        }
    }

    private Method searchForMethodHandlerFor(Object obj, Class<?> cls) {
        Method[] declaredMethods = obj.getClass().getDeclaredMethods();
        int length = declaredMethods.length;
        for (int i = 0; i != length; i++) {
            Class<?>[] parameterTypes = declaredMethods[i].getParameterTypes();
            if (parameterTypes.length == 1 && parameterTypes[0].equals(cls)) {
                return declaredMethods[i];
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class Publisher implements Runnable {
        private final EventObject _Event;
        private final Class<?> _MessageType;

        public Publisher(EventObject eventObject) {
            this._Event = eventObject;
            this._MessageType = this._Event.getClass();
        }

        @Override // java.lang.Runnable
        public void run() {
            ConcurrentMap concurrentMap = (ConcurrentMap) SimpleMessageBus.this._HandlerMap.get(this._MessageType);
            Collection emptyList = concurrentMap == null ? Collections.emptyList() : concurrentMap.values();
            if (emptyList == null) {
                return;
            }
            for (Object obj : emptyList) {
                try {
                    Method methodHandlerFor = SimpleMessageBus.this.getMethodHandlerFor(obj, this._MessageType);
                    if (methodHandlerFor != null) {
                        methodHandlerFor.invoke(obj, this._Event);
                    }
                } catch (Exception e) {
                    CoreHelper.logException(SimpleMessageBus.TAG, "Publishing failed", e);
                }
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (Class<?> cls : this._HandlerMap.keySet()) {
            sb.append("event: ");
            sb.append(cls.getSimpleName());
            sb.append("\n");
            if (this._HandlerMap.get(cls).keySet().size() == 0) {
                sb.append("            No Subscribers!");
            } else {
                for (Class<?> cls2 : this._HandlerMap.get(cls).keySet()) {
                    sb.append("            ");
                    sb.append(cls2);
                    sb.append(" -> ");
                    sb.append(getMethodHandlerFor(this._HandlerMap.get(cls).get(cls2), cls).getName());
                    sb.append("\n");
                }
            }
            sb.append("\n");
        }
        return sb.toString();
    }

    public void clear() {
        this._HandlerMap.clear();
        this._MethodNameCache.clear();
    }
}
