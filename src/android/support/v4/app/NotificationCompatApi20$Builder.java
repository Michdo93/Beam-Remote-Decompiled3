public class android.support.v4.app.NotificationCompatApi20$Builder implements android.support.v4.app.NotificationBuilderWithBuilderAccessor implements android.support.v4.app.NotificationBuilderWithActions {
	 /* .source "NotificationCompatApi20.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationCompatApi20; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x9 */
/* name = "Builder" */
} // .end annotation
/* # instance fields */
private android.app.Notification$Builder b;
private android.os.Bundle mExtras;
/* # direct methods */
public android.support.v4.app.NotificationCompatApi20$Builder ( ) {
/* .locals 8 */
/* .param p1, "context" # Landroid/content/Context; */
/* .param p2, "n" # Landroid/app/Notification; */
/* .param p3, "contentTitle" # Ljava/lang/CharSequence; */
/* .param p4, "contentText" # Ljava/lang/CharSequence; */
/* .param p5, "contentInfo" # Ljava/lang/CharSequence; */
/* .param p6, "tickerView" # Landroid/widget/RemoteViews; */
/* .param p7, "number" # I */
/* .param p8, "contentIntent" # Landroid/app/PendingIntent; */
/* .param p9, "fullScreenIntent" # Landroid/app/PendingIntent; */
/* .param p10, "largeIcon" # Landroid/graphics/Bitmap; */
/* .param p11, "progressMax" # I */
/* .param p12, "progress" # I */
/* .param p13, "progressIndeterminate" # Z */
/* .param p14, "showWhen" # Z */
/* .param p15, "useChronometer" # Z */
/* .param p16, "priority" # I */
/* .param p17, "subText" # Ljava/lang/CharSequence; */
/* .param p18, "localOnly" # Z */
/* .param p20, "extras" # Landroid/os/Bundle; */
/* .param p21, "groupKey" # Ljava/lang/String; */
/* .param p22, "groupSummary" # Z */
/* .param p23, "sortKey" # Ljava/lang/String; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Landroid/content/Context;", */
/* "Landroid/app/Notification;", */
/* "Ljava/lang/CharSequence;", */
/* "Ljava/lang/CharSequence;", */
/* "Ljava/lang/CharSequence;", */
/* "Landroid/widget/RemoteViews;", */
/* "I", */
/* "Landroid/app/PendingIntent;", */
/* "Landroid/app/PendingIntent;", */
/* "Landroid/graphics/Bitmap;", */
/* "IIZZZI", */
/* "Ljava/lang/CharSequence;", */
/* "Z", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Ljava/lang/String;", */
/* ">;", */
/* "Landroid/os/Bundle;", */
/* "Ljava/lang/String;", */
/* "Z", */
/* "Ljava/lang/String;", */
/* ")V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 43 */
/* .local p19, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;" */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 44 */
/* new-instance v4, Landroid/app/Notification$Builder; */
/* invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V */
/* iget-wide v6, p2, Landroid/app/Notification;->when:J */
(( android.app.Notification$Builder ) v4 ).setWhen ( v6, v7 ); // invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;
/* move/from16 v0, p14 */
(( android.app.Notification$Builder ) v4 ).setShowWhen ( v0 ); // invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;
/* iget v5, p2, Landroid/app/Notification;->icon:I */
/* iget v6, p2, Landroid/app/Notification;->iconLevel:I */
(( android.app.Notification$Builder ) v4 ).setSmallIcon ( v5, v6 ); // invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;
v5 = this.contentView;
(( android.app.Notification$Builder ) v4 ).setContent ( v5 ); // invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
v5 = this.tickerText;
(( android.app.Notification$Builder ) v4 ).setTicker ( v5, p6 ); // invoke-virtual {v4, v5, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
v5 = this.sound;
/* iget v6, p2, Landroid/app/Notification;->audioStreamType:I */
(( android.app.Notification$Builder ) v4 ).setSound ( v5, v6 ); // invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
v5 = this.vibrate;
(( android.app.Notification$Builder ) v4 ).setVibrate ( v5 ); // invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;
/* iget v5, p2, Landroid/app/Notification;->ledARGB:I */
/* iget v6, p2, Landroid/app/Notification;->ledOnMS:I */
/* iget v7, p2, Landroid/app/Notification;->ledOffMS:I */
(( android.app.Notification$Builder ) v4 ).setLights ( v5, v6, v7 ); // invoke-virtual {v4, v5, v6, v7}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;
/* iget v4, p2, Landroid/app/Notification;->flags:I */
/* and-int/lit8 v4, v4, 0x2 */
if ( v4 != null) { // if-eqz v4, :cond_2
int v4 = 1; // const/4 v4, 0x1
} // :goto_0
(( android.app.Notification$Builder ) v5 ).setOngoing ( v4 ); // invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;
/* iget v4, p2, Landroid/app/Notification;->flags:I */
/* and-int/lit8 v4, v4, 0x8 */
if ( v4 != null) { // if-eqz v4, :cond_3
int v4 = 1; // const/4 v4, 0x1
} // :goto_1
(( android.app.Notification$Builder ) v5 ).setOnlyAlertOnce ( v4 ); // invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
/* iget v4, p2, Landroid/app/Notification;->flags:I */
/* and-int/lit8 v4, v4, 0x10 */
if ( v4 != null) { // if-eqz v4, :cond_4
int v4 = 1; // const/4 v4, 0x1
} // :goto_2
(( android.app.Notification$Builder ) v5 ).setAutoCancel ( v4 ); // invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;
/* iget v5, p2, Landroid/app/Notification;->defaults:I */
(( android.app.Notification$Builder ) v4 ).setDefaults ( v5 ); // invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;
(( android.app.Notification$Builder ) v4 ).setContentTitle ( p3 ); // invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
(( android.app.Notification$Builder ) v4 ).setContentText ( p4 ); // invoke-virtual {v4, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
/* move-object/from16 v0, p17 */
(( android.app.Notification$Builder ) v4 ).setSubText ( v0 ); // invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
(( android.app.Notification$Builder ) v4 ).setContentInfo ( p5 ); // invoke-virtual {v4, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
/* move-object/from16 v0, p8 */
(( android.app.Notification$Builder ) v4 ).setContentIntent ( v0 ); // invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
v5 = this.deleteIntent;
(( android.app.Notification$Builder ) v4 ).setDeleteIntent ( v5 ); // invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
/* iget v4, p2, Landroid/app/Notification;->flags:I */
/* and-int/lit16 v4, v4, 0x80 */
if ( v4 != null) { // if-eqz v4, :cond_5
int v4 = 1; // const/4 v4, 0x1
} // :goto_3
/* move-object/from16 v0, p9 */
(( android.app.Notification$Builder ) v5 ).setFullScreenIntent ( v0, v4 ); // invoke-virtual {v5, v0, v4}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
/* move-object/from16 v0, p10 */
(( android.app.Notification$Builder ) v4 ).setLargeIcon ( v0 ); // invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
(( android.app.Notification$Builder ) v4 ).setNumber ( p7 ); // invoke-virtual {v4, p7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;
/* move/from16 v0, p15 */
(( android.app.Notification$Builder ) v4 ).setUsesChronometer ( v0 ); // invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;
/* move/from16 v0, p16 */
(( android.app.Notification$Builder ) v4 ).setPriority ( v0 ); // invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;
/* move/from16 v0, p11 */
/* move/from16 v1, p12 */
/* move/from16 v2, p13 */
(( android.app.Notification$Builder ) v4 ).setProgress ( v0, v1, v2 ); // invoke-virtual {v4, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;
/* move/from16 v0, p18 */
(( android.app.Notification$Builder ) v4 ).setLocalOnly ( v0 ); // invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;
/* move-object/from16 v0, p21 */
(( android.app.Notification$Builder ) v4 ).setGroup ( v0 ); // invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;
/* move/from16 v0, p22 */
(( android.app.Notification$Builder ) v4 ).setGroupSummary ( v0 ); // invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;
/* move-object/from16 v0, p23 */
(( android.app.Notification$Builder ) v4 ).setSortKey ( v0 ); // invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;
this.b = v4;
/* .line 74 */
/* new-instance v4, Landroid/os/Bundle; */
/* invoke-direct {v4}, Landroid/os/Bundle;-><init>()V */
this.mExtras = v4;
/* .line 75 */
if ( p20 != null) { // if-eqz p20, :cond_0
/* .line 76 */
v4 = this.mExtras;
/* move-object/from16 v0, p20 */
(( android.os.Bundle ) v4 ).putAll ( v0 ); // invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
/* .line 78 */
} // :cond_0
if ( p19 != null) { // if-eqz p19, :cond_1
v4 = /* invoke-virtual/range {p19 ..p19}, Ljava/util/ArrayList;->isEmpty()Z */
/* if-nez v4, :cond_1 */
/* .line 79 */
v5 = this.mExtras;
final String v6 = "android.people"; // const-string v6, "android.people"
v4 = /* invoke-virtual/range {p19 ..p19}, Ljava/util/ArrayList;->size()I */
/* new-array v4, v4, [Ljava/lang/String; */
/* move-object/from16 v0, p19 */
(( java.util.ArrayList ) v0 ).toArray ( v4 ); // invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
/* check-cast v4, [Ljava/lang/String; */
(( android.os.Bundle ) v5 ).putStringArray ( v6, v4 ); // invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
/* .line 82 */
} // :cond_1
return;
/* .line 44 */
} // :cond_2
int v4 = 0; // const/4 v4, 0x0
/* goto/16 :goto_0 */
} // :cond_3
int v4 = 0; // const/4 v4, 0x0
/* goto/16 :goto_1 */
} // :cond_4
int v4 = 0; // const/4 v4, 0x0
/* goto/16 :goto_2 */
} // :cond_5
int v4 = 0; // const/4 v4, 0x0
} // .end method
/* # virtual methods */
public void addAction ( android.support.v4.app.NotificationCompatBase$Action p0 ) {
/* .locals 1 */
/* .param p1, "action" # Landroid/support/v4/app/NotificationCompatBase$Action; */
/* .prologue */
/* .line 86 */
v0 = this.b;
android.support.v4.app.NotificationCompatApi20 .addAction ( v0,p1 );
/* .line 87 */
return;
} // .end method
public android.app.Notification build ( ) {
/* .locals 2 */
/* .prologue */
/* .line 95 */
v0 = this.b;
v1 = this.mExtras;
(( android.app.Notification$Builder ) v0 ).setExtras ( v1 ); // invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
/* .line 96 */
v0 = this.b;
(( android.app.Notification$Builder ) v0 ).build ( ); // invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
} // .end method
public android.app.Notification$Builder getBuilder ( ) {
/* .locals 1 */
/* .prologue */
/* .line 91 */
v0 = this.b;
} // .end method
