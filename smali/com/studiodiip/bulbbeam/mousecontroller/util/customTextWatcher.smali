.class public Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher;
.super Ljava/lang/Object;
.source "customTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field charCount:I

.field public editText:Landroid/widget/EditText;

.field private insertedSpace:Z


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/content/Context;)V
    .locals 2
    .param p1, "et"    # Landroid/widget/EditText;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher;->charCount:I

    .line 49
    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher;->insertedSpace:Z

    .line 24
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher;->editText:Landroid/widget/EditText;

    .line 26
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher;->editText:Landroid/widget/EditText;

    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher$1;

    invoke-direct {v1, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 33
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 38
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 42
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, " "

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 43
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 47
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v3, 0x1

    .line 53
    iget-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher;->insertedSpace:Z

    if-eqz v1, :cond_0

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher;->insertedSpace:Z

    .line 88
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    .line 62
    .local v0, "nbLines":I
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->listener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment$keyPressListener;

    if-eqz v1, :cond_1

    .line 63
    if-nez p3, :cond_3

    if-nez p2, :cond_3

    if-ne p4, v3, :cond_3

    .line 78
    :cond_1
    :goto_1
    if-le v0, v3, :cond_2

    .line 80
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->listener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment$keyPressListener;

    const-string v2, "ENTER"

    invoke-interface {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment$keyPressListener;->onKeyPress(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher;->editText:Landroid/widget/EditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    add-int/lit8 p4, p4, -0x1

    .line 87
    :cond_2
    iput p4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher;->charCount:I

    goto :goto_0

    .line 65
    :cond_3
    if-le p3, p4, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4

    if-lez p2, :cond_4

    .line 66
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->listener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment$keyPressListener;

    const-string v2, "BACKSPACE"

    invoke-interface {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment$keyPressListener;->onKeyPress(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 67
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_5

    if-ne p3, v3, :cond_5

    if-nez p4, :cond_5

    if-nez p2, :cond_5

    .line 68
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->listener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment$keyPressListener;

    const-string v2, "BACKSPACE"

    invoke-interface {v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment$keyPressListener;->onKeyPress(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher;->editText:Landroid/widget/EditText;

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iput-boolean v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/util/customTextWatcher;->insertedSpace:Z

    goto :goto_1

    .line 72
    :cond_5
    if-lez p2, :cond_1

    .line 75
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment;->listener:Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment$keyPressListener;

    invoke-interface {v1, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/KeyboardFragment$keyPressListener;->onKeyPress(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
