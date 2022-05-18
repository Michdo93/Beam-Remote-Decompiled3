.class Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity$1;
.super Ljava/lang/Object;
.source "SelectBulbActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity;

.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$localMacAddress:Ljava/lang/String;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity;

    iput-object p2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity$1;->val$accountName:Ljava/lang/String;

    iput-object p3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity$1;->val$userName:Ljava/lang/String;

    iput-object p4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity$1;->val$localMacAddress:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 56
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/BulbDiscoverer;->beamBulbs:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;

    iget-object v1, v0, Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;->ip:Ljava/lang/String;

    .line 57
    .local v1, "selectedItem":Ljava/lang/String;
    const-string v0, "LISTVIEW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    sput-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->SERVER_IP:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->SERVERPORT:I

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity$1;->val$accountName:Ljava/lang/String;

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity$1;->val$userName:Ljava/lang/String;

    iget-object v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity$1;->val$localMacAddress:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    .line 66
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity;

    const-class v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/TestActivity;

    invoke-direct {v6, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v6, "i":Landroid/content/Intent;
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity;

    invoke-virtual {v0, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity;->startActivity(Landroid/content/Intent;)V

    .line 69
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/SelectBulbActivity;->finish()V

    .line 70
    return-void
.end method
