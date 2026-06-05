.class Lmobi/beyondpod/downloadengine/HttpClientOkhttp$1;
.super Ljava/lang/Object;
.source "HttpClientOkhttp.java"

# interfaces
.implements Lokhttp3/Authenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/downloadengine/HttpClientOkhttp;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lmobi/beyondpod/rsscore/helpers/NetworkCredential;Ljava/net/URI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/downloadengine/HttpClientOkhttp;

.field final synthetic val$credentials:Lmobi/beyondpod/rsscore/helpers/NetworkCredential;


# direct methods
.method constructor <init>(Lmobi/beyondpod/downloadengine/HttpClientOkhttp;Lmobi/beyondpod/rsscore/helpers/NetworkCredential;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp$1;->this$0:Lmobi/beyondpod/downloadengine/HttpClientOkhttp;

    iput-object p2, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp$1;->val$credentials:Lmobi/beyondpod/rsscore/helpers/NetworkCredential;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp$1;->val$credentials:Lmobi/beyondpod/rsscore/helpers/NetworkCredential;

    iget-object p1, p1, Lmobi/beyondpod/rsscore/helpers/NetworkCredential;->userName:Ljava/lang/String;

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/HttpClientOkhttp$1;->val$credentials:Lmobi/beyondpod/rsscore/helpers/NetworkCredential;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/helpers/NetworkCredential;->password:Ljava/lang/String;

    invoke-static {p1, v0}, Lokhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    const-string v1, "Authorization"

    invoke-virtual {v0, v1}, Lokhttp3/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 147
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p2

    const-string v0, "Authorization"

    invoke-virtual {p2, v0, p1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method
