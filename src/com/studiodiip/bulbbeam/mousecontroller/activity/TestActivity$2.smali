.class Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$2;
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
    .line 141
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiveIntent"    # Landroid/content/Intent;

    .prologue
    .line 144
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Beam changed notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/util/BeamSettings;->getSelectedBeam()Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$202(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    .line 146
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$200(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$300(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;Z)V

    .line 147
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$200(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .line 148
    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$200(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    move-result-object v0

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->connectionType:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;->CONNECTION_TYPE_BLUETOOTH:Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamConnectionType;

    if-ne v0, v1, :cond_0

    .line 149
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->getInstance()Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    .line 150
    invoke-virtual {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    invoke-static {}, Lcom/studiodiip/bulbbeam/mousecontroller/util/Utils;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;->sendCommand(Ljava/lang/String;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;)V

    .line 155
    return-void
.end method
