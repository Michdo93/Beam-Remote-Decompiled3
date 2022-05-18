.class Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;
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
    name = "DummyCommHandler"
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


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;->running:Z

    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;->msg:Ljava/lang/String;

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;->msgToExecute:Ljava/util/List;

    return-void
.end method

.method static synthetic access$700(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;

    .prologue
    .line 572
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;->stopRunning()V

    return-void
.end method

.method private stopRunning()V
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;->running:Z

    .line 579
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 583
    :cond_0
    iget-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;->running:Z

    if-eqz v2, :cond_3

    .line 584
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;->msgToExecute:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 585
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$200()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 586
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$200()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;->msgToExecute:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 592
    :goto_0
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;->msgToExecute:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    const/4 v1, 0x0

    .local v1, "m":I
    :goto_1
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;->msgToExecute:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$2100(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)Ljava/io/PrintWriter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 597
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;->msgToExecute:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;->msg:Ljava/lang/String;

    .line 598
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$2100(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)Ljava/io/PrintWriter;

    move-result-object v2

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;->msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 588
    .end local v1    # "m":I
    :cond_2
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 602
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DummyCommHandler thread stopped "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;->running:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-void
.end method
