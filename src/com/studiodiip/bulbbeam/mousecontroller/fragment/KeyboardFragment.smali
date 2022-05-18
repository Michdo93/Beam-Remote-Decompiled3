.class public Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;
.super Landroid/app/Fragment;
.source "KeyboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment$keyPressListener;
    }
.end annotation


# static fields
.field private static final ARG_KEY_FEED_ITEM:Ljava/lang/String; = "somekey"

.field public static listener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment$keyPressListener;


# instance fields
.field private editText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;
    .locals 4

    .prologue
    .line 29
    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;

    invoke-direct {v1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;-><init>()V

    .line 30
    .local v1, "f":Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "somekey"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    invoke-virtual {v1, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->setArguments(Landroid/os/Bundle;)V

    .line 33
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 48
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    if-eqz p1, :cond_0

    move-object v1, p1

    .line 41
    .local v1, "bundle":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 42
    .local v0, "activity":Landroid/app/Activity;
    check-cast v0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment$keyPressListener;

    .end local v0    # "activity":Landroid/app/Activity;
    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->setKeyPressListener(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment$keyPressListener;)V

    .line 43
    return-void

    .line 40
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    const v2, 0x7f030020

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 56
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f0c0042

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->editText:Landroid/widget/EditText;

    .line 58
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->editText:Landroid/widget/EditText;

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 60
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher;

    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher;-><init>(Landroid/widget/EditText;Landroid/content/Context;)V

    .line 62
    .local v0, "TW1":Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher;
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 64
    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 99
    return-void
.end method

.method public onFragmentDismissed()V
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 85
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 87
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public onFragmentSelected()V
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->editText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 77
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 78
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->editText:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 80
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    const-string v0, "somekey"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    return-void
.end method

.method public setKeyPressListener(Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment$keyPressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment$keyPressListener;

    .prologue
    .line 25
    sput-object p1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->listener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment$keyPressListener;

    .line 26
    return-void
.end method
