.class public interface abstract Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager$IBleInterface;
.super Ljava/lang/Object;
.source "BleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/ble/BleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IBleInterface"
.end annotation


# virtual methods
.method public abstract enableBle()V
.end method

.method public abstract onScanningCompleted(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/studiodiip/bulbbeam/mousecontroller/objects/BeamBulb;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSwitchingCompleted(Ljava/lang/String;)V
.end method

.method public abstract supportsBle(Z)V
.end method
