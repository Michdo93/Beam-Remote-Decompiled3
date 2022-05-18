.class Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3$1;
.super Ljava/lang/Object;
.source "TouchpadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 139
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;

    iget-object v1, v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$500(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$ScrollbarListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 140
    const-string v1, "scrollbar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "diffY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;

    iget-object v3, v3, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    iget v3, v3, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->diffY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;

    iget-object v1, v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    div-float v0, v1, v2

    .line 143
    .local v0, "part":F
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;

    iget-object v1, v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    iget v1, v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->diffY:F

    float-to-double v2, v1

    float-to-double v4, v0

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;

    iget-object v1, v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$500(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$ScrollbarListener;

    move-result-object v1

    const/4 v2, -0x2

    invoke-interface {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$ScrollbarListener;->onScroll(I)V

    .line 162
    .end local v0    # "part":F
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;

    iget-object v1, v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$600(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 163
    return-void

    .line 145
    .restart local v0    # "part":F
    :cond_1
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;

    iget-object v1, v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    iget v1, v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->diffY:F

    float-to-double v2, v1

    float-to-double v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;

    iget-object v1, v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$500(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$ScrollbarListener;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$ScrollbarListener;->onScroll(I)V

    goto :goto_0

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;

    iget-object v1, v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    iget v1, v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->diffY:F

    float-to-double v2, v1

    float-to-double v4, v0

    const-wide/high16 v6, -0x4008000000000000L    # -1.5

    mul-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_3

    .line 150
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;

    iget-object v1, v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$500(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$ScrollbarListener;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$ScrollbarListener;->onScroll(I)V

    goto :goto_0

    .line 151
    :cond_3
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;

    iget-object v1, v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    iget v1, v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->diffY:F

    float-to-double v2, v1

    float-to-double v4, v0

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    mul-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3$1;->this$1:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;

    iget-object v1, v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;

    invoke-static {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->access$500(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;)Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$ScrollbarListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment$ScrollbarListener;->onScroll(I)V

    goto :goto_0
.end method
