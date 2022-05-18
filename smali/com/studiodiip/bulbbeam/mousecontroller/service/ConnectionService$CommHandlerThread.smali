.class Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;
.super Ljava/lang/Object;
.source "ConnectionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommHandlerThread"
.end annotation


# instance fields
.field msg:Ljava/lang/String;

.field msgToExecute:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile running:Z

.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

.field totalMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->running:Z

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->msg:Ljava/lang/String;

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->msgToExecute:Ljava/util/List;

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->totalMessages:Ljava/util/List;

    return-void
.end method

.method static synthetic access$600(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->stopRunning()V

    return-void
.end method

.method private stopRunning()V
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->running:Z

    .line 409
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 413
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->running:Z

    if-eqz v4, :cond_9

    .line 414
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->msgToExecute:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 415
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->totalMessages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 416
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$1900()Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 417
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$1900()Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->totalMessages:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 423
    :goto_1
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->totalMessages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 426
    const/4 v1, 0x0

    .line 427
    .local v1, "lastImg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 428
    .local v2, "lastImgTrans":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "m":I
    :goto_2
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->totalMessages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 429
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->totalMessages:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "img"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 430
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->totalMessages:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "lastImg":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 428
    .restart local v1    # "lastImg":Ljava/lang/String;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 419
    .end local v1    # "lastImg":Ljava/lang/String;
    .end local v2    # "lastImgTrans":Ljava/lang/String;
    .end local v3    # "m":I
    :cond_1
    const-wide/16 v4, 0xa

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 431
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "lastImg":Ljava/lang/String;
    .restart local v2    # "lastImgTrans":Ljava/lang/String;
    .restart local v3    # "m":I
    :cond_2
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->totalMessages:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "trans"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 432
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->totalMessages:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "lastImgTrans":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "lastImgTrans":Ljava/lang/String;
    goto :goto_3

    .line 434
    :cond_3
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->msgToExecute:Ljava/util/List;

    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->totalMessages:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 437
    :cond_4
    if-eqz v1, :cond_5

    .line 438
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->msgToExecute:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_5
    if-eqz v2, :cond_6

    .line 441
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->msgToExecute:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_6
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->msgToExecute:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_7

    .line 444
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->msgToExecute:Ljava/util/List;

    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->totalMessages:Ljava/util/List;

    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->totalMessages:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_7
    const/4 v3, 0x0

    :goto_4
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->msgToExecute:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 446
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->msgToExecute:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->msg:Ljava/lang/String;

    .line 447
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->msg:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$2000(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Ljava/lang/String;)V

    .line 445
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 449
    :cond_8
    if-eqz v1, :cond_0

    .line 452
    const-wide/16 v4, 0x5dc

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 453
    :catch_1
    move-exception v0

    .line 454
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 459
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "lastImg":Ljava/lang/String;
    .end local v2    # "lastImgTrans":Ljava/lang/String;
    .end local v3    # "m":I
    :cond_9
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thread stopped "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$CommHandlerThread;->running:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    return-void
.end method
