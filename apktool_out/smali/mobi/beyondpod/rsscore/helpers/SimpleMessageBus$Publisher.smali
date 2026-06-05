.class final Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus$Publisher;
.super Ljava/lang/Object;
.source "SimpleMessageBus.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Publisher"
.end annotation


# instance fields
.field private final _Event:Ljava/util/EventObject;

.field private final _MessageType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;Ljava/util/EventObject;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus$Publisher;->this$0:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p2, p0, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus$Publisher;->_Event:Ljava/util/EventObject;

    .line 141
    iget-object p1, p0, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus$Publisher;->_Event:Ljava/util/EventObject;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus$Publisher;->_MessageType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 146
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus$Publisher;->this$0:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->access$000(Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus$Publisher;->_MessageType:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    if-nez v0, :cond_0

    .line 147
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 153
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 157
    :try_start_0
    iget-object v2, p0, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus$Publisher;->this$0:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v3, p0, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus$Publisher;->_MessageType:Ljava/lang/Class;

    invoke-static {v2, v1, v3}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->access$100(Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    .line 160
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus$Publisher;->_Event:Ljava/util/EventObject;

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 165
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Publishing failed"

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    return-void
.end method
