.class Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$3;
.super Ljava/lang/Object;
.source "ConnectionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->connectToImageSocket()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 291
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "connectToImageSocket "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$000()Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Connected by wifi"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$900(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image socket already connecting"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 301
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$902(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Z)Z

    .line 302
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-static {v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$1000(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)Ljava/net/Socket;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$1100(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Ljava/net/Socket;)V

    .line 303
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-static {v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$1200(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$1300(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$1002(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Ljava/net/Socket;)Ljava/net/Socket;

    .line 304
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$1000(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)Ljava/net/Socket;

    move-result-object v2

    if-nez v2, :cond_2

    .line 305
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Image socket is not reachable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$902(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 318
    .end local v0    # "e1":Ljava/io/IOException;
    :goto_1
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-static {v2, v7}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$902(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Z)Z

    goto :goto_0

    .line 309
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Image socket connected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    .line 311
    invoke-static {v6}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$1000(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 310
    invoke-static {v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$1402(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Ljava/io/PrintWriter;)Ljava/io/PrintWriter;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 315
    :catch_1
    move-exception v1

    .line 316
    .local v1, "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
