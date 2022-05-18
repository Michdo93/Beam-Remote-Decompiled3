.class Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl$5;
.super Ljava/lang/Object;
.source "keyboardControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl$5;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 101
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const-string v1, "f"

    const-string v2, "s"

    invoke-virtual {v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method
