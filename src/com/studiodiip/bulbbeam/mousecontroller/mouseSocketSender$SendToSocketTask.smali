.class Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$SendToSocketTask;
.super Landroid/os/AsyncTask;
.source "mouseSocketSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendToSocketTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;


# direct methods
.method private constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$SendToSocketTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;
    .param p2, "x1"    # Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$SendToSocketTask;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$SendToSocketTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 9
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 39
    :goto_0
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$SendToSocketTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    iget-boolean v3, v3, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->socketIsConnecting:Z

    if-eqz v3, :cond_0

    .line 41
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 50
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$SendToSocketTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    iput-boolean v6, v3, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->socketIsConnecting:Z

    .line 51
    const-string v2, ""

    .line 52
    .local v2, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    aget-object v3, p1, v8

    if-eqz v3, :cond_1

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$SendToSocketTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    invoke-static {v3}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->access$000(Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->lastSendTime:J

    .line 77
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "str":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v3, 0x0

    return-object v3

    .line 71
    :cond_3
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$SendToSocketTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    iget-boolean v3, v3, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->socketIsConnecting:Z

    if-nez v3, :cond_2

    .line 72
    const-string v3, "SOCKET"

    const-string v4, "going to reconnect to server"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$SendToSocketTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    invoke-virtual {v3}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->connectToSocket()V

    .line 74
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$SendToSocketTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    aget-object v4, p1, v6

    aget-object v5, p1, v7

    invoke-virtual {v3, v4, v5}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
