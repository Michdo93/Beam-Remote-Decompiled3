.class Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 87
    const-string v3, "Button TOUCH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " GETACTIOn "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 149
    :cond_0
    :goto_0
    return v7

    .line 90
    :sswitch_0
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    invoke-static {v3, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->access$002(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;Z)Z

    .line 91
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const-string v4, "mdr"

    const-string v5, "0;0"

    invoke-virtual {v3, v4, v5}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :sswitch_1
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    invoke-static {v3, v7}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->access$002(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;Z)Z

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "times":I
    const/16 v0, 0xa

    .line 98
    .local v0, "sleepTime":I
    const/4 v2, 0x0

    .line 99
    .local v2, "totalTimes":I
    :goto_1
    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_0

    .line 100
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const-string v4, "mmr"

    const-string v5, "1;1"

    invoke-virtual {v3, v4, v5, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    invoke-static {v3, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;I)V

    .line 102
    add-int/lit8 v2, v2, 0x1

    .line 103
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const-string v4, "mmr"

    const-string v5, "1;1"

    invoke-virtual {v3, v4, v5, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    invoke-static {v3, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;I)V

    .line 105
    add-int/lit8 v2, v2, 0x1

    .line 106
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const-string v4, "mmr"

    const-string v5, "1;1"

    invoke-virtual {v3, v4, v5, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    invoke-static {v3, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;I)V

    .line 108
    add-int/lit8 v2, v2, 0x1

    .line 109
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const-string v4, "mmr"

    const-string v5, "1;1"

    invoke-virtual {v3, v4, v5, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    invoke-static {v3, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;I)V

    .line 111
    add-int/lit8 v2, v2, 0x1

    .line 112
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const-string v4, "mmr"

    const-string v5, "1;1"

    invoke-virtual {v3, v4, v5, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    invoke-static {v3, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;I)V

    .line 114
    add-int/lit8 v2, v2, 0x1

    .line 115
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const-string v4, "mmr"

    const-string v5, "1;1"

    invoke-virtual {v3, v4, v5, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    invoke-static {v3, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;I)V

    .line 117
    add-int/lit8 v2, v2, 0x1

    .line 118
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const-string v4, "mmr"

    const-string v5, "-1;-1"

    invoke-virtual {v3, v4, v5, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    invoke-static {v3, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;I)V

    .line 120
    add-int/lit8 v2, v2, 0x1

    .line 121
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const-string v4, "mmr"

    const-string v5, "-1;-1"

    invoke-virtual {v3, v4, v5, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    invoke-static {v3, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;I)V

    .line 123
    add-int/lit8 v2, v2, 0x1

    .line 124
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const-string v4, "mmr"

    const-string v5, "-1;-1"

    invoke-virtual {v3, v4, v5, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    invoke-static {v3, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;I)V

    .line 126
    add-int/lit8 v2, v2, 0x1

    .line 127
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const-string v4, "mmr"

    const-string v5, "-1;-1"

    invoke-virtual {v3, v4, v5, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    invoke-static {v3, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;I)V

    .line 129
    add-int/lit8 v2, v2, 0x1

    .line 130
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const-string v4, "mmr"

    const-string v5, "-1;-1"

    invoke-virtual {v3, v4, v5, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    invoke-static {v3, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;I)V

    .line 132
    add-int/lit8 v2, v2, 0x1

    .line 133
    sget-object v3, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->mss:Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;

    const-string v4, "mmr"

    const-string v5, "-1;-1"

    invoke-virtual {v3, v4, v5, v2}, Lcom/studiodiip/bulbbeam/mousecontroller/mouseSocketSender;->sendSocket(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    invoke-static {v3, v0}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->access$100(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;I)V

    .line 135
    add-int/lit8 v2, v2, 0x1

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 142
    .end local v0    # "sleepTime":I
    .end local v1    # "times":I
    .end local v2    # "totalTimes":I
    :sswitch_2
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    invoke-static {v3, p2, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->access$200(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;Landroid/view/MotionEvent;Z)V

    goto/16 :goto_0

    .line 145
    :sswitch_3
    iget-object v3, p0, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity$3;->this$0:Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;

    invoke-static {v3, p2, v6}, Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;->access$200(Lcom/studiodiip/bulbbeam/mousecontroller/activity/MainActivity;Landroid/view/MotionEvent;Z)V

    goto/16 :goto_0

    .line 88
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x105 -> :sswitch_3
    .end sparse-switch
.end method
