.class public Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;
.super Landroid/app/Fragment;
.source "ProjectorLightFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$keyPressListener;
    }
.end annotation


# static fields
.field private static final ARG_KEY_FEED_ITEM:Ljava/lang/String; = "somekey"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private btnHideProjectorLight:Landroid/view/View;

.field private currentState:I

.field private lightPercentage:F

.field public listener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$keyPressListener;

.field private seekBar:Landroid/widget/SeekBar;

.field private touchpad:Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;)Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->touchpad:Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;

    return-object v0
.end method


# virtual methods
.method public getLightPercentage()F
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->lightPercentage:F

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->TAG:Ljava/lang/String;

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 51
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->lightPercentage:F

    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->setLightPercentage(F)V

    .line 52
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->TAG:Ljava/lang/String;

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    if-eqz p1, :cond_0

    move-object v1, p1

    .line 43
    .local v1, "bundle":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 44
    .local v0, "activity":Landroid/app/Activity;
    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$keyPressListener;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->setKeyPressListener(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$keyPressListener;)V

    .line 45
    return-void

    .line 42
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const v1, 0x7f030022

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0c0085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->btnHideProjectorLight:Landroid/view/View;

    .line 61
    const v1, 0x7f0c0083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->touchpad:Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;

    .line 62
    const v1, 0x7f0c0084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->seekBar:Landroid/widget/SeekBar;

    .line 64
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 208
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 202
    const-string v0, "somekey"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 147
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$2;

    invoke-direct {v1, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$2;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 196
    return-void
.end method

.method public setKeyPressListener(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$keyPressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$keyPressListener;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->listener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$keyPressListener;

    .line 36
    return-void
.end method

.method public setLightPercentage(F)V
    .locals 5
    .param p1, "percentage"    # F

    .prologue
    .line 68
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLightPercentage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->lightPercentage:F

    .line 70
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->touchpad:Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;

    if-nez v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->touchpad:Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;

    invoke-virtual {v2, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->setDotWidthPercentage(F)V

    .line 74
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->seekBar:Landroid/widget/SeekBar;

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, p1

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 75
    const v2, 0x40533333    # 3.3f

    mul-float/2addr v2, p1

    float-to-int v1, v2

    .line 76
    .local v1, "newLightState":I
    iget v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->currentState:I

    if-eq v2, v1, :cond_0

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "led;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "ledString":Ljava/lang/String;
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->listener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$keyPressListener;

    if-eqz v2, :cond_2

    .line 79
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->listener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$keyPressListener;

    invoke-interface {v2, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$keyPressListener;->onKeyPress(Ljava/lang/CharSequence;)V

    .line 80
    :cond_2
    iput v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->currentState:I

    goto :goto_0
.end method

.method public setSwitchToProjectorEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 104
    sget-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSwitchToProjectorEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "root":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0c0085

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 109
    .local v1, "switchButton":Landroid/view/View;
    if-eqz p1, :cond_1

    .line 110
    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 111
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1;

    invoke-direct {v3, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    :goto_0
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->btnHideProjectorLight:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->btnHideProjectorLight:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 142
    .end local v1    # "switchButton":Landroid/view/View;
    :cond_0
    return-void

    .line 134
    .restart local v1    # "switchButton":Landroid/view/View;
    :cond_1
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
