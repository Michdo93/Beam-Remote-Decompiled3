.class Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$6;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 177
    const/4 v1, 0x1

    sput-boolean v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->startingNewActivity:Z

    .line 178
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$6;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    const-class v2, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$6;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 180
    return-void
.end method
