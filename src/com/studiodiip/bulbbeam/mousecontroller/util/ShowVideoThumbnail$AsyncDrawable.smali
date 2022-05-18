.class Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$AsyncDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "ShowVideoThumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncDrawable"
.end annotation


# instance fields
.field private final bitmapDownloaderTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;)V
    .locals 1
    .param p1, "bitmapDownloaderTask"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;

    .prologue
    .line 83
    const/high16 v0, -0x1000000

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 84
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$AsyncDrawable;->bitmapDownloaderTaskReference:Ljava/lang/ref/WeakReference;

    .line 86
    return-void
.end method


# virtual methods
.method public getBitmapDownloaderTask()Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$AsyncDrawable;->bitmapDownloaderTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowVideoThumbnail$BitmapWorkerTask;

    return-object v0
.end method
