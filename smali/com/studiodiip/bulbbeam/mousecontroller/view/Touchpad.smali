.class public Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;
.super Landroid/widget/FrameLayout;
.source "Touchpad.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad$TouchpadListener;
    }
.end annotation


# static fields
.field private static DISTANCE_NEARER_1_FROM_TOUCH:F

.field private static DISTANCE_NEARER_2_FROM_TOUCH:F

.field private static DISTANCE_NEAREST_FROM_TOUCH:F

.field private static DISTANCE_NEAR_FROM_TOUCH:F

.field private static DOT_OFFSET_X:F

.field private static DOT_OFFSET_Y:F

.field private static DOT_SPACING:F

.field private static DOT_SPACING_HALF:F

.field private static DOT_WIDTH:F

.field private static MAX_DISTANCE_FROM_TOUCH:F

.field private static MIN_DISTANCE_FROM_TOUCH:F


# instance fields
.field public MTTouched:Z

.field private bitmap:Landroid/graphics/Bitmap;

.field private bmp_size1:Landroid/graphics/Bitmap;

.field private bmp_size2:Landroid/graphics/Bitmap;

.field private bmp_size3:Landroid/graphics/Bitmap;

.field private bmp_size4:Landroid/graphics/Bitmap;

.field private bmp_size5:Landroid/graphics/Bitmap;

.field private dotWidthPercentage:F

.field private isTouchDown:Z

.field private listener:Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad$TouchpadListener;

.field private mx:F

.field private my:F

.field public paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const v0, 0x3f2aaaab

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->dotWidthPercentage:F

    .line 39
    iput-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->MTTouched:Z

    .line 44
    iput-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->isTouchDown:Z

    .line 46
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020038

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->bitmap:Landroid/graphics/Bitmap;

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const v0, 0x3f2aaaab

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->dotWidthPercentage:F

    .line 39
    iput-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->MTTouched:Z

    .line 44
    iput-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->isTouchDown:Z

    .line 46
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020038

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->bitmap:Landroid/graphics/Bitmap;

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const v0, 0x3f2aaaab

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->dotWidthPercentage:F

    .line 39
    iput-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->MTTouched:Z

    .line 44
    iput-boolean v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->isTouchDown:Z

    .line 46
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020038

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->bitmap:Landroid/graphics/Bitmap;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    const/4 v6, 0x1

    .line 74
    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DOT_WIDTH:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 76
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "metrics "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/high16 v2, 0x40400000    # 3.0f

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    sput v2, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DOT_WIDTH:F

    .line 78
    const/high16 v2, 0x41c80000    # 25.0f

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    sput v2, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DOT_SPACING:F

    .line 79
    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DOT_SPACING:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sput v2, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DOT_SPACING_HALF:F

    .line 80
    const/high16 v2, 0x41a00000    # 20.0f

    sput v2, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DOT_OFFSET_X:F

    .line 81
    const/high16 v2, -0x3ee00000    # -10.0f

    sput v2, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DOT_OFFSET_Y:F

    .line 82
    const/high16 v2, 0x43fa0000    # 500.0f

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    sput v2, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->MAX_DISTANCE_FROM_TOUCH:F

    .line 83
    const/high16 v2, 0x41880000    # 17.0f

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    sput v2, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->MIN_DISTANCE_FROM_TOUCH:F

    .line 84
    const/high16 v2, 0x42a00000    # 80.0f

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    sput v2, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DISTANCE_NEAR_FROM_TOUCH:F

    .line 85
    const/high16 v2, 0x42700000    # 60.0f

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    sput v2, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DISTANCE_NEARER_1_FROM_TOUCH:F

    .line 86
    const/high16 v2, 0x42340000    # 45.0f

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    sput v2, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DISTANCE_NEARER_2_FROM_TOUCH:F

    .line 87
    const/high16 v2, 0x41f00000    # 30.0f

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    sput v2, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DISTANCE_NEAREST_FROM_TOUCH:F

    .line 90
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    :cond_0
    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DOT_WIDTH:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->dotWidthPercentage:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 91
    .local v1, "width":I
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v1, v1, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->bmp_size1:Landroid/graphics/Bitmap;

    .line 92
    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DOT_WIDTH:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->dotWidthPercentage:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    mul-double/2addr v2, v8

    double-to-int v1, v2

    .line 93
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v1, v1, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->bmp_size2:Landroid/graphics/Bitmap;

    .line 94
    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DOT_WIDTH:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->dotWidthPercentage:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    mul-double/2addr v2, v8

    double-to-int v1, v2

    .line 95
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v1, v1, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->bmp_size3:Landroid/graphics/Bitmap;

    .line 96
    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DOT_WIDTH:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->dotWidthPercentage:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    mul-double/2addr v2, v8

    double-to-int v1, v2

    .line 97
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v1, v1, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->bmp_size4:Landroid/graphics/Bitmap;

    .line 98
    sget v2, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DOT_WIDTH:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->dotWidthPercentage:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    mul-double/2addr v2, v8

    double-to-int v1, v2

    .line 99
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v1, v1, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->bmp_size5:Landroid/graphics/Bitmap;

    .line 109
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->paint:Landroid/graphics/Paint;

    .line 110
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->paint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    invoke-virtual {p0, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 121
    sget v5, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DOT_SPACING_HALF:F

    .local v5, "dy":F
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v5, v9

    if-gez v9, :cond_9

    .line 122
    sget v9, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DOT_WIDTH:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float v4, v9, v10

    .local v4, "dx":F
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v4, v9

    if-gez v9, :cond_8

    .line 123
    sget v9, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DOT_OFFSET_X:F

    add-float v6, v4, v9

    .line 124
    .local v6, "newX":F
    sget v9, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DOT_OFFSET_Y:F

    add-float v7, v5, v9

    .line 126
    .local v7, "newY":F
    sget v1, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->MAX_DISTANCE_FROM_TOUCH:F

    .line 127
    .local v1, "distance":F
    iget-boolean v9, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->isTouchDown:Z

    if-eqz v9, :cond_1

    .line 128
    iget v9, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->mx:F

    sub-float v2, v9, v6

    .line 129
    .local v2, "distanceX":F
    iget v9, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->my:F

    sub-float v3, v9, v7

    .line 130
    .local v3, "distanceY":F
    mul-float v9, v2, v2

    mul-float v10, v3, v3

    add-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v1, v10

    .line 131
    sget v9, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->MIN_DISTANCE_FROM_TOUCH:F

    cmpg-float v9, v1, v9

    if-gez v9, :cond_0

    sget v1, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->MIN_DISTANCE_FROM_TOUCH:F

    .line 133
    :cond_0
    div-float v9, v2, v1

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v6, v9

    .line 134
    div-float v9, v3, v1

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v7, v9

    .line 137
    .end local v2    # "distanceX":F
    .end local v3    # "distanceY":F
    :cond_1
    sget v9, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DOT_SPACING:F

    rem-float v9, v5, v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_2

    .line 138
    sget v9, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DOT_SPACING_HALF:F

    add-float/2addr v6, v9

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->bmp_size1:Landroid/graphics/Bitmap;

    .line 142
    .local v0, "cur_bmp":Landroid/graphics/Bitmap;
    sget v8, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DOT_WIDTH:F

    .line 143
    .local v8, "width":F
    sget v9, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DISTANCE_NEAREST_FROM_TOUCH:F

    cmpg-float v9, v1, v9

    if-gez v9, :cond_4

    .line 144
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->bmp_size5:Landroid/graphics/Bitmap;

    .line 145
    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v8, v9

    .line 156
    :cond_3
    :goto_2
    iget-boolean v9, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->MTTouched:Z

    if-eqz v9, :cond_7

    .line 164
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float v9, v6, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float v10, v7, v10

    iget-object v11, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 122
    :goto_3
    sget v9, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DOT_SPACING:F

    add-float/2addr v4, v9

    goto :goto_1

    .line 146
    :cond_4
    sget v9, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DISTANCE_NEARER_2_FROM_TOUCH:F

    cmpg-float v9, v1, v9

    if-gez v9, :cond_5

    .line 147
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->bmp_size4:Landroid/graphics/Bitmap;

    .line 148
    const/high16 v9, 0x40100000    # 2.25f

    mul-float/2addr v8, v9

    goto :goto_2

    .line 149
    :cond_5
    sget v9, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DISTANCE_NEARER_1_FROM_TOUCH:F

    cmpg-float v9, v1, v9

    if-gez v9, :cond_6

    .line 150
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->bmp_size3:Landroid/graphics/Bitmap;

    .line 151
    const/high16 v9, 0x3fe00000    # 1.75f

    mul-float/2addr v8, v9

    goto :goto_2

    .line 152
    :cond_6
    sget v9, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DISTANCE_NEAR_FROM_TOUCH:F

    cmpg-float v9, v1, v9

    if-gez v9, :cond_3

    .line 153
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->bmp_size2:Landroid/graphics/Bitmap;

    .line 154
    float-to-double v10, v8

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v10, v12

    double-to-float v8, v10

    goto :goto_2

    .line 173
    :cond_7
    iget v9, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->dotWidthPercentage:F

    mul-float/2addr v9, v8

    iget-object v10, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 121
    .end local v0    # "cur_bmp":Landroid/graphics/Bitmap;
    .end local v1    # "distance":F
    .end local v6    # "newX":F
    .end local v7    # "newY":F
    .end local v8    # "width":F
    :cond_8
    sget v9, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->DOT_SPACING_HALF:F

    add-float/2addr v5, v9

    goto/16 :goto_0

    .line 178
    .end local v4    # "dx":F
    :cond_9
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 194
    iget-object v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->listener:Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad$TouchpadListener;

    if-nez v6, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v4

    .line 198
    :cond_1
    sget-boolean v6, Lcom/studiodiip/bulbbeam/mousecontroller/fragment/TouchpadFragment;->scrollbarTouched:Z

    if-nez v6, :cond_0

    .line 202
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 203
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 204
    .local v1, "index":I
    const/4 v2, -0x1

    .line 205
    .local v2, "xPos":I
    const/4 v3, -0x1

    .line 207
    .local v3, "yPos":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-le v6, v5, :cond_2

    .line 211
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v2, v4

    .line 212
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v3, v4

    .line 213
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->listener:Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad$TouchpadListener;

    invoke-interface {v4, p0, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad$TouchpadListener;->onTouchpadTouched(Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;Landroid/view/MotionEvent;)V

    :goto_1
    move v4, v5

    .line 238
    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v2, v6

    .line 219
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v3, v6

    .line 221
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_4

    .line 222
    iput-boolean v5, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->isTouchDown:Z

    .line 228
    :cond_3
    :goto_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->mx:F

    .line 229
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->my:F

    .line 231
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->invalidate(Landroid/graphics/Rect;)V

    .line 232
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->invalidate()V

    .line 235
    iget-object v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->listener:Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad$TouchpadListener;

    invoke-interface {v4, p0, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad$TouchpadListener;->onTouchpadTouched(Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 224
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_3

    .line 225
    iput-boolean v4, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->isTouchDown:Z

    goto :goto_2
.end method

.method public setDotWidthPercentage(F)V
    .locals 0
    .param p1, "percentage"    # F

    .prologue
    .line 187
    iput p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->dotWidthPercentage:F

    .line 188
    invoke-virtual {p0}, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->invalidate()V

    .line 189
    return-void
.end method

.method public setTouchpadListener(Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad$TouchpadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad$TouchpadListener;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad;->listener:Lcom/studiodiip/bulbbeam/mousecontroller/view/Touchpad$TouchpadListener;

    .line 56
    return-void
.end method
