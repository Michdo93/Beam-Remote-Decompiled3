.class Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$2;
.super Ljava/lang/Object;
.source "ProjectorLightFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

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
    const/high16 v2, 0x42c80000    # 100.0f

    .line 150
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->access$000(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;)Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;

    move-result-object v0

    int-to-float v1, p2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->setDotWidthPercentage(F)V

    .line 151
    const/16 v0, 0x11

    if-ge p2, v0, :cond_0

    .line 152
    const/4 p2, 0x0

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

    int-to-float v1, p2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->setLightPercentage(F)V

    .line 161
    return-void

    .line 153
    :cond_0
    const/16 v0, 0x32

    if-ge p2, v0, :cond_1

    .line 154
    const/16 p2, 0x21

    goto :goto_0

    .line 155
    :cond_1
    const/16 v0, 0x53

    if-ge p2, v0, :cond_2

    .line 156
    const/16 p2, 0x42

    goto :goto_0

    .line 158
    :cond_2
    const/16 p2, 0x64

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 189
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 193
    return-void
.end method
