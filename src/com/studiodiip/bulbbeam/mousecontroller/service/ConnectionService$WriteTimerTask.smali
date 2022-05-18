.class Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$WriteTimerTask;
.super Ljava/util/TimerTask;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriteTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;


# direct methods
.method private constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$WriteTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;
    .param p2, "x1"    # Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$1;

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$WriteTimerTask;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 382
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Write timed out!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$WriteTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-static {v1, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$1602(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;Ljava/io/PrintWriter;)Ljava/io/PrintWriter;

    .line 384
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$WriteTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$1700(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V

    .line 385
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$WriteTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->access$1800(Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;)V

    .line 386
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setSelectedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    .line 387
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setLastUsedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    .line 388
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$WriteTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    const-class v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 390
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService$WriteTimerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    invoke-virtual {v1, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->startActivity(Landroid/content/Intent;)V

    .line 391
    return-void
.end method
