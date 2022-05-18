.class Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$1;
.super Ljava/lang/Thread;
.source "BulbDiscoverer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->findLastBulb(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

.field final synthetic val$ip:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    iput-object p2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$1;->val$ip:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer$1;->val$ip:Ljava/lang/String;

    const/16 v2, 0xfa0

    invoke-static {v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->access$000(Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;Ljava/lang/String;I)V

    .line 127
    return-void
.end method
