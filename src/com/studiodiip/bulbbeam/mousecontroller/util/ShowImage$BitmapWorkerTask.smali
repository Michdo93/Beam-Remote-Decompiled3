.class Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "ShowImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;
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

.field private mIsFullScreen:Z

.field private path:Ljava/lang/String;

.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;


# direct methods
.method public constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;Landroid/widget/ImageView;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "isFullScreen"    # Z

    .prologue
    .line 194
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->path:Ljava/lang/String;

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->mIsFullScreen:Z

    .line 196
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 197
    iput-boolean p3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->mIsFullScreen:Z

    .line 198
    return-void
.end method

.method static synthetic access$1200(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->path:Ljava/lang/String;

    return-object v0
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 273
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 274
    .local v2, "height":I
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 275
    .local v4, "width":I
    const/4 v3, 0x1

    .line 277
    .local v3, "inSampleSize":I
    if-gt v2, p3, :cond_0

    if-le v4, p2, :cond_1

    .line 279
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 280
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 284
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-lt v5, p3, :cond_1

    div-int v5, v1, v3

    if-lt v5, p2, :cond_1

    .line 286
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 290
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method private decodeSampledBitmapFromPath(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    const/4 v3, 0x1

    .line 255
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 256
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 257
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 260
    invoke-direct {p0, v1, p2, p3}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 263
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 264
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 265
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 266
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 267
    .local v0, "bm":Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v6, 0x800

    .line 230
    if-nez p1, :cond_0

    move-object v0, p1

    .line 248
    .end local p1    # "bm":Landroid/graphics/Bitmap;
    .local v0, "bm":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 233
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local p1    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 234
    .local v1, "resizedHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 235
    .local v2, "resizedWidth":I
    const-string v3, "ShowImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device image width - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",height - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-gt v1, v6, :cond_1

    if-le v2, v6, :cond_3

    .line 237
    :cond_1
    if-le v2, v6, :cond_2

    .line 238
    const/16 v2, 0x800

    .line 239
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v4, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->access$1000(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;Landroid/graphics/Bitmap;I)I

    move-result v1

    .line 241
    :cond_2
    if-le v1, v6, :cond_3

    .line 242
    const/16 v1, 0x800

    .line 243
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v4, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->access$1100(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;Landroid/graphics/Bitmap;I)I

    move-result v2

    .line 246
    :cond_3
    const-string v3, "ShowImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device image width - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",height - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    move-object v0, p1

    .line 248
    .end local p1    # "bm":Landroid/graphics/Bitmap;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 204
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->path:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->access$500(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;)I

    move-result v1

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->access$600(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->decodeSampledBitmapFromPath(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->bitmap:Landroid/graphics/Bitmap;

    .line 206
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    iget-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->mIsFullScreen:Z

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->access$700(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;ZLandroid/graphics/Bitmap;)V

    .line 207
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->bitmap:Landroid/graphics/Bitmap;

    .line 208
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 209
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 188
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    const/4 p1, 0x0

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 219
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 220
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    .line 221
    invoke-static {v2, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->access$800(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;Landroid/widget/ImageView;)Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;

    move-result-object v0

    .line 222
    .local v0, "bitmapWorkerTask":Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;
    if-ne p0, v0, :cond_1

    if-eqz v1, :cond_1

    .line 223
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    iget-boolean v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->mIsFullScreen:Z

    invoke-static {v2, v1, p1, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->access$900(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 226
    .end local v0    # "bitmapWorkerTask":Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 188
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
