.class Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$2;
.super Ljava/lang/Thread;
.source "BulbDiscoverer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->findBulbs(Landroid/content/Context;ZI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

.field final synthetic val$ipRangeBaseString:Ljava/lang/String;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    iput-object p2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$2;->val$ipRangeBaseString:Ljava/lang/String;

    iput p3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$2;->val$timeout:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$2;->val$ipRangeBaseString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "ip":Ljava/lang/String;
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    iget v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$2;->val$timeout:I

    invoke-static {v1, v0, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->access$000(Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;Ljava/lang/String;I)V

    .line 164
    return-void
.end method
