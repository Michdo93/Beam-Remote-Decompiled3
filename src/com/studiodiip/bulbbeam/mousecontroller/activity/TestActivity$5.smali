.class Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$5;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->handleProgressBars()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$5;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 470
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$5;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$700(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 471
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onProgressChanged first time ignore"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$5;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$702(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;Z)Z

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    int-to-float v1, p2

    const v2, 0x40d55810    # 6.667f

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 477
    .local v0, "newVolume":I
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$5;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$800(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 481
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$5;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v1, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$802(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;I)I

    .line 483
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v1

    const-string v2, "vol"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$5;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v4}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$800(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    invoke-virtual {v1, v2, v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$5;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$200(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v1

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$5;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$800(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)I

    move-result v2

    iput v2, v1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->volume:I

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 489
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 493
    return-void
.end method
