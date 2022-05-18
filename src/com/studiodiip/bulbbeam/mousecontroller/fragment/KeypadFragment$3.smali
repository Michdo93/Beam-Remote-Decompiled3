.class Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$3;
.super Ljava/lang/Object;
.source "KeypadFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;->setTouchListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 94
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 95
    const-string v0, "KEYPAD"

    const-string v1, "Btn Bottom Touched!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;->listener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$keyPressListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;

    iget-object v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;->listener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$keyPressListener;

    const-string v1, "down"

    invoke-interface {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$keyPressListener;->onKeyPress(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
