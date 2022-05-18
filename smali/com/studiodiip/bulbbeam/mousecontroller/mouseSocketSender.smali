.class public Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;
.super Ljava/lang/Object;
.source "mouseSocketSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$SendToSocketTask;
    }
.end annotation


# static fields
.field public static lastSendTime:J

.field public static receivedAppList:Ljava/lang/String;

.field public static socket:Ljava/net/Socket;


# instance fields
.field SERVERPORT:I

.field SERVER_IP:Ljava/lang/String;

.field private mAccountName:Ljava/lang/String;

.field private mLocalMac:Ljava/lang/String;

.field private mPrintWriter:Ljava/io/PrintWriter;

.field private mUserName:Ljava/lang/String;

.field socketIsConnecting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->lastSendTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "userName"    # Ljava/lang/String;
    .param p5, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->socketIsConnecting:Z

    .line 82
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->SERVER_IP:Ljava/lang/String;

    .line 83
    iput p2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->SERVERPORT:I

    .line 84
    iput-object p3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->mAccountName:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->mUserName:Ljava/lang/String;

    .line 86
    iput-object p5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->mLocalMac:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$1;

    invoke-direct {v0, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;)V

    .line 93
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;)Ljava/io/PrintWriter;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->mPrintWriter:Ljava/io/PrintWriter;

    return-object v0
.end method


# virtual methods
.method public connectToSocket()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 97
    iget-boolean v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->socketIsConnecting:Z

    if-nez v4, :cond_0

    .line 98
    iput-boolean v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->socketIsConnecting:Z

    .line 100
    :try_start_0
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->SERVER_IP:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 101
    .local v3, "serverAddr":Ljava/net/InetAddress;
    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    new-instance v4, Ljava/net/Socket;

    iget v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->SERVERPORT:I

    invoke-direct {v4, v3, v5}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    sput-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->socket:Ljava/net/Socket;

    .line 103
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    sget-object v5, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 104
    .local v2, "in2":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "flushLine":Ljava/lang/String;
    const-string v4, "user"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->mUserName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->mLocalMac:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v4, Ljava/io/PrintWriter;

    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    sget-object v7, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->socket:Ljava/net/Socket;

    .line 114
    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    iput-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->mPrintWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    .end local v1    # "flushLine":Ljava/lang/String;
    .end local v2    # "in2":Ljava/io/BufferedReader;
    .end local v3    # "serverAddr":Ljava/net/InetAddress;
    :cond_0
    :goto_0
    iput-boolean v8, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->socketIsConnecting:Z

    .line 131
    return-void

    .line 118
    .restart local v3    # "serverAddr":Ljava/net/InetAddress;
    :cond_1
    :try_start_1
    const-string v4, "SOCKET"

    const-string v5, "SOCKET IS NOT REACHABLE!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->socketIsConnecting:Z
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 122
    .end local v3    # "serverAddr":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e1":Ljava/net/UnknownHostException;
    iput-boolean v8, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->socketIsConnecting:Z

    .line 124
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v0    # "e1":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 126
    .local v0, "e1":Ljava/io/IOException;
    iput-boolean v8, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->socketIsConnecting:Z

    .line 127
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendKeyToSocket(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 247
    move-object v0, p1

    .line 248
    .local v0, "newKey":Ljava/lang/String;
    move-object v1, p2

    .line 250
    .local v1, "newType":Ljava/lang/String;
    new-instance v2, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$2;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 293
    return-void
.end method

.method public sendSocket(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "x"    # Ljava/lang/String;
    .param p2, "y"    # Ljava/lang/String;

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public sendSocket(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "x"    # Ljava/lang/String;
    .param p2, "y"    # Ljava/lang/String;
    .param p3, "nr"    # I

    .prologue
    .line 134
    move-object v0, p1

    .local v0, "newX":Ljava/lang/String;
    move-object v1, p2

    .line 135
    .local v1, "newY":Ljava/lang/String;
    move v2, p3

    .line 138
    .local v2, "nnr":I
    new-instance v3, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$SendToSocketTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$SendToSocketTask;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$1;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$SendToSocketTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 181
    return-void
.end method

.method public sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "x"    # Ljava/lang/String;
    .param p2, "y"    # Ljava/lang/String;
    .param p3, "z"    # Ljava/lang/String;

    .prologue
    .line 188
    move-object v0, p1

    .local v0, "newX":Ljava/lang/String;
    move-object v1, p2

    .local v1, "newY":Ljava/lang/String;
    move-object v2, p3

    .line 191
    .local v2, "newZ":Ljava/lang/String;
    new-instance v3, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$SendToSocketTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$SendToSocketTask;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$1;)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$SendToSocketTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 244
    return-void
.end method
