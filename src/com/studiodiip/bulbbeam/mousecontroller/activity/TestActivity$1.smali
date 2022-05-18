.class Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiveIntent"    # Landroid/content/Intent;

    .prologue
    .line 132
    const-string v2, "wifi_bulbs"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 133
    .local v1, "wifiBeamList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;>;"
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Beams discovered by wifi - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 135
    .local v0, "b":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->addWifiBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    goto :goto_0

    .line 137
    .end local v0    # "b":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    :cond_0
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V

    .line 138
    return-void
.end method
