.class public Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;
.super Landroid/view/animation/Animation;
.source "FlipAnimation.java"


# instance fields
.field private camera:Landroid/graphics/Camera;

.field private centerX:F

.field private centerY:F

.field private forward:Z

.field private fromView:Landroid/view/View;

.field private toView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "fromView"    # Landroid/view/View;
    .param p2, "toView"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->forward:Z

    .line 31
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->fromView:Landroid/view/View;

    .line 32
    iput-object p2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->toView:Landroid/view/View;

    .line 34
    const-wide/16 v0, 0x2bc

    invoke-virtual {p0, v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->setDuration(J)V

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->setFillAfter(Z)V

    .line 36
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    .line 58
    float-to-double v4, p1

    mul-double v2, v6, v4

    .line 59
    .local v2, "radians":D
    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v2

    div-double/2addr v4, v6

    double-to-float v0, v4

    .line 65
    .local v0, "degrees":F
    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    .line 66
    const/high16 v4, 0x43340000    # 180.0f

    sub-float/2addr v0, v4

    .line 67
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->fromView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->toView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :cond_0
    iget-boolean v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->forward:Z

    if-eqz v4, :cond_1

    .line 72
    neg-float v0, v0

    .line 74
    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 75
    .local v1, "matrix":Landroid/graphics/Matrix;
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->save()V

    .line 76
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {v4, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 77
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {v4, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 78
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->camera:Landroid/graphics/Camera;

    invoke-virtual {v4}, Landroid/graphics/Camera;->restore()V

    .line 79
    iget v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->centerX:F

    neg-float v4, v4

    iget v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->centerY:F

    neg-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 80
    iget v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->centerX:F

    iget v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->centerY:F

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 81
    return-void
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 49
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->centerX:F

    .line 50
    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->centerY:F

    .line 51
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->camera:Landroid/graphics/Camera;

    .line 52
    return-void
.end method

.method public reverse()V
    .locals 2

    .prologue
    .line 40
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->forward:Z

    .line 41
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->toView:Landroid/view/View;

    .line 42
    .local v0, "switchView":Landroid/view/View;
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->fromView:Landroid/view/View;

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->toView:Landroid/view/View;

    .line 43
    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/FlipAnimation;->fromView:Landroid/view/View;

    .line 44
    return-void
.end method
