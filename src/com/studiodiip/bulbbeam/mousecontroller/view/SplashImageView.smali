.class public Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;
.super Landroid/widget/ImageView;
.source "SplashImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;->init()V

    .line 20
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "SplashImageView"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method private updateAnimationState(Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "running"    # Z

    .prologue
    .line 67
    instance-of v1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 68
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 69
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz p2, :cond_1

    .line 70
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 75
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    :goto_0
    return-void

    .line 72
    .restart local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method

.method private updateAnimationsState()V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 39
    .local v0, "running":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;->startAnimation()V

    .line 45
    :goto_1
    return-void

    .line 38
    .end local v0    # "running":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 43
    .restart local v0    # "running":Z
    :cond_1
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;->stopAnimation()V

    goto :goto_1
.end method


# virtual methods
.method public isRunning()Z
    .locals 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 59
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 60
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 61
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    .line 63
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 48
    const v0, 0x7f020059

    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;->setBackgroundResource(I)V

    .line 49
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;->updateAnimationState(Landroid/graphics/drawable/Drawable;Z)V

    .line 50
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;->updateAnimationState(Landroid/graphics/drawable/Drawable;Z)V

    .line 54
    const v0, 0x7f020087

    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/SplashImageView;->setBackgroundResource(I)V

    .line 55
    return-void
.end method
