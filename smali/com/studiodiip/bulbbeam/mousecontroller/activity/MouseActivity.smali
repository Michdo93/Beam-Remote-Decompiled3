.class public Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;
.super Landroid/app/Activity;
.source "MouseActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final NS2S:F = 1.0E-9f

.field private static final SHAKE_THRESHOLD:I = 0x258


# instance fields
.field private accelX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private accelY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final deltaRotationVector:[F

.field private lastMotionX:F

.field private lastMotionY:F

.field private lastUpdate:J

.field private last_x:F

.field private last_y:F

.field private last_z:F

.field private senGyroscope:Landroid/hardware/Sensor;

.field private senSensorManager:Landroid/hardware/SensorManager;

.field private timestamp:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->lastUpdate:J

    .line 52
    const v0, 0x43ed8000    # 475.0f

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->lastMotionX:F

    .line 53
    const/high16 v0, 0x43700000    # 240.0f

    iput v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->lastMotionY:F

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->accelX:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->accelY:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->deltaRotationVector:[F

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 134
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->setContentView(I)V

    .line 31
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->senSensorManager:Landroid/hardware/SensorManager;

    .line 32
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->senSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->senGyroscope:Landroid/hardware/Sensor;

    .line 34
    const v0, 0x7f0c0050

    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity$1;

    invoke-direct {v1, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity$1;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v0, 0x7f0c0051

    invoke-virtual {p0, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity$2;

    invoke-direct {v1, p0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity$2;-><init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 139
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->senSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 140
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 145
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->senSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 146
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 151
    iget-object v0, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->senSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->senGyroscope:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 152
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v11, 0x5

    const/high16 v10, 0x40800000    # 4.0f

    const/4 v9, 0x0

    .line 63
    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 65
    .local v4, "mySensor":Landroid/hardware/Sensor;
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    .line 66
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v7, v9

    .line 68
    .local v5, "x":F
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v6, v7, v8

    .line 70
    .local v6, "z":F
    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->accelX:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->accelY:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->accelX:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v11, :cond_0

    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->accelX:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 73
    :cond_0
    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->accelY:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v11, :cond_1

    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->accelY:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 75
    :cond_1
    const/4 v0, 0x0

    .line 76
    .local v0, "avgX":F
    const/4 v1, 0x0

    .line 77
    .local v1, "avgY":F
    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->accelX:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->accelY:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 78
    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->accelX:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 79
    .local v2, "cX":F
    add-float/2addr v0, v2

    .line 80
    goto :goto_0

    .line 81
    .end local v2    # "cX":F
    :cond_2
    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->accelY:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 82
    .local v3, "cY":F
    add-float/2addr v1, v3

    .line 83
    goto :goto_1

    .line 84
    .end local v3    # "cY":F
    :cond_3
    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->accelX:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v0, v7

    .line 85
    iget-object v7, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MouseActivity;->accelY:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v1, v7

    .line 91
    :goto_2
    sget-object v7, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    if-eqz v7, :cond_4

    .line 92
    sget-object v7, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const v8, 0x44558000    # 854.0f

    mul-float/2addr v8, v0

    div-float/2addr v8, v10

    float-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x43f00000    # 480.0f

    mul-float/2addr v9, v1

    div-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .end local v0    # "avgX":F
    .end local v1    # "avgY":F
    .end local v5    # "x":F
    .end local v6    # "z":F
    :cond_4
    return-void

    .line 87
    .restart local v0    # "avgX":F
    .restart local v1    # "avgY":F
    .restart local v5    # "x":F
    .restart local v6    # "z":F
    :cond_5
    move v0, v6

    .line 88
    move v1, v5

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 157
    sget-object v0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const-string v1, "b"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
