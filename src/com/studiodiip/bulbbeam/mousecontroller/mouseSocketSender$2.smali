.class Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$2;
.super Ljava/lang/Thread;
.source "mouseSocketSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendKeyToSocket(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

.field final synthetic val$newKey:Ljava/lang/String;

.field final synthetic val$newType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    iput-object p2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$2;->val$newType:Ljava/lang/String;

    iput-object p3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$2;->val$newKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 254
    :goto_0
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    iget-boolean v3, v3, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->socketIsConnecting:Z

    if-eqz v3, :cond_0

    .line 256
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 263
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

    .line 264
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->socketIsConnecting:Z

    .line 265
    const-string v2, ""

    .line 266
    .local v2, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$2;->val$newType:Ljava/lang/String;

    const-string v4, "led"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$2;->val$newKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    invoke-static {v3}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->access$000(Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->lastSendTime:J

    .line 290
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 268
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v2    # "str":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$2;->val$newType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$2;->val$newKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 284
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "str":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    iget-boolean v3, v3, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->socketIsConnecting:Z

    if-nez v3, :cond_1

    .line 286
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    invoke-virtual {v3}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->connectToSocket()V

    .line 287
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$2;->val$newKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender$2;->val$newType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendKeyToSocket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
