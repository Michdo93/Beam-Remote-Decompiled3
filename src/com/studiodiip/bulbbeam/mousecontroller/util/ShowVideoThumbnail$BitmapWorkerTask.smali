.class Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "ShowVideoThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;


# direct methods
.method public constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;
    .param p2, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;->path:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 49
    return-void
.end method

.method static synthetic access$200(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;->path:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;->path:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;->path:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;->bitmap:Landroid/graphics/Bitmap;

    .line 57
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 58
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    const/4 p1, 0x0

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 68
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 69
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;

    .line 70
    invoke-static {v2, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;->access$000(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;Landroid/widget/ImageView;)Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;

    move-result-object v0

    .line 71
    .local v0, "bitmapWorkerTask":Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;
    if-ne p0, v0, :cond_1

    if-eqz v1, :cond_1

    .line 72
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;

    invoke-static {v2, v1, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 75
    .end local v0    # "bitmapWorkerTask":Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_1
    const/4 p1, 0x0

    .line 76
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
