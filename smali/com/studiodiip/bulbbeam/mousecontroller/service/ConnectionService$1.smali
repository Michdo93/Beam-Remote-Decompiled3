.class Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$1;
.super Ljava/lang/Thread;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->onStartCommand(Landroid/content/Intent;II)I
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
    .line 88
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V

    .line 93
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$202(Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/BlockingQueue;

    .line 94
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-direct {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V

    invoke-static {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$302(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;)Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;

    .line 95
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$300(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$DummyCommHandler;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$402(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 96
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$400(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 98
    :cond_0
    return-void
.end method
