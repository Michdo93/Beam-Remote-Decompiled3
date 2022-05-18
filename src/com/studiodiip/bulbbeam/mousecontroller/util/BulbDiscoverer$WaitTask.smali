.class Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;
.super Landroid/os/AsyncTask;
.source "BulbDiscoverer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field num:I

.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

.field private threadId:I

.field threadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Thread;>;"
    const/4 v1, 0x0

    .line 227
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 222
    iput v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->num:I

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->threadList:Ljava/util/ArrayList;

    .line 224
    iput v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->threadId:I

    .line 225
    const-class v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->TAG:Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 229
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 230
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 221
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const-wide/16 v2, 0x3e8

    .line 234
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 235
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping all threads "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->threadId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", thread count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->TAG:Ljava/lang/String;

    const-string v3, "do in background start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->threadList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 239
    .local v1, "t":Ljava/lang/Thread;
    :try_start_0
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->wifiBeamList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->num:I

    if-le v3, v4, :cond_0

    .line 240
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->wifiBeamList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->num:I

    .line 241
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    invoke-static {v4}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->access$200(Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;Landroid/content/Context;)V

    .line 243
    :cond_0
    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 248
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_1
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->TAG:Ljava/lang/String;

    const-string v3, "do in background end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 221
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 254
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->wifiBeamList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 255
    .local v0, "numBulbs":I
    sget v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->CURRENT_WIFI_STATE:I

    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_WIFI_SCANNING:I

    if-ne v1, v2, :cond_0

    .line 256
    if-nez v0, :cond_1

    sget v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_NO_BEAM:I

    :goto_0
    sput v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->CURRENT_WIFI_STATE:I

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->access$200(Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;Landroid/content/Context;)V

    .line 259
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopped all threads "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$WaitTask;->threadId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    .line 256
    :cond_1
    sget v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->STATE_BEAM_FOUND:I

    goto :goto_0
.end method
