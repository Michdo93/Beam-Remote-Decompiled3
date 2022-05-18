.class public Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;
.super Ljava/lang/Object;
.source "ShowImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$AsyncDrawable;,
        Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;,
        Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;,
        Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$IShowImageListener;
    }
.end annotation


# static fields
.field private static final MAX_BEAM_HEIGHT:I = 0x26c

.field private static final MAX_BEAM_WIDTH:I = 0x4b0

.field private static final MAX_BITMAP_HEIGHT:I = 0x800

.field private static final MAX_BITMAP_WIDTH:I = 0x800


# instance fields
.field private imageListener:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$IShowImageListener;

.field private mImageHeight:I

.field private mImageWidth:I

.field private volatile sendImagesQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private sendImagesRunnable:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;

.field private sendImagesThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    instance-of v0, p1, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$IShowImageListener;

    if-eqz v0, :cond_0

    .line 117
    check-cast p1, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$IShowImageListener;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->imageListener:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$IShowImageListener;

    .line 119
    :cond_0
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->sendImagesQueue:Ljava/util/concurrent/BlockingQueue;

    .line 120
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;

    invoke-direct {v0, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;)V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->sendImagesRunnable:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;

    .line 121
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->sendImagesRunnable:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->sendImagesThread:Ljava/lang/Thread;

    .line 122
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->sendImagesThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 123
    return-void
.end method

.method static synthetic access$100(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->sendImagesQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;Landroid/graphics/Bitmap;I)I
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->calculateHeight(Landroid/graphics/Bitmap;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;Landroid/graphics/Bitmap;I)I
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->calculateWidth(Landroid/graphics/Bitmap;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;)Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$IShowImageListener;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->imageListener:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$IShowImageListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->calculateBeamWidth(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->calculateBeamHeight(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;)I
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    .prologue
    .line 27
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->mImageWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;)I
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    .prologue
    .line 27
    iget v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->mImageHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;ZLandroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->addBitMapToQueue(ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$800(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;Landroid/widget/ImageView;)Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Landroid/graphics/Bitmap;
    .param p3, "x3"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method private addBitMapToQueue(ZLandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "isFullScreen"    # Z
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 144
    if-nez p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    if-eqz p2, :cond_0

    .line 150
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->sendImagesQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private calculateBeamHeight(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x4b0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private calculateBeamWidth(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit16 v0, v0, 0x26c

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private calculateHeight(Landroid/graphics/Bitmap;I)I
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private calculateWidth(Landroid/graphics/Bitmap;I)I
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "height"    # I

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private cancelPotentialWork(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v2, 0x1

    .line 309
    invoke-direct {p0, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;

    move-result-object v1

    .line 311
    .local v1, "bitmapWorkerTask":Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;
    if-eqz v1, :cond_1

    .line 312
    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->access$1200(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "bitmapData":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 316
    :cond_0
    invoke-virtual {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->cancel(Z)Z

    .line 323
    .end local v0    # "bitmapData":Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 319
    .restart local v0    # "bitmapData":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 327
    if-eqz p1, :cond_0

    .line 328
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 329
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$AsyncDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 330
    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$AsyncDrawable;

    .line 331
    .local v0, "downloadedDrawable":Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$AsyncDrawable;
    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$AsyncDrawable;->getBitmapDownloaderTask()Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;

    move-result-object v2

    .line 334
    .end local v0    # "downloadedDrawable":Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$AsyncDrawable;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .locals 5
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "isFullScreen"    # Z

    .prologue
    const/4 v4, 0x0

    .line 173
    if-nez p3, :cond_0

    .line 174
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 186
    :goto_0
    return-void

    .line 177
    :cond_0
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 178
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 179
    const/16 v2, 0x9

    new-array v1, v2, [F

    .line 180
    .local v1, "values":[F
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 181
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 182
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setCurrentMinZoomLevel(F)V

    .line 183
    aget v2, v1, v4

    sput v2, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->currentscale:F

    .line 184
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    sput-object v2, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/GalleryFragment;->mMatrix:Landroid/graphics/Matrix;

    .line 185
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method


# virtual methods
.method public loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;IIZ)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "isFullScreen"    # Z

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->cancelPotentialWork(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 156
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 157
    invoke-direct {p0, p2, v1, p5}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->setImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 158
    if-eqz p5, :cond_0

    .line 159
    invoke-direct {p0, p5, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->addBitMapToQueue(ZLandroid/graphics/Bitmap;)V

    .line 170
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 162
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iput p3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->mImageWidth:I

    .line 163
    iput p4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->mImageHeight:I

    .line 164
    new-instance v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;

    invoke-direct {v2, p0, p2, p5}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;Landroid/widget/ImageView;Z)V

    .line 165
    .local v2, "task":Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$AsyncDrawable;

    invoke-direct {v0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$AsyncDrawable;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;)V

    .line 166
    .local v0, "asyncDrawable":Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$AsyncDrawable;
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public stopSendingImages()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->sendImagesRunnable:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;->access$000(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;)V

    .line 49
    return-void
.end method
