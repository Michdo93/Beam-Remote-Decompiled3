.class Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;
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
.field prevY:F

.field private scrollbarRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    iput-object p2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3$1;

    invoke-direct {v0, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;)V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->scrollbarRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v7, 0x7f0c0087

    const/16 v6, 0xff

    const/16 v5, 0xa0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 169
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v3}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$300(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;

    move-result-object v3

    iget-boolean v3, v3, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->MTTouched:Z

    if-eqz v3, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v1

    .line 173
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_2

    .line 176
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 177
    sput-boolean v2, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->scrollbarTouched:Z

    .line 178
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->val$v:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0200c4

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 179
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$300(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;

    move-result-object v1

    iget-object v1, v1, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->paint:Landroid/graphics/Paint;

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$300(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->invalidate()V

    .line 181
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$002(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;Z)Z

    .line 182
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$600(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->scrollbarRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v3}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$700(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-static {v1, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$202(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;F)F

    .line 184
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->prevY:F

    move v1, v2

    .line 185
    goto :goto_0

    .line 186
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 188
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->prevY:F

    sub-float v0, v1, v3

    .line 189
    .local v0, "tempDiffY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->prevY:F

    .line 190
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$700(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v3}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$700(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->setY(F)V

    .line 191
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v3}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$700(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v4}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$200(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)F

    move-result v4

    sub-float/2addr v3, v4

    neg-float v3, v3

    iput v3, v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->diffY:F

    move v1, v2

    .line 192
    goto/16 :goto_0

    .line 193
    .end local v0    # "tempDiffY":F
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 194
    sput-boolean v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->scrollbarTouched:Z

    .line 195
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->val$v:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0200c3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 196
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$300(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;

    move-result-object v1

    iget-object v1, v1, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->paint:Landroid/graphics/Paint;

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$300(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->invalidate()V

    .line 198
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$700(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v3}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$200(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setY(F)V

    .line 199
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    const/4 v3, 0x0

    iput v3, v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->diffY:F

    .line 200
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$600(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->scrollbarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move v1, v2

    .line 201
    goto/16 :goto_0
.end method
