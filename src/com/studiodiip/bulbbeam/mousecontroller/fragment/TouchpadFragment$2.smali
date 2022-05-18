.class Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$2;
.super Ljava/lang/Object;
.source "TouchpadFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 115
    sget-boolean v2, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->scrollbarTouched:Z

    if-eqz v2, :cond_0

    .line 129
    :goto_0
    return v0

    .line 119
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 121
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$300(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;

    move-result-object v0

    iput-boolean v1, v0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->MTTouched:Z

    .line 122
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$300(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->invalidate()V

    .line 128
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$400(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$MTListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$MTListener;->onMTTouched(Landroid/view/MotionEvent;)V

    move v0, v1

    .line 129
    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 125
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v2}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$300(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;

    move-result-object v2

    iput-boolean v0, v2, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->MTTouched:Z

    .line 126
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$2;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$300(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->invalidate()V

    goto :goto_1
.end method
