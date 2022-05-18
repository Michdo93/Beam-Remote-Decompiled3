.class final Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "GalleryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;


# direct methods
.method private constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$GestureListener;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;
    .param p2, "x1"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$1;

    .prologue
    .line 383
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$GestureListener;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 387
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v5, 0x1

    .line 393
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sub-float v3, v6, v7

    .line 394
    .local v3, "diffY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v2, v6, v7

    .line 395
    .local v2, "diffX":F
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$GestureListener;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;

    iget-object v6, v6, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    div-int/lit8 v0, v6, 0x4

    .line 396
    .local v0, "SWIPE_THRESHOLD":I
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$GestureListener;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;

    iget-object v6, v6, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 397
    .local v1, "SWIPE_VELOCITY_THRESHOLD":I
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 398
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float v7, v0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    int-to-float v7, v1

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 399
    const/4 v6, 0x0

    cmpl-float v6, v2, v6

    if-lez v6, :cond_0

    .line 400
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$GestureListener;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;

    invoke-virtual {v6}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->onSwipeRight()V

    .line 411
    .end local v0    # "SWIPE_THRESHOLD":I
    .end local v1    # "SWIPE_VELOCITY_THRESHOLD":I
    .end local v2    # "diffX":F
    .end local v3    # "diffY":F
    :goto_0
    return v5

    .line 403
    .restart local v0    # "SWIPE_THRESHOLD":I
    .restart local v1    # "SWIPE_VELOCITY_THRESHOLD":I
    .restart local v2    # "diffX":F
    .restart local v3    # "diffY":F
    :cond_0
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$GestureListener;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;

    invoke-virtual {v6}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->onSwipeLeft()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 408
    .end local v0    # "SWIPE_THRESHOLD":I
    .end local v1    # "SWIPE_VELOCITY_THRESHOLD":I
    .end local v2    # "diffX":F
    .end local v3    # "diffY":F
    :catch_0
    move-exception v4

    .line 409
    .local v4, "exception":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 411
    .end local v4    # "exception":Ljava/lang/Exception;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method
