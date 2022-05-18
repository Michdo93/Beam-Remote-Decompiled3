.class public Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;
.super Ljava/lang/Object;
.source "ShowVideoThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$AsyncDrawable;,
        Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;Landroid/widget/ImageView;)Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;->setThumbnail(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private cancelPotentialWork(Ljava/lang/String;Landroid/widget/ImageView;)Z
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v2, 0x1

    .line 94
    invoke-direct {p0, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;->getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;

    move-result-object v1

    .line 96
    .local v1, "bitmapWorkerTask":Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;
    if-eqz v1, :cond_1

    .line 97
    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;->access$200(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "bitmapData":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 101
    :cond_0
    invoke-virtual {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;->cancel(Z)Z

    .line 108
    .end local v0    # "bitmapData":Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 104
    .restart local v0    # "bitmapData":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getBitmapWorkerTask(Landroid/widget/ImageView;)Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 112
    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 114
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$AsyncDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 115
    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$AsyncDrawable;

    .line 116
    .local v0, "downloadedDrawable":Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$AsyncDrawable;
    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$AsyncDrawable;->getBitmapDownloaderTask()Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;

    move-result-object v2

    .line 119
    .end local v0    # "downloadedDrawable":Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$AsyncDrawable;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setThumbnail(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 37
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 38
    return-void
.end method


# virtual methods
.method public loadvideoThumbnail(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;->cancelPotentialWork(Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getVideoBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 25
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 26
    invoke-direct {p0, p2, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;->setThumbnail(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 34
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 28
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;

    invoke-direct {v2, p0, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;Landroid/widget/ImageView;)V

    .line 29
    .local v2, "task":Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$AsyncDrawable;

    invoke-direct {v0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$AsyncDrawable;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;)V

    .line 30
    .local v0, "asyncDrawable":Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$AsyncDrawable;
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
