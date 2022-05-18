.class Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$5;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$5;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 556
    const-string v0, "alarmReceiver"

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$5;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 560
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "action":Ljava/lang/String;
    const-string v1, "keepAlive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$5;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$2100(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)Ljava/io/PrintWriter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 563
    const-string v1, "alarmReceiver"

    const-string v2, "active"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$200()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    const-string v2, "ka"

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    const-string v1, "alarmReceiver"

    const-string v2, "pw == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
