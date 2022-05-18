.class public Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;
.super Landroid/app/Fragment;
.source "GalleryFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$GestureListener;,
        Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$IGalleryFragmentListener;
    }
.end annotation


# static fields
.field private static final ARG_KEY_FEED_ITEM:Ljava/lang/String; = "somekey"

.field private static final DRAG:I = 0x1

.field private static final NONE:I = 0x0

.field private static final STATE_CURRENT_POS:Ljava/lang/String; = "currentPos"

.field private static final STATE_IMAGE_LIST:Ljava/lang/String; = "imageList"

.field private static final TAG:Ljava/lang/String;

.field private static final ZOOM:I = 0x2

.field public static currentscale:F

.field public static mMatrix:Landroid/graphics/Matrix;


# instance fields
.field private MODE:I

.field private currentPos:I

.field dragMatrixValues:[F

.field public fullScreenView:Landroid/widget/ImageView;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gridView:Landroid/widget/GridView;

.field lastDelta:Landroid/graphics/PointF;

.field lastScale:F

.field private mContext:Landroid/content/Context;

.field private mGalleryFragmentListener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$IGalleryFragmentListener;

.field private mImageAdpater:Lcom/studiodiip/bulbbeam/mousecontroller/util/ImageAdapter;

.field private mImagePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowImage:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

.field mid:Landroid/graphics/PointF;

.field oldDist:F

.field oldScaleEvent:F

.field savedMatrix:Landroid/graphics/Matrix;

.field start:Landroid/graphics/PointF;

.field valuesSE:[F

.field zoomValues:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mMatrix:Landroid/graphics/Matrix;

    .line 57
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->currentscale:F

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    const/high16 v1, 0x3f800000    # 1.0f

    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mImagePathList:Ljava/util/ArrayList;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->currentPos:I

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->savedMatrix:Landroid/graphics/Matrix;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->MODE:I

    .line 54
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->start:Landroid/graphics/PointF;

    .line 55
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->lastDelta:Landroid/graphics/PointF;

    .line 56
    iput v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->lastScale:F

    .line 58
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mid:Landroid/graphics/PointF;

    .line 59
    iput v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->oldDist:F

    .line 239
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->dragMatrixValues:[F

    .line 277
    iput v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->oldScaleEvent:F

    .line 278
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->valuesSE:[F

    .line 279
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->zoomValues:[F

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;

    .prologue
    .line 34
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->currentPos:I

    return v0
.end method

.method static synthetic access$102(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->currentPos:I

    return p1
.end method

.method static synthetic access$200(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->showImageInFullScreen(I)V

    return-void
.end method

.method private limitDrag(Landroid/graphics/Matrix;)V
    .locals 12
    .param p1, "m"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x2

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, -0x40800000    # -1.0f

    .line 241
    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->dragMatrixValues:[F

    invoke-virtual {p1, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 242
    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->dragMatrixValues:[F

    aget v3, v5, v10

    .line 243
    .local v3, "translateX":F
    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->dragMatrixValues:[F

    aget v4, v5, v11

    .line 244
    .local v4, "translateY":F
    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->dragMatrixValues:[F

    const/4 v6, 0x0

    aget v2, v5, v6

    .line 245
    .local v2, "scale":F
    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v1, v5

    .line 246
    .local v1, "imageWidth":F
    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v0, v5

    .line 248
    .local v0, "imageHeight":F
    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_0

    mul-float v5, v1, v2

    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 249
    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    int-to-float v3, v5

    .line 251
    :cond_0
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float v6, v1, v2

    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getRight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 252
    mul-float v5, v1, v2

    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getRight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float v3, v5, v8

    .line 254
    :cond_1
    mul-float v5, v1, v2

    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 255
    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getRight()I

    move-result v5

    int-to-float v5, v5

    mul-float v6, v1, v2

    sub-float/2addr v5, v6

    div-float v3, v5, v9

    .line 259
    :cond_2
    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    mul-float v5, v0, v2

    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3

    .line 260
    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    int-to-float v4, v5

    .line 263
    :cond_3
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float v6, v0, v2

    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBottom()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 264
    mul-float v5, v0, v2

    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getBottom()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float v4, v5, v8

    .line 266
    :cond_4
    mul-float v5, v0, v2

    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    .line 267
    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBottom()I

    move-result v5

    int-to-float v5, v5

    mul-float v6, v0, v2

    sub-float/2addr v5, v6

    div-float v4, v5, v9

    .line 270
    :cond_5
    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->dragMatrixValues:[F

    aput v3, v5, v10

    .line 271
    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->dragMatrixValues:[F

    aput v4, v5, v11

    .line 274
    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->dragMatrixValues:[F

    invoke-virtual {p1, v5}, Landroid/graphics/Matrix;->setValues([F)V

    .line 275
    return-void
.end method

.method private loadImages(Landroid/content/Context;)V
    .locals 14
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 77
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 79
    .local v12, "isSDPresent":Ljava/lang/Boolean;
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "No sd card mounted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v10, "imageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 85
    .local v2, "columns":[Ljava/lang/String;
    const-string v13, "datetaken DESC"

    .line 87
    .local v13, "orderBy":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "datetaken DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 91
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 92
    .local v6, "count":I
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total images "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_1

    .line 96
    invoke-interface {v7, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 97
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 99
    .local v8, "dataColumnIndex":I
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 101
    .local v11, "imgPath":Ljava/lang/String;
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 103
    .end local v8    # "dataColumnIndex":I
    .end local v11    # "imgPath":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setImagePathList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 374
    const-string v2, "MOTION_EVENT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " X0-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", X1-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Y0-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Y1-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 376
    .local v0, "x":F
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 377
    .local v1, "y":F
    div-float v2, v0, v6

    div-float v3, v1, v6

    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 378
    const-string v2, "MOTION_EVENT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " x/2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-float v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",y/2 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-float v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;

    invoke-direct {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;-><init>()V

    .line 71
    .local v1, "f":Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;
    const-string v2, "somekey"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    invoke-virtual {v1, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->setArguments(Landroid/os/Bundle;)V

    .line 73
    return-object v1
.end method

.method private showImageInFullScreen(I)V
    .locals 6
    .param p1, "currentPos"    # I

    .prologue
    .line 156
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showImageInFullScreen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->gridView:Landroid/widget/GridView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mShowImage:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mImagePathList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    .line 160
    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    .line 159
    invoke-virtual/range {v0 .. v5}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;IIZ)V

    .line 161
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    return-void
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 367
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 368
    .local v0, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 369
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method


# virtual methods
.method public closeFullScreenView()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->gridView:Landroid/widget/GridView;

    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->gridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->currentPos:I

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 132
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "onActivityCreated "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz p1, :cond_0

    .line 134
    const-string v0, "currentPos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->currentPos:I

    .line 135
    const-string v0, "imageList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mImagePathList:Ljava/util/ArrayList;

    .line 136
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->currentPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", list size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mImagePathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->currentPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 138
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "No full screen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$1;

    invoke-direct {v1, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 166
    check-cast p1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$IGalleryFragmentListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mGalleryFragmentListener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$IGalleryFragmentListener;

    .line 167
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "save"    # Landroid/os/Bundle;

    .prologue
    .line 125
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 173
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const v1, 0x7f03001f

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 175
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mContext:Landroid/content/Context;

    .line 176
    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mShowImage:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    .line 178
    const v1, 0x7f0c007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->gridView:Landroid/widget/GridView;

    .line 179
    const v1, 0x7f0c007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    .line 180
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 181
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$GestureListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$GestureListener;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->gestureDetector:Landroid/view/GestureDetector;

    .line 184
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getImagePathList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mImagePathList:Ljava/util/ArrayList;

    .line 185
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mImagePathList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->loadImages(Landroid/content/Context;)V

    .line 187
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getImagePathList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mImagePathList:Ljava/util/ArrayList;

    .line 189
    :cond_0
    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/ImageAdapter;

    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mImagePathList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ImageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mImageAdpater:Lcom/studiodiip/bulbbeam/mousecontroller/util/ImageAdapter;

    .line 190
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->gridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mImageAdpater:Lcom/studiodiip/bulbbeam/mousecontroller/util/ImageAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->gridView:Landroid/widget/GridView;

    new-instance v2, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$2;

    invoke-direct {v2, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$2;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 203
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 111
    const-string v0, "currentPos"

    iget v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->currentPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    const-string v0, "imageList"

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mImagePathList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 113
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 118
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mShowImage:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mShowImage:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->stopSendingImages()V

    .line 121
    :cond_0
    return-void
.end method

.method public onSwipeLeft()V
    .locals 6

    .prologue
    .line 227
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "onSwipeLeft"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->currentPos:I

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mImagePathList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 229
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "Last Image"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    return-void

    .line 233
    :cond_0
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->currentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->currentPos:I

    .line 234
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mShowImage:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mImagePathList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->currentPos:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    .line 235
    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    .line 234
    invoke-virtual/range {v0 .. v5}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;IIZ)V

    goto :goto_0
.end method

.method public onSwipeRight()V
    .locals 6

    .prologue
    .line 216
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "onSwipeRight"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->currentPos:I

    if-nez v0, :cond_0

    .line 218
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->TAG:Ljava/lang/String;

    const-string v1, "First Image"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_0
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->currentPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->currentPos:I

    .line 222
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mShowImage:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mImagePathList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->currentPos:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    .line 223
    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    .line 222
    invoke-virtual/range {v0 .. v5}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;IIZ)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "v"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->gestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-object/from16 v21, p1

    .line 283
    check-cast v21, Landroid/widget/ImageView;

    .line 285
    .local v21, "view":Landroid/widget/ImageView;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->lastDelta:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    sub-float v5, v4, v22

    .line 286
    .local v5, "rdx":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->lastDelta:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    sub-float v6, v4, v22

    .line 288
    .local v6, "rdy":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    .line 357
    :pswitch_0
    const/4 v4, 0x1

    .line 363
    :goto_0
    return v4

    .line 290
    :pswitch_1
    new-instance v4, Landroid/graphics/Matrix;

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    sput-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mMatrix:Landroid/graphics/Matrix;

    .line 291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->savedMatrix:Landroid/graphics/Matrix;

    sget-object v22, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 292
    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->valuesSE:[F

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->valuesSE:[F

    const/16 v22, 0x0

    aget v4, v4, v22

    move-object/from16 v0, p0

    iput v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->oldScaleEvent:F

    .line 294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->start:Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 295
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->MODE:I

    .line 359
    :cond_0
    :goto_1
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->lastDelta:Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/PointF;->x:F

    .line 360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->lastDelta:Landroid/graphics/PointF;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    iput v0, v4, Landroid/graphics/PointF;->y:F

    .line 361
    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->limitDrag(Landroid/graphics/Matrix;)V

    .line 362
    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 363
    const/4 v4, 0x1

    goto :goto_0

    .line 298
    :pswitch_3
    sget v4, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->currentscale:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->lastScale:F

    .line 299
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->spacing(Landroid/view/MotionEvent;)F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->oldDist:F

    .line 301
    move-object/from16 v0, p0

    iget v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->oldDist:F

    const/high16 v22, 0x41200000    # 10.0f

    cmpl-float v4, v4, v22

    if-lez v4, :cond_0

    .line 302
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->savedMatrix:Landroid/graphics/Matrix;

    sget-object v22, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mid:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 304
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->MODE:I

    goto :goto_1

    .line 310
    :pswitch_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->lastScale:F

    sput v4, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->currentscale:F

    .line 311
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->MODE:I

    goto :goto_1

    .line 314
    :pswitch_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->MODE:I

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v4, v0, :cond_1

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->start:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    sub-float v10, v4, v22

    .line 316
    .local v10, "dx":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->start:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    sub-float v11, v4, v22

    .line 317
    .local v11, "dy":F
    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->savedMatrix:Landroid/graphics/Matrix;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 318
    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 319
    const/4 v7, 0x0

    .line 321
    .local v7, "deltaScale":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mGalleryFragmentListener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$IGalleryFragmentListener;

    if-eqz v4, :cond_0

    .line 322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mGalleryFragmentListener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$IGalleryFragmentListener;

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, -0x40800000    # -1.0f

    invoke-interface/range {v4 .. v9}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$IGalleryFragmentListener;->onImageTranslated(FFFFF)V

    goto/16 :goto_1

    .line 326
    .end local v7    # "deltaScale":F
    .end local v10    # "dx":F
    .end local v11    # "dy":F
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->MODE:I

    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v4, v0, :cond_0

    .line 327
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->spacing(Landroid/view/MotionEvent;)F

    move-result v16

    .line 328
    .local v16, "newDist":F
    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v4, v16, v4

    if-lez v4, :cond_0

    .line 329
    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->savedMatrix:Landroid/graphics/Matrix;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 330
    sget v4, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->currentscale:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->oldDist:F

    move/from16 v22, v0

    div-float v22, v16, v22

    mul-float v19, v4, v22

    .line 331
    .local v19, "scaleBeam":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->oldDist:F

    div-float v18, v16, v4

    .line 332
    .local v18, "scale":F
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getCurrentMinZoomLevel()F

    move-result v17

    .line 333
    .local v17, "originalZoom":F
    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mid:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mid:Landroid/graphics/PointF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    move/from16 v0, v18

    move/from16 v1, v18

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 334
    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->zoomValues:[F

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 335
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->zoomValues:[F

    const/16 v22, 0x0

    aget v20, v4, v22

    .line 336
    .local v20, "scaleMatrix":F
    cmpg-float v4, v20, v17

    if-gez v4, :cond_2

    .line 337
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->zoomValues:[F

    const/16 v22, 0x0

    aput v17, v4, v22

    .line 338
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->zoomValues:[F

    const/16 v22, 0x4

    aput v17, v4, v22

    .line 339
    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->zoomValues:[F

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 341
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->oldScaleEvent:F

    sub-float v7, v20, v4

    .line 342
    .restart local v7    # "deltaScale":F
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->oldScaleEvent:F

    .line 343
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mGalleryFragmentListener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$IGalleryFragmentListener;

    if-eqz v4, :cond_3

    .line 344
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v13, v4

    .line 345
    .local v13, "imageWidth":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->fullScreenView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v12, v4

    .line 346
    .local v12, "imageHeight":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mid:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->zoomValues:[F

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget v22, v22, v23

    sub-float v4, v4, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->zoomValues:[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    div-float v14, v4, v22

    .line 347
    .local v14, "imageX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mid:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->zoomValues:[F

    move-object/from16 v22, v0

    const/16 v23, 0x5

    aget v22, v22, v23

    sub-float v4, v4, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->zoomValues:[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    div-float v15, v4, v22

    .line 348
    .local v15, "imageY":F
    div-float v8, v14, v13

    .line 349
    .local v8, "beamPx":F
    div-float v9, v15, v12

    .line 350
    .local v9, "beamPY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mGalleryFragmentListener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$IGalleryFragmentListener;

    invoke-interface/range {v4 .. v9}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment$IGalleryFragmentListener;->onImageTranslated(FFFFF)V

    .line 352
    .end local v8    # "beamPx":F
    .end local v9    # "beamPY":F
    .end local v12    # "imageHeight":F
    .end local v13    # "imageWidth":F
    .end local v14    # "imageX":F
    .end local v15    # "imageY":F
    :cond_3
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->lastScale:F

    goto/16 :goto_1

    .line 288
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
