.class public Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;
.super Landroid/app/Fragment;
.source "KeypadFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$keyPressListener;
    }
.end annotation


# static fields
.field private static final ARG_KEY_FEED_ITEM:Ljava/lang/String; = "somekey"


# instance fields
.field public listener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$keyPressListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;
    .locals 4

    .prologue
    .line 28
    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;

    invoke-direct {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;-><init>()V

    .line 29
    .local v1, "f":Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "somekey"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    invoke-virtual {v1, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;->setArguments(Landroid/os/Bundle;)V

    .line 32
    return-object v1
.end method

.method private setTouchListeners()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$1;

    invoke-direct {v1, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$2;

    invoke-direct {v1, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$2;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$3;

    invoke-direct {v1, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$3;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$4;

    invoke-direct {v1, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$4;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$5;

    invoke-direct {v1, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$5;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 48
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    if-eqz p1, :cond_0

    move-object v1, p1

    .line 40
    .local v1, "bundle":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 41
    .local v0, "activity":Landroid/app/Activity;
    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$keyPressListener;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;->setKeyPressListener(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$keyPressListener;)V

    .line 42
    return-void

    .line 39
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    const v0, 0x7f030021

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 140
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 134
    const-string v0, "somekey"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    invoke-direct {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;->setTouchListeners()V

    .line 63
    return-void
.end method

.method public setKeyPressListener(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$keyPressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$keyPressListener;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment;->listener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeypadFragment$keyPressListener;

    .line 25
    return-void
.end method
