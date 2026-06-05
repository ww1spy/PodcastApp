.class public Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;
.super Ljava/lang/Object;
.source "CoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/helpers/CoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceNetworkConnection"
.end annotation


# instance fields
.field _AllowBackground:Z

.field _Info:Landroid/net/NetworkInfo;


# direct methods
.method public constructor <init>(Landroid/net/NetworkInfo;Z)V
    .locals 1

    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 964
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->_AllowBackground:Z

    .line 969
    iput-object p1, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->_Info:Landroid/net/NetworkInfo;

    .line 970
    iput-boolean p2, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->_AllowBackground:Z

    return-void
.end method


# virtual methods
.method public extraInfo()Ljava/lang/String;
    .locals 2

    .line 994
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->_Info:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    .line 996
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->_Info:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->_Info:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->_Info:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1000
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->_Info:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "N/A"

    return-object v0
.end method

.method public isBackgroundDataAllowed()Z
    .locals 1

    .line 1018
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->_AllowBackground:Z

    return v0
.end method

.method public isConnectedToNetwork()Z
    .locals 2

    .line 975
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->checkForNetworkConnectivity()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 979
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->_Info:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->_Info:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isConnectionCellular()Z
    .locals 1

    .line 984
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->_Info:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->_Info:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnectionWiFi()Z
    .locals 2

    .line 989
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->_Info:Landroid/net/NetworkInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->_Info:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1009
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->_Info:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->_Info:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "N/A"

    return-object v0
.end method
