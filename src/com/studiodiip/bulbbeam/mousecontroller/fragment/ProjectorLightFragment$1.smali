.class Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1;
.super Ljava/lang/Object;
.source "ProjectorLightFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;->setSwitchToProjectorEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 115
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1$1;

    invoke-direct {v1, p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/ProjectorLightFragment$1;Landroid/os/Handler;)V

    .line 129
    .local v1, "r":Ljava/lang/Runnable;
    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    return-void
.end method
