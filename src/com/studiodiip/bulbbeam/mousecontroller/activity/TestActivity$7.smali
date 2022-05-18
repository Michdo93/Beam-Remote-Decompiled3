.class Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$7;
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
    .line 531
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$7;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 535
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$7;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$1000(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProgressChanged for screen brightnessfirst time ignore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$7;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$1002(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;Z)Z

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    const/16 v0, 0x14

    if-ge p2, v0, :cond_2

    .line 541
    const/4 p2, 0x0

    .line 559
    :goto_1
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$7;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$1100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 562
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionServiceController;->getBinder()Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;

    move-result-object v0

    const-string v1, "screenBrightness"

    .line 563
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 562
    invoke-virtual {v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/service/ConnectionService;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$7;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v0, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$1102(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;I)I

    goto :goto_0

    .line 542
    :cond_2
    const/16 v0, 0x28

    if-ge p2, v0, :cond_3

    .line 543
    const/16 p2, 0x14

    goto :goto_1

    .line 544
    :cond_3
    const/16 v0, 0x50

    if-ge p2, v0, :cond_4

    .line 545
    const/16 p2, 0x32

    goto :goto_1

    .line 546
    :cond_4
    const/16 v0, 0x64

    if-ge p2, v0, :cond_5

    .line 547
    const/16 p2, 0x50

    goto :goto_1

    .line 548
    :cond_5
    const/16 v0, 0x78

    if-ge p2, v0, :cond_6

    .line 549
    const/16 p2, 0x64

    goto :goto_1

    .line 550
    :cond_6
    const/16 v0, 0xa0

    if-ge p2, v0, :cond_7

    .line 551
    const/16 p2, 0x8c

    goto :goto_1

    .line 552
    :cond_7
    const/16 v0, 0xc8

    if-ge p2, v0, :cond_8

    .line 553
    const/16 p2, 0xb4

    goto :goto_1

    .line 554
    :cond_8
    const/16 v0, 0xf0

    if-ge p2, v0, :cond_9

    .line 555
    const/16 p2, 0xc8

    goto :goto_1

    .line 557
    :cond_9
    const/16 p2, 0x100

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 569
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 573
    return-void
.end method
