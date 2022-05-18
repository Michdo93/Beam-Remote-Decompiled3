.class public Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;
.super Landroid/app/Service;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;,
        Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$ConnectionBinder;,
        Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;,
        Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$WriteTimerTask;
    }
.end annotation


# static fields
.field private static final ACTION_KEEP_ALIVE:Ljava/lang/String; = "keepAlive"

.field public static final BLUETOOTH_MAC_ADDRESS:Ljava/lang/String; = "bluetoothMacaddress"

.field public static final IP:Ljava/lang/String; = "ip"

.field public static final IS_BLUETOOTH:Ljava/lang/String; = "isBluetooth"

.field public static final LOCAL_MAC:Ljava/lang/String; = "mac"

.field public static final PORT:Ljava/lang/String; = "port"

.field private static final TAG:Ljava/lang/String;

.field public static final USER_NAME:Ljava/lang/String; = "user"

.field private static final WRITE_TIMEOUT:I = 0x3a98

.field private static volatile commQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile dummyQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile isBluetooth:Z


# instance fields
.field private final alarmReceiver:Landroid/content/BroadcastReceiver;

.field private commHandler:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;

.field private commHandlerThread:Ljava/lang/Thread;

.field private connectionThread:Ljava/lang/Thread;

.field private dummyCommHandler:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;

.field private dummyCommHandlerThread:Ljava/lang/Thread;

.field private dummySocket:Ljava/net/Socket;

.field private imageSocketIsConnecting:Z

.field private imgSocket:Ljava/net/Socket;

.field private isRegistered:Z

.field private mBinder:Landroid/os/IBinder;

.field private mDummyWriter:Ljava/io/PrintWriter;

.field private mImageWriter:Ljava/io/PrintWriter;

.field private mLocalMac:Ljava/lang/String;

.field private mPrintWriter:Ljava/io/PrintWriter;

.field private mServerIp:Ljava/lang/String;

.field private mServerPort:I

.field private mUserName:Ljava/lang/String;

.field private socketIsConnecting:Z

.field private wifiSocket:Ljava/net/Socket;

.field private writeTimer:Ljava/util/Timer;

.field private writerTask:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$WriteTimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$ConnectionBinder;

    invoke-direct {v0, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$ConnectionBinder;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mBinder:Landroid/os/IBinder;

    .line 44
    iput-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->socketIsConnecting:Z

    .line 45
    iput-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->imageSocketIsConnecting:Z

    .line 46
    iput-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->isRegistered:Z

    .line 64
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->writeTimer:Ljava/util/Timer;

    .line 555
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$5;

    invoke-direct {v0, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$5;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->alarmReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->isBluetooth:Z

    return v0
.end method

.method static synthetic access$100(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->connectDummySocket()V

    return-void
.end method

.method static synthetic access$1000(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->imgSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->imgSocket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Ljava/net/Socket;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->close(Ljava/net/Socket;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mServerIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Ljava/lang/String;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->connectToIp(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1402(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Ljava/io/PrintWriter;)Ljava/io/PrintWriter;
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mImageWriter:Ljava/io/PrintWriter;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Ljava/io/PrintWriter;)Ljava/io/PrintWriter;
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mPrintWriter:Ljava/io/PrintWriter;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->stopWriteTimerTask()V

    return-void
.end method

.method static synthetic access$1800(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->cleanUp()V

    return-void
.end method

.method static synthetic access$1900()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->commQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->dummyQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->executeSendKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/BlockingQueue;
    .locals 0
    .param p0, "x0"    # Ljava/util/concurrent/BlockingQueue;

    .prologue
    .line 37
    sput-object p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->dummyQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)Ljava/io/PrintWriter;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mDummyWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->dummyCommHandler:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;)Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;
    .param p1, "x1"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->dummyCommHandler:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;

    return-object p1
.end method

.method static synthetic access$400(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)Ljava/lang/Thread;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->dummyCommHandlerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->dummyCommHandlerThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$500(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->connectToSocket()V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->imageSocketIsConnecting:Z

    return v0
.end method

.method static synthetic access$902(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->imageSocketIsConnecting:Z

    return p1
.end method

.method private cleanUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->isRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->stopConnectionThread()V

    .line 135
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->commHandler:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->commHandler:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->access$600(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->dummyCommHandler:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->dummyCommHandler:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;->access$700(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;)V

    .line 140
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mDummyWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mDummyWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mPrintWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mPrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mPrintWriter:Ljava/io/PrintWriter;

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->wifiSocket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->close(Ljava/net/Socket;)V

    .line 149
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->closeImageSocket()V

    .line 150
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->stopConnectionThread()V

    .line 151
    iget-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->isRegistered:Z

    if-eqz v0, :cond_3

    .line 152
    iput-boolean v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->isRegistered:Z

    .line 153
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->alarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 155
    :cond_3
    sput-boolean v3, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->isBluetooth:Z

    .line 157
    return-void
.end method

.method private close(Ljava/net/Socket;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 342
    if-eqz p1, :cond_0

    .line 343
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    const-string v2, "wifi socket close failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private connectDummySocket()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 201
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->dummySocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->dummySocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->dummySocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    :goto_0
    return-void

    .line 205
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mServerIp:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 206
    .local v9, "serverAddr":Ljava/net/InetAddress;
    const/16 v1, 0x3e8

    invoke-virtual {v9, v1}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    new-instance v8, Landroid/content/Intent;

    const-string v1, "keepAlive"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v8, "keepAliveIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 209
    .local v6, "alarmIntent":Landroid/app/PendingIntent;
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 210
    .local v0, "alarmMgr":Landroid/app/AlarmManager;
    const/4 v1, 0x2

    const-wide/32 v2, 0x927c0

    const-wide/32 v4, 0x927c0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 214
    new-instance v1, Ljava/net/Socket;

    iget v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mServerPort:I

    invoke-direct {v1, v9, v2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->wifiSocket:Ljava/net/Socket;

    .line 216
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->wifiSocket:Ljava/net/Socket;

    .line 217
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mDummyWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 225
    .end local v0    # "alarmMgr":Landroid/app/AlarmManager;
    .end local v6    # "alarmIntent":Landroid/app/PendingIntent;
    .end local v8    # "keepAliveIntent":Landroid/content/Intent;
    .end local v9    # "serverAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v7

    .line 226
    .local v7, "e1":Ljava/net/UnknownHostException;
    iput-boolean v10, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->socketIsConnecting:Z

    .line 227
    invoke-virtual {v7}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v7    # "e1":Ljava/net/UnknownHostException;
    .restart local v9    # "serverAddr":Ljava/net/InetAddress;
    :cond_1
    :try_start_1
    const-string v1, "SOCKET"

    const-string v2, "SOCKET IS NOT REACHABLE!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->socketIsConnecting:Z
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 228
    .end local v9    # "serverAddr":Ljava/net/InetAddress;
    :catch_1
    move-exception v7

    .line 229
    .local v7, "e1":Ljava/io/IOException;
    iput-boolean v10, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->socketIsConnecting:Z

    .line 230
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private connectToIp(Ljava/lang/String;)Ljava/net/Socket;
    .locals 6
    .param p1, "ipAddress"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 325
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 326
    .local v2, "serverAddress":Ljava/net/InetAddress;
    const/16 v4, 0x1388

    invoke-virtual {v2, v4}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 327
    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    const-string v5, "socket is not reachable"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .end local v2    # "serverAddress":Ljava/net/InetAddress;
    :goto_0
    return-object v3

    .line 330
    .restart local v2    # "serverAddress":Ljava/net/InetAddress;
    :cond_0
    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    const-string v5, "socket connected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v4, Ljava/net/Socket;

    iget v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mServerPort:I

    invoke-direct {v4, v2, v5}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v4

    goto :goto_0

    .line 332
    .end local v2    # "serverAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e1":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    .line 334
    .end local v0    # "e1":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    .line 335
    .local v1, "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private connectToSocket()V
    .locals 1

    .prologue
    .line 235
    sget-boolean v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->isBluetooth:Z

    if-nez v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->connectToWifiSocket()V

    .line 240
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->connectToImageSocket()V

    goto :goto_0
.end method

.method private connectToWifiSocket()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 243
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    const-string v4, "connectToWifiSocket "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-boolean v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->socketIsConnecting:Z

    if-eqz v3, :cond_0

    .line 245
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    const-string v4, "wifi socket already connecting"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_0
    return-void

    .line 249
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->socketIsConnecting:Z

    .line 250
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->wifiSocket:Ljava/net/Socket;

    invoke-direct {p0, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->close(Ljava/net/Socket;)V

    .line 251
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mServerIp:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->connectToIp(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->wifiSocket:Ljava/net/Socket;

    .line 252
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->wifiSocket:Ljava/net/Socket;

    if-nez v3, :cond_1

    .line 253
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    const-string v4, "WiFi socket is not reachable"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->socketIsConnecting:Z

    .line 255
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 256
    .local v2, "i":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 266
    .end local v2    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 271
    .end local v0    # "e1":Ljava/io/IOException;
    :goto_1
    iput-boolean v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->socketIsConnecting:Z

    goto :goto_0

    .line 260
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->wifiSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->CONNECTION_TYPE_WIFI:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    const-string v5, ""

    const-string v6, ""

    invoke-static {v3, v4, v5, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->readBeamInfo(Ljava/io/InputStream;Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;Ljava/lang/String;Ljava/lang/String;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 262
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->wifiSocket:Ljava/net/Socket;

    .line 263
    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    iput-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mPrintWriter:Ljava/io/PrintWriter;

    .line 265
    const-string v3, "user"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mUserName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mLocalMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 268
    :catch_1
    move-exception v1

    .line 269
    .local v1, "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private executeSendKey(Ljava/lang/String;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 497
    sget-boolean v2, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->isBluetooth:Z

    if-eqz v2, :cond_2

    .line 498
    const-string v2, "img"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "trans"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 499
    :cond_0
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendImage(Ljava/lang/String;)V

    .line 533
    :goto_0
    return-void

    .line 502
    :cond_1
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->sendCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->socketIsConnecting:Z

    if-eqz v2, :cond_3

    .line 506
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    const-string v3, "Waiting for socket connection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 513
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->wifiSocket:Ljava/net/Socket;

    invoke-direct {p0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->isConnectedToSocket(Ljava/net/Socket;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 514
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    const-string v3, "Not connected to socket. Connect again"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->connectToSocket()V

    .line 516
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->executeSendKey(Ljava/lang/String;)V

    .line 518
    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->socketIsConnecting:Z

    .line 520
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mPrintWriter:Ljava/io/PrintWriter;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mPrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->checkError()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 521
    :cond_5
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    const-string v3, "mPrintwriter is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setSelectedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    .line 523
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setLastUsedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    .line 524
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 525
    .local v1, "i":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 526
    invoke-virtual {p0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 529
    .end local v1    # "i":Landroid/content/Intent;
    :cond_6
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->startWriteTimerTask()V

    .line 530
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mPrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mPrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 532
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->stopWriteTimerTask()V

    goto :goto_0
.end method

.method private initializeData(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 180
    if-nez p1, :cond_0

    .line 181
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    const-string v2, "Intent null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string v1, "ip"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ip"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mServerIp:Ljava/lang/String;

    .line 185
    const-string v1, "port"

    const/16 v4, 0x3490

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mServerPort:I

    .line 186
    const-string v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mUserName:Ljava/lang/String;

    .line 187
    const-string v1, "mac"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "mac"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mLocalMac:Ljava/lang/String;

    .line 188
    const-string v1, "bluetoothMacaddress"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "bluetoothMacaddress"

    .line 189
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "bluetoothMacAddress":Ljava/lang/String;
    :goto_4
    const-string v1, "isBluetooth"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "isBluetooth"

    .line 191
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :goto_5
    sput-boolean v1, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->isBluetooth:Z

    .line 192
    sget-boolean v1, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->isBluetooth:Z

    if-nez v1, :cond_6

    .line 193
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    const-string v2, "Connected by wifi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "bluetoothMacAddress":Ljava/lang/String;
    :cond_1
    move-object v1, v2

    .line 184
    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 186
    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 187
    goto :goto_3

    :cond_4
    move-object v0, v2

    .line 189
    goto :goto_4

    .restart local v0    # "bluetoothMacAddress":Ljava/lang/String;
    :cond_5
    move v1, v3

    .line 191
    goto :goto_5

    .line 196
    :cond_6
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    const-string v2, "Connected by bluetooth"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isConnectedToSocket(Ljava/net/Socket;)Z
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 464
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    const/4 v0, 0x1

    .line 467
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendImage(Ljava/lang/String;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 472
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    const-string v2, "sendImage "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :goto_0
    iget-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->imageSocketIsConnecting:Z

    if-eqz v1, :cond_0

    .line 474
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    const-string v2, "Waiting for socket connection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 481
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->imgSocket:Ljava/net/Socket;

    invoke-direct {p0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->isConnectedToSocket(Ljava/net/Socket;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 482
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    const-string v2, "Not connected to socket. Connect again"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :goto_1
    return-void

    .line 485
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->imageSocketIsConnecting:Z

    .line 487
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mImageWriter:Ljava/io/PrintWriter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mImageWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->checkError()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 488
    :cond_2
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    const-string v2, "mImageWriter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->imgSocket:Ljava/net/Socket;

    goto :goto_1

    .line 492
    :cond_3
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mImageWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mImageWriter:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    goto :goto_1
.end method

.method private startWriteTimerTask()V
    .locals 4

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->stopWriteTimerTask()V

    .line 375
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$WriteTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$WriteTimerTask;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$1;)V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->writerTask:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$WriteTimerTask;

    .line 376
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->writeTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->writerTask:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$WriteTimerTask;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 377
    return-void
.end method

.method private stopConnectionThread()V
    .locals 4

    .prologue
    .line 165
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    const-string v2, "stopConnectionThread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->connectionThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->connectionThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 171
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->connectionThread:Ljava/lang/Thread;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V

    .line 172
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->connectionThread:Ljava/lang/Thread;

    .line 173
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    const-string v2, "Connection thread joined"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopWriteTimerTask()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->writerTask:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$WriteTimerTask;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->writerTask:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$WriteTimerTask;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$WriteTimerTask;->cancel()Z

    .line 399
    :cond_0
    return-void
.end method


# virtual methods
.method public closeImageSocket()V
    .locals 2

    .prologue
    .line 275
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    const-string v1, "closeImageSocket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mImageWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mImageWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mImageWriter:Ljava/io/PrintWriter;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->imgSocket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->close(Ljava/net/Socket;)V

    .line 281
    return-void
.end method

.method public connectToImageSocket()V
    .locals 2

    .prologue
    .line 288
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$3;

    invoke-direct {v1, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$3;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 320
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 321
    return-void
.end method

.method public isConnectedToImageSocket()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->imgSocket:Ljava/net/Socket;

    invoke-direct {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->isConnectedToSocket(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->TAG:Ljava/lang/String;

    const-string v1, "OnDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 127
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->cleanUp()V

    .line 128
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "keepAlive"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->alarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->isRegistered:Z

    .line 86
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->initializeData(Landroid/content/Intent;)V

    .line 88
    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$1;

    invoke-direct {v1, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V

    .line 99
    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$1;->start()V

    .line 101
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->stopConnectionThread()V

    .line 102
    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$2;

    invoke-direct {v1, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$2;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->connectionThread:Ljava/lang/Thread;

    .line 108
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->connectionThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 110
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x12c

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->commQueue:Ljava/util/concurrent/BlockingQueue;

    .line 111
    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;

    invoke-direct {v1, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->commHandler:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;

    .line 112
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->commHandler:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->commHandlerThread:Ljava/lang/Thread;

    .line 113
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->commHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 114
    const/4 v1, 0x2

    return v1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->cleanUp()V

    .line 120
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public sendKeyToSocket(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 536
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$4;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$4;->start()V

    .line 547
    return-void
.end method

.method public sendSocket(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "x"    # Ljava/lang/String;
    .param p2, "y"    # Ljava/lang/String;

    .prologue
    .line 351
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "x"    # Ljava/lang/String;
    .param p2, "y"    # Ljava/lang/String;
    .param p3, "z"    # Ljava/lang/String;

    .prologue
    .line 363
    if-eqz p3, :cond_0

    .line 364
    :try_start_0
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->commQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 371
    :goto_0
    return-void

    .line 366
    :cond_0
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->commQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
