.class Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$3;
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

.field final synthetic val$threadI:I

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;ILjava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    iput p2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$3;->val$threadI:I

    iput-object p3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$3;->val$ipRangeBaseString:Ljava/lang/String;

    iput p4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$3;->val$timeout:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 174
    iget v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$3;->val$threadI:I

    .local v1, "thisI":I
    :goto_0
    iget v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$3;->val$threadI:I

    add-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$3;->val$ipRangeBaseString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "ip":Ljava/lang/String;
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    iget v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$3;->val$timeout:I

    invoke-static {v2, v0, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->access$000(Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;Ljava/lang/String;I)V

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "ip":Ljava/lang/String;
    :cond_0
    return-void
.end method
