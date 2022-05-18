.class public Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl;
.super Landroid/app/Activity;
.source "keyboardControl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public convertStringToKeyCode(Ljava/lang/String;)I
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 108
    .line 109
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    .line 111
    .local v3, "mKeyCharacterMap":Landroid/view/KeyCharacterMap;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v1

    .line 113
    .local v1, "events":[Landroid/view/KeyEvent;
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 116
    .local v0, "event2":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_1

    .line 117
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 122
    .end local v0    # "event2":Landroid/view/KeyEvent;
    :cond_0
    return v2

    .line 113
    .restart local v0    # "event2":Landroid/view/KeyEvent;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x400

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl;->requestWindowFeature(I)Z

    .line 27
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 28
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl;->setRequestedOrientation(I)V

    .line 29
    const v6, 0x7f030018

    invoke-virtual {p0, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl;->setContentView(I)V

    .line 31
    const v6, 0x7f0c0046

    invoke-virtual {p0, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 32
    .local v3, "contentView":Landroid/view/View;
    const v6, 0x7f0c0043

    invoke-virtual {p0, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 33
    .local v0, "backButton":Landroid/widget/Button;
    new-instance v6, Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl$1;

    invoke-direct {v6, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const v6, 0x7f0c0041

    invoke-virtual {p0, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 43
    .local v1, "backspaceBut":Landroid/widget/Button;
    new-instance v6, Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl$2;

    invoke-direct {v6, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl$2;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v6, 0x7f0c0042

    invoke-virtual {p0, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 53
    .local v4, "et":Landroid/widget/EditText;
    new-instance v6, Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl$3;

    invoke-direct {v6, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl$3;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 76
    const v6, 0x7f0c0044

    invoke-virtual {p0, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 77
    .local v2, "brightnessBar":Landroid/widget/SeekBar;
    new-instance v6, Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl$4;

    invoke-direct {v6, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl$4;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl;)V

    invoke-virtual {v2, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 96
    const v6, 0x7f0c0045

    invoke-virtual {p0, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 97
    .local v5, "flipBtn":Landroid/widget/Button;
    new-instance v6, Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl$5;

    invoke-direct {v6, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl$5;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/keyboardControl;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method
