.class Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity$2;
.super Ljava/lang/Object;
.source "appListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 54
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/appListActivity;->finish()V

    .line 58
    return-void
.end method
