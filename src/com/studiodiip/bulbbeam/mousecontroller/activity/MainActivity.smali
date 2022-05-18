.class public Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$ScaleListener;
    }
.end annotation


# static fields
.field public static SERVERPORT:I

.field public static SERVER_IP:Ljava/lang/String;

.field public static fContext:Landroid/content/Context;

.field public static localMacAddress:Ljava/lang/String;

.field public static mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

.field public static screenToggle:Landroid/widget/ToggleButton;

.field public static startingNewActivity:Z


# instance fields
.field private SGD:Landroid/view/ScaleGestureDetector;

.field private buttonDown:Z

.field currentTouchIsMulti:Z

.field currentTouchIsPinch:Z

.field downTime:J

.field public heightRatio:D

.field lasttime:J

.field private mGestureDetector:Landroid/view/GestureDetector;

.field oldX:F

.field oldY:F

.field screenToggleChecked:Z

.field public widthRatio:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const-string v0, "192.168.0.59"

    sput-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->SERVER_IP:Ljava/lang/String;

    .line 33
    const/16 v0, 0xbb8

    sput v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->SERVERPORT:I

    .line 34
    sput-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->localMacAddress:Ljava/lang/String;

    .line 35
    sput-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->startingNewActivity:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->buttonDown:Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->screenToggleChecked:Z

    .line 275
    iput v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->oldX:F

    iput v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->oldY:F

    .line 277
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->downTime:J

    .line 278
    iput-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->currentTouchIsMulti:Z

    iput-boolean v2, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->currentTouchIsPinch:Z

    return-void
.end method

.method static synthetic access$002(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->buttonDown:Z

    return p1
.end method

.method static synthetic access$100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->sleepie(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;Landroid/view/MotionEvent;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->motionHandler(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method private motionHandler(Landroid/view/MotionEvent;Z)V
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "fromButton"    # Z

    .prologue
    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 293
    .local v4, "nowtime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 294
    .local v2, "newX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 296
    .local v3, "newY":F
    if-eqz p2, :cond_0

    .line 297
    const-string v11, "MOTIONEVENT: "

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "event.getPointerCount(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_2

    .line 300
    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 301
    .local v6, "pc":Landroid/view/MotionEvent$PointerCoords;
    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 302
    iget v2, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 303
    iget v3, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 304
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    const/16 v12, 0x105

    if-ne v11, v12, :cond_0

    .line 305
    move-object/from16 v0, p0

    iput v2, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->oldX:F

    .line 306
    move-object/from16 v0, p0

    iput v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->oldY:F

    .line 315
    .end local v6    # "pc":Landroid/view/MotionEvent$PointerCoords;
    :cond_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->oldX:F

    sub-float v7, v11, v2

    .line 316
    .local v7, "x":F
    move-object/from16 v0, p0

    iget v11, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->oldY:F

    sub-float v9, v11, v3

    .line 387
    .local v9, "y":F
    float-to-int v11, v7

    neg-int v8, v11

    .line 388
    .local v8, "x_int":I
    float-to-int v11, v9

    neg-int v10, v11

    .line 389
    .local v10, "y_int":I
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->buttonDown:Z

    if-eqz v11, :cond_3

    .line 390
    sget-object v11, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const-string v12, "mmr"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    move-object/from16 v0, p0

    iput v2, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->oldX:F

    .line 392
    move-object/from16 v0, p0

    iput v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->oldY:F

    .line 439
    .end local v7    # "x":F
    .end local v8    # "x_int":I
    .end local v9    # "y":F
    .end local v10    # "y_int":I
    :cond_1
    :goto_0
    return-void

    .line 309
    :cond_2
    move-object/from16 v0, p0

    iput v2, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->oldX:F

    .line 310
    move-object/from16 v0, p0

    iput v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->oldY:F

    goto :goto_0

    .line 394
    .restart local v7    # "x":F
    .restart local v8    # "x_int":I
    .restart local v9    # "y":F
    .restart local v10    # "y_int":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    goto :goto_0

    .line 396
    :pswitch_0
    const-string v11, "TOUCH DOWN"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    move-object/from16 v0, p0

    iput v2, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->oldX:F

    .line 398
    move-object/from16 v0, p0

    iput v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->oldY:F

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->lasttime:J

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->downTime:J

    goto :goto_0

    .line 407
    :pswitch_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->lasttime:J

    sub-long v12, v4, v12

    const-wide/16 v14, 0x1e

    cmp-long v11, v12, v14

    if-lez v11, :cond_1

    .line 409
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->currentTouchIsPinch:Z

    if-nez v11, :cond_4

    .line 411
    sget-object v11, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const-string v12, "mmr"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->lasttime:J

    .line 414
    move-object/from16 v0, p0

    iput v2, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->oldX:F

    .line 415
    move-object/from16 v0, p0

    iput v3, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->oldY:F

    goto/16 :goto_0

    .line 420
    :pswitch_2
    const-string v11, "TOUCH UP"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Time "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " dt "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->downTime:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " min "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->downTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->downTime:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x96

    cmp-long v11, v12, v14

    if-gez v11, :cond_6

    .line 424
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->currentTouchIsPinch:Z

    if-nez v11, :cond_5

    .line 425
    sget-object v11, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const-string v12, "mtr"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_5
    :goto_1
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->currentTouchIsMulti:Z

    .line 434
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->currentTouchIsPinch:Z

    goto/16 :goto_0

    .line 429
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->currentTouchIsPinch:Z

    if-nez v11, :cond_5

    .line 430
    sget-object v11, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    float-to-int v12, v7

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    float-to-int v13, v9

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 394
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private sleepie(I)V
    .locals 4
    .param p1, "ms"    # I

    .prologue
    .line 223
    int-to-long v2, p1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v17, 0x7f030019

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->setContentView(I)V

    .line 52
    const v17, 0x7f0c0046

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 54
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    sput-object v17, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->fContext:Landroid/content/Context;

    .line 56
    const v17, 0x7f0c0048

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ToggleButton;

    sput-object v17, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->screenToggle:Landroid/widget/ToggleButton;

    .line 57
    sget-object v17, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->screenToggle:Landroid/widget/ToggleButton;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->screenToggleChecked:Z

    .line 63
    new-instance v17, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 71
    const v17, 0x7f0c004c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 72
    .local v8, "keyboard":Landroid/widget/Button;
    new-instance v17, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$2;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v17, 0x7f0c004a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 85
    .local v6, "button":Landroid/widget/Button;
    new-instance v17, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$3;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 153
    const v17, 0x7f0c0049

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 154
    .local v9, "menuButton":Landroid/widget/Button;
    new-instance v17, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$4;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v17, 0x7f0c0043

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 163
    .local v5, "backButton":Landroid/widget/Button;
    new-instance v17, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$5;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v17, 0x7f0c004b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 172
    .local v4, "appButton":Landroid/widget/Button;
    new-instance v17, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$6;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$6;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v17, 0x7f0c004e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 184
    .local v10, "mouseButton":Landroid/widget/ImageView;
    new-instance v17, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$7;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 194
    .local v7, "display":Landroid/view/Display;
    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    .line 195
    .local v15, "size":Landroid/graphics/Point;
    invoke-virtual {v7, v15}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 196
    const/16 v12, 0x356

    .local v12, "projectorWidth":I
    const/16 v11, 0x1e0

    .line 197
    .local v11, "projectorHeight":I
    iget v14, v15, Landroid/graphics/Point;->x:I

    .line 198
    .local v14, "screenWidth":I
    iget v13, v15, Landroid/graphics/Point;->y:I

    .line 199
    .local v13, "screenHeight":I
    int-to-double v0, v14

    move-wide/from16 v18, v0

    int-to-double v0, v12

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->widthRatio:D

    .line 200
    int-to-double v0, v13

    move-wide/from16 v18, v0

    int-to-double v0, v11

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->heightRatio:D

    .line 201
    const-string v17, "SIZES"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Ratios: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->widthRatio:D

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ; "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->heightRatio:D

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " screensize: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ; "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-object v17, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->screenToggle:Landroid/widget/ToggleButton;

    new-instance v18, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$8;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 217
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 232
    const-string v1, "MOUSECONTROLLER"

    const-string v2, "DESTROY"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :try_start_0
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 235
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    sget-object v1, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 246
    const-string v0, "MOUSECONTROLLER"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 263
    const/4 v0, 0x0

    sput-boolean v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->startingNewActivity:Z

    .line 264
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 282
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 284
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->motionHandler(Landroid/view/MotionEvent;Z)V

    .line 285
    const/4 v0, 0x1

    return v0
.end method
