.class Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity$1;
.super Ljava/lang/Object;
.source "appListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 44
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 48
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const-string v1, "a"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;->finish()V

    .line 50
    return-void
.end method
