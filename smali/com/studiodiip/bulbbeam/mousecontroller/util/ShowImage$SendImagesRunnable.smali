.class Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;
.super Ljava/lang/Object;
.source "ShowImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendImagesRunnable"
.end annotation


# instance fields
.field private msgToExecute:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private volatile running:Z

.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;)V
    .locals 1
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;->running:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;->msgToExecute:Ljava/util/List;

    return-void
.end method

.method private BitMapToString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 108
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 109
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 110
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 111
    .local v0, "b":[B
    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static synthetic access$000(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;->stopRunning()V

    return-void
.end method

.method private stopRunning()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;->running:Z

    .line 57
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0x4b0

    const/16 v9, 0x26c

    .line 61
    :cond_0
    iget-boolean v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;->running:Z

    if-eqz v6, :cond_7

    .line 62
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;->msgToExecute:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 63
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    invoke-static {v6}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 64
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    invoke-static {v6}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;->msgToExecute:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 70
    :goto_0
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    invoke-static {v6}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->access$200(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;)Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$IShowImageListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 73
    const/4 v3, 0x0

    .local v3, "m":I
    :goto_1
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;->msgToExecute:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 74
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;->msgToExecute:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 75
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-nez v1, :cond_2

    .line 73
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 66
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "m":I
    :cond_1
    const-wide/16 v6, 0xa

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "m":I
    :cond_2
    const-string v6, "TAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Original image  width - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",height - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-gt v6, v10, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-gt v6, v9, :cond_3

    .line 81
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 82
    .local v4, "resizedHeight":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 83
    .local v5, "resizedWidth":I
    const-string v6, "TAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Using same image  width - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",height - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_3
    const/4 v6, 0x1

    invoke-static {v1, v5, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    invoke-static {v6}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->access$200(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;)Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$IShowImageListener;

    move-result-object v6

    invoke-direct {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;->BitMapToString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$IShowImageListener;->onBitMapCalculated(Ljava/lang/String;)V

    goto :goto_2

    .line 84
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v4    # "resizedHeight":I
    .end local v5    # "resizedWidth":I
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 85
    const/16 v4, 0x26c

    .line 86
    .restart local v4    # "resizedHeight":I
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    invoke-static {v6, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->access$300(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;Landroid/graphics/Bitmap;)I

    move-result v5

    .line 87
    .restart local v5    # "resizedWidth":I
    if-le v5, v10, :cond_4

    .line 88
    const/16 v5, 0x4b0

    .line 89
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    invoke-static {v6, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->access$400(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;Landroid/graphics/Bitmap;)I

    move-result v4

    .line 91
    :cond_4
    const-string v6, "TAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Portrait image  width - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",height - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 93
    .end local v4    # "resizedHeight":I
    .end local v5    # "resizedWidth":I
    :cond_5
    const/16 v5, 0x4b0

    .line 94
    .restart local v5    # "resizedWidth":I
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    invoke-static {v6, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->access$400(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;Landroid/graphics/Bitmap;)I

    move-result v4

    .line 95
    .restart local v4    # "resizedHeight":I
    if-le v4, v9, :cond_6

    .line 96
    const/16 v4, 0x26c

    .line 97
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage$SendImagesRunnable;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;

    invoke-static {v6, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;->access$300(Lcom/studiodiip/bulbbeam/mousecontroller/util/ShowImage;Landroid/graphics/Bitmap;)I

    move-result v5

    .line 99
    :cond_6
    const-string v6, "TAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Landscape image  width - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",height - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 105
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "m":I
    .end local v4    # "resizedHeight":I
    .end local v5    # "resizedWidth":I
    :cond_7
    return-void
.end method
