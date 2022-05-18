.class public Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;
.super Ljava/lang/Object;
.source "BulbDiscoverer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;
    }
.end annotation


# static fields
.field public static final BEAM_CHANGED_BROADCAST_ACTION:Ljava/lang/String; = "beamchanged"

.field public static CURRENT_WIFI_STATE:I = 0x0

.field public static final RECEIVER_ACTION:Ljava/lang/String; = "beams-discovered"

.field public static final RECEIVER_WIFI_LIST:Ljava/lang/String; = "wifi_bulbs"

.field public static STATE_BEAM_FOUND:I

.field public static STATE_IDLE:I

.field public static STATE_NO_BEAM:I

.field public static STATE_WIFI_OFF:I

.field public static STATE_WIFI_SCANNING:I

.field private static final TAG:Ljava/lang/String;

.field public static beamBulbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

.field public static wifiBeamList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private threadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_IDLE:I

    .line 36
    const/4 v0, 0x1

    sput v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_WIFI_SCANNING:I

    .line 37
    const/4 v0, 0x2

    sput v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_WIFI_OFF:I

    .line 38
    const/4 v0, 0x3

    sput v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_NO_BEAM:I

    .line 39
    const/4 v0, 0x4

    sput v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_BEAM_FOUND:I

    .line 40
    sget v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_IDLE:I

    sput v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->CURRENT_WIFI_STATE:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->beamBulbs:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->wifiBeamList:Ljava/util/ArrayList;

    .line 49
    const-class v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->threadList:Ljava/util/ArrayList;

    .line 69
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->connectToIP(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->sendWifiBeamListBroadcast(Landroid/content/Context;)V

    return-void
.end method

.method public static addWifiBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V
    .locals 1
    .param p0, "bulb"    # Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .prologue
    .line 89
    invoke-static {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->isAlreadyAdded(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->beamBulbs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    return-void
.end method

.method private checkBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)Z
    .locals 5
    .param p1, "currentBulb"    # Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .prologue
    .line 78
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->wifiBeamList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 79
    .local v0, "beambulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Beams in list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v2, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    iget-object v3, p1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Beam already in list "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const/4 v1, 0x1

    .line 85
    .end local v0    # "beambulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->beamBulbs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->wifiBeamList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 55
    return-void
.end method

.method private connectToIP(Ljava/lang/String;I)V
    .locals 9
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "TIMEOUT"    # I

    .prologue
    .line 189
    const/16 v3, 0x3490

    .line 190
    .local v3, "port":I
    const/4 v4, 0x0

    .line 192
    .local v4, "socket":Ljava/net/Socket;
    :try_start_0
    sget-object v6, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Searching IP at: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .end local v4    # "socket":Ljava/net/Socket;
    .local v5, "socket":Ljava/net/Socket;
    :try_start_1
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v6, 0x3490

    invoke-direct {v0, p1, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 195
    .local v0, "address":Ljava/net/SocketAddress;
    invoke-virtual {v5, v0, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 196
    sget-object v6, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connected to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    sget-object v7, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->CONNECTION_TYPE_WIFI:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    const-string v8, ""

    invoke-static {v6, v7, p1, v8}, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->readBeamInfo(Ljava/io/InputStream;Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;Ljava/lang/String;Ljava/lang/String;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v1

    .line 199
    .local v1, "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    if-nez v1, :cond_2

    .line 200
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    if-eqz v5, :cond_0

    .line 213
    :try_start_2
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v4, v5

    .line 219
    .end local v0    # "address":Ljava/net/SocketAddress;
    .end local v1    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .end local v5    # "socket":Ljava/net/Socket;
    .restart local v4    # "socket":Ljava/net/Socket;
    :cond_1
    :goto_1
    return-void

    .line 215
    .end local v4    # "socket":Ljava/net/Socket;
    .restart local v0    # "address":Ljava/net/SocketAddress;
    .restart local v1    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .restart local v5    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v2

    .line 216
    .local v2, "ex":Ljava/io/IOException;
    sget-object v6, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->TAG:Ljava/lang/String;

    const-string v7, "Exception while closing the wifi socket"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_2
    :try_start_3
    invoke-direct {p0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->checkBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 204
    sget-object v6, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->wifiBeamList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v6, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->TAG:Ljava/lang/String;

    const-string v7, "Adding beam wifi"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 212
    :cond_3
    if-eqz v5, :cond_4

    .line 213
    :try_start_4
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    move-object v4, v5

    .line 217
    .end local v5    # "socket":Ljava/net/Socket;
    .restart local v4    # "socket":Ljava/net/Socket;
    goto :goto_1

    .line 215
    .end local v4    # "socket":Ljava/net/Socket;
    .restart local v5    # "socket":Ljava/net/Socket;
    :catch_1
    move-exception v2

    .line 216
    .restart local v2    # "ex":Ljava/io/IOException;
    sget-object v6, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->TAG:Ljava/lang/String;

    const-string v7, "Exception while closing the wifi socket"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 218
    .end local v5    # "socket":Ljava/net/Socket;
    .restart local v4    # "socket":Ljava/net/Socket;
    goto :goto_1

    .line 207
    .end local v0    # "address":Ljava/net/SocketAddress;
    .end local v1    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 212
    :goto_2
    if-eqz v4, :cond_1

    .line 213
    :try_start_5
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 215
    :catch_3
    move-exception v2

    .line 216
    .restart local v2    # "ex":Ljava/io/IOException;
    sget-object v6, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->TAG:Ljava/lang/String;

    const-string v7, "Exception while closing the wifi socket"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 208
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 212
    :goto_3
    if-eqz v4, :cond_1

    .line 213
    :try_start_6
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_1

    .line 215
    :catch_5
    move-exception v2

    .line 216
    .restart local v2    # "ex":Ljava/io/IOException;
    sget-object v6, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->TAG:Ljava/lang/String;

    const-string v7, "Exception while closing the wifi socket"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 209
    .end local v2    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v6

    .line 212
    :goto_4
    if-eqz v4, :cond_1

    .line 213
    :try_start_7
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_1

    .line 215
    :catch_7
    move-exception v2

    .line 216
    .restart local v2    # "ex":Ljava/io/IOException;
    sget-object v6, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->TAG:Ljava/lang/String;

    const-string v7, "Exception while closing the wifi socket"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 211
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 212
    :goto_5
    if-eqz v4, :cond_5

    .line 213
    :try_start_8
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 217
    :cond_5
    :goto_6
    throw v6

    .line 215
    :catch_8
    move-exception v2

    .line 216
    .restart local v2    # "ex":Ljava/io/IOException;
    sget-object v7, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->TAG:Ljava/lang/String;

    const-string v8, "Exception while closing the wifi socket"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 211
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v4    # "socket":Ljava/net/Socket;
    .restart local v5    # "socket":Ljava/net/Socket;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "socket":Ljava/net/Socket;
    .restart local v4    # "socket":Ljava/net/Socket;
    goto :goto_5

    .line 209
    .end local v4    # "socket":Ljava/net/Socket;
    .restart local v5    # "socket":Ljava/net/Socket;
    :catch_9
    move-exception v6

    move-object v4, v5

    .end local v5    # "socket":Ljava/net/Socket;
    .restart local v4    # "socket":Ljava/net/Socket;
    goto :goto_4

    .line 208
    .end local v4    # "socket":Ljava/net/Socket;
    .restart local v5    # "socket":Ljava/net/Socket;
    :catch_a
    move-exception v6

    move-object v4, v5

    .end local v5    # "socket":Ljava/net/Socket;
    .restart local v4    # "socket":Ljava/net/Socket;
    goto :goto_3

    .line 207
    .end local v4    # "socket":Ljava/net/Socket;
    .restart local v5    # "socket":Ljava/net/Socket;
    :catch_b
    move-exception v6

    move-object v4, v5

    .end local v5    # "socket":Ljava/net/Socket;
    .restart local v4    # "socket":Ljava/net/Socket;
    goto :goto_2
.end method

.method public static getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->instance:Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->instance:Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    invoke-direct {v0, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->instance:Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    .line 65
    :cond_0
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->instance:Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    return-object v0
.end method

.method private static isAlreadyAdded(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)Z
    .locals 5
    .param p0, "bulb"    # Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .prologue
    const/4 v1, 0x1

    .line 95
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->beamBulbs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 96
    .local v0, "b":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    iget-object v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->mac:Ljava/lang/String;

    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    .end local v0    # "b":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    :goto_0
    return v1

    .line 100
    .restart local v0    # "b":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    :cond_1
    iget-object v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 104
    .end local v0    # "b":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isConnectedByWifi(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    .locals 4
    .param p0, "bleBeam"    # Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .prologue
    .line 108
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->beamBulbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 109
    .local v0, "b":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    iget-object v2, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    iget-object v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    .end local v0    # "b":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendWifiBeamListBroadcast(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWifiBeamListBroadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->wifiBeamList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v0, Landroid/content/Intent;

    const-string v1, "beams-discovered"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "wifi_bulbs"

    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->wifiBeamList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 267
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 268
    return-void
.end method


# virtual methods
.method public findBulbs(Landroid/content/Context;ZI)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forceSearch"    # Z
    .param p3, "timeout"    # I

    .prologue
    const/4 v6, 0x0

    .line 137
    sget-object v7, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FindBulbs forceSearch "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-nez p2, :cond_1

    sget v7, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->CURRENT_WIFI_STATE:I

    sget v8, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_WIFI_SCANNING:I

    if-le v7, v8, :cond_1

    .line 139
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->sendWifiBeamListBroadcast(Landroid/content/Context;)V

    .line 185
    :cond_0
    :goto_0
    return v6

    .line 142
    :cond_1
    sget v7, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->CURRENT_WIFI_STATE:I

    sget v8, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_WIFI_SCANNING:I

    if-eq v7, v8, :cond_0

    .line 145
    sget v7, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_WIFI_SCANNING:I

    sput v7, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->CURRENT_WIFI_STATE:I

    .line 147
    invoke-static {p1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/WifiUtil;->getMyIpRangeBaseString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "ipRangeBaseString":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 149
    sget v7, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_WIFI_OFF:I

    sput v7, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->CURRENT_WIFI_STATE:I

    .line 150
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->sendWifiBeamListBroadcast(Landroid/content/Context;)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 155
    const-string v7, "wifi"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 156
    .local v5, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "SSID":Ljava/lang/String;
    const-string v7, "\"Beam_"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "192.168.43."

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 159
    new-instance v3, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$2;

    invoke-direct {v3, p0, v2, p3}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$2;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;Ljava/lang/String;I)V

    .line 166
    .local v3, "thread":Ljava/lang/Thread;
    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 184
    .end local v3    # "thread":Ljava/lang/Thread;
    :cond_3
    new-instance v7, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;

    iget-object v8, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->threadList:Ljava/util/ArrayList;

    invoke-direct {v7, p0, v8}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;Ljava/util/ArrayList;)V

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v7, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 185
    const/4 v6, 0x1

    goto :goto_0

    .line 169
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v7, 0xff

    if-ge v1, v7, :cond_3

    .line 170
    move v4, v1

    .line 171
    .local v4, "threadI":I
    new-instance v3, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$3;

    invoke-direct {v3, p0, v4, v2, p3}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$3;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;ILjava/lang/String;I)V

    .line 180
    .restart local v3    # "thread":Ljava/lang/Thread;
    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 169
    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method public findLastBulb(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 117
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->TAG:Ljava/lang/String;

    const-string v3, "FindLastBulb"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->CURRENT_WIFI_STATE:I

    sget v3, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_WIFI_SCANNING:I

    if-ne v2, v3, :cond_0

    .line 133
    :goto_0
    return v1

    .line 121
    :cond_0
    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_WIFI_SCANNING:I

    sput v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->CURRENT_WIFI_STATE:I

    .line 122
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 123
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$1;

    invoke-direct {v0, p0, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;Ljava/lang/String;)V

    .line 129
    .local v0, "thread":Ljava/lang/Thread;
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 132
    new-instance v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->threadList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;Ljava/util/ArrayList;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setWifiState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 73
    sput p1, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->CURRENT_WIFI_STATE:I

    .line 74
    return-void
.end method
