.class public Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard;
.super Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceEditText;
.source "Keyboard.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceEditText;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard$1;

    invoke-direct {v0, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard;)V

    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard;->setTextIsSelectable(Z)V

    .line 58
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard$2;

    invoke-direct {v0, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard$2;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard;)V

    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 93
    const-string v0, "Enter"

    const/16 v1, 0x42

    invoke-virtual {p0, v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 94
    new-instance v0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard$3;

    invoke-direct {v0, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard$3;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard;)V

    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 102
    return-void
.end method


# virtual methods
.method public onSelectionChanged(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 108
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 109
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eq p2, v1, :cond_1

    .line 110
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Keyboard;->setSelection(II)V

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/view/TypefaceEditText;->onSelectionChanged(II)V

    goto :goto_0
.end method
