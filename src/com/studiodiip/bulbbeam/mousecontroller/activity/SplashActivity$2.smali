.class Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiveIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 170
    const-string v3, "wifi_bulbs"

    .line 171
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 172
    .local v2, "wifiBeamList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;>;"
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Beams discovered by wifi - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 174
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NO BULB FOUND!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-static {v3}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$400(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getLastUsedBeam()Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v1

    .line 176
    .local v1, "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    sget-object v4, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->CONNECTION_TYPE_WIFI:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    if-ne v3, v4, :cond_1

    .line 177
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Resetting the last used beam to null and searching again"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-static {v3}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$400(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->setLastUsedBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    .line 179
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;

    move-result-object v3

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    .line 180
    invoke-static {v5}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$500(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x7d0

    add-int/lit16 v5, v5, 0xbb8

    .line 179
    invoke-virtual {v3, v4, v6, v5}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->findBulbs(Landroid/content/Context;ZI)Z

    .line 202
    .end local v1    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    :cond_0
    :goto_0
    return-void

    .line 183
    .restart local v1    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    :cond_1
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    const-string v4, "No beams found"

    invoke-static {v3, v4, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$600(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;Ljava/lang/String;Z)V

    .line 184
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-static {v3}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$500(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 185
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-static {v3}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$700(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)V

    .line 186
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-static {v3}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$800(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)V

    goto :goto_0

    .line 192
    .end local v1    # "bulb":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 193
    .local v0, "b":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->addWifiBeam(Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)V

    goto :goto_1

    .line 195
    .end local v0    # "b":Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;
    :cond_3
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total beam connections "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->beamBulbs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-static {v3}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$900(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget v3, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->CURRENT_BLUETOOTH_STATE:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_4

    .line 198
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "full scan .. bluetooth is till scanning .. Lets wait"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    :cond_4
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;

    invoke-static {v3}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;->access$1000(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SplashActivity;)V

    goto :goto_0
.end method
