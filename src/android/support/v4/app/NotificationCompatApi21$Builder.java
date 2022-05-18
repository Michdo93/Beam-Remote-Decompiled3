public class android.support.v4.app.NotificationCompatApi21$Builder implements android.support.v4.app.NotificationBuilderWithBuilderAccessor implements android.support.v4.app.NotificationBuilderWithActions {
	 /* .source "NotificationCompatApi21.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationCompatApi21; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x9 */
/* name = "Builder" */
} // .end annotation
/* # instance fields */
private android.app.Notification$Builder b;
/* # direct methods */
public android.support.v4.app.NotificationCompatApi21$Builder ( ) {
/* .locals 10 */
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
/* .param p19, "category" # Ljava/lang/String; */
/* .param p21, "extras" # Landroid/os/Bundle; */
/* .param p22, "color" # I */
/* .param p23, "visibility" # I */
/* .param p24, "publicVersion" # Landroid/app/Notification; */
/* .param p25, "groupKey" # Ljava/lang/String; */
/* .param p26, "groupSummary" # Z */
/* .param p27, "sortKey" # Ljava/lang/String; */
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
/* "Ljava/lang/String;", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Ljava/lang/String;", */
/* ">;", */
/* "Landroid/os/Bundle;", */
/* "II", */
/* "Landroid/app/Notification;", */
/* "Ljava/lang/String;", */
/* "Z", */
/* "Ljava/lang/String;", */
/* ")V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 67 */
/* .local p20, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;" */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 68 */
/* new-instance v6, Landroid/app/Notification$Builder; */
/* invoke-direct {v6, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V */
/* iget-wide v8, p2, Landroid/app/Notification;->when:J */
(( android.app.Notification$Builder ) v6 ).setWhen ( v8, v9 ); // invoke-virtual {v6, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;
/* move/from16 v0, p14 */
(( android.app.Notification$Builder ) v6 ).setShowWhen ( v0 ); // invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;
/* iget v7, p2, Landroid/app/Notification;->icon:I */
/* iget v8, p2, Landroid/app/Notification;->iconLevel:I */
(( android.app.Notification$Builder ) v6 ).setSmallIcon ( v7, v8 ); // invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;
v7 = this.contentView;
(( android.app.Notification$Builder ) v6 ).setContent ( v7 ); // invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
v7 = this.tickerText;
/* move-object/from16 v0, p6 */
(( android.app.Notification$Builder ) v6 ).setTicker ( v7, v0 ); // invoke-virtual {v6, v7, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
v7 = this.sound;
/* iget v8, p2, Landroid/app/Notification;->audioStreamType:I */
(( android.app.Notification$Builder ) v6 ).setSound ( v7, v8 ); // invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
v7 = this.vibrate;
(( android.app.Notification$Builder ) v6 ).setVibrate ( v7 ); // invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;
/* iget v7, p2, Landroid/app/Notification;->ledARGB:I */
/* iget v8, p2, Landroid/app/Notification;->ledOnMS:I */
/* iget v9, p2, Landroid/app/Notification;->ledOffMS:I */
(( android.app.Notification$Builder ) v6 ).setLights ( v7, v8, v9 ); // invoke-virtual {v6, v7, v8, v9}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;
/* iget v6, p2, Landroid/app/Notification;->flags:I */
/* and-int/lit8 v6, v6, 0x2 */
if ( v6 != null) { // if-eqz v6, :cond_0
int v6 = 1; // const/4 v6, 0x1
} // :goto_0
(( android.app.Notification$Builder ) v7 ).setOngoing ( v6 ); // invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;
/* iget v6, p2, Landroid/app/Notification;->flags:I */
/* and-int/lit8 v6, v6, 0x8 */
if ( v6 != null) { // if-eqz v6, :cond_1
int v6 = 1; // const/4 v6, 0x1
} // :goto_1
(( android.app.Notification$Builder ) v7 ).setOnlyAlertOnce ( v6 ); // invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
/* iget v6, p2, Landroid/app/Notification;->flags:I */
/* and-int/lit8 v6, v6, 0x10 */
if ( v6 != null) { // if-eqz v6, :cond_2
int v6 = 1; // const/4 v6, 0x1
} // :goto_2
(( android.app.Notification$Builder ) v7 ).setAutoCancel ( v6 ); // invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;
/* iget v7, p2, Landroid/app/Notification;->defaults:I */
(( android.app.Notification$Builder ) v6 ).setDefaults ( v7 ); // invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;
(( android.app.Notification$Builder ) v6 ).setContentTitle ( p3 ); // invoke-virtual {v6, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
(( android.app.Notification$Builder ) v6 ).setContentText ( p4 ); // invoke-virtual {v6, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
/* move-object/from16 v0, p17 */
(( android.app.Notification$Builder ) v6 ).setSubText ( v0 ); // invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
(( android.app.Notification$Builder ) v6 ).setContentInfo ( p5 ); // invoke-virtual {v6, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
/* move-object/from16 v0, p8 */
(( android.app.Notification$Builder ) v6 ).setContentIntent ( v0 ); // invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
v7 = this.deleteIntent;
(( android.app.Notification$Builder ) v6 ).setDeleteIntent ( v7 ); // invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
/* iget v6, p2, Landroid/app/Notification;->flags:I */
/* and-int/lit16 v6, v6, 0x80 */
if ( v6 != null) { // if-eqz v6, :cond_3
int v6 = 1; // const/4 v6, 0x1
} // :goto_3
/* move-object/from16 v0, p9 */
(( android.app.Notification$Builder ) v7 ).setFullScreenIntent ( v0, v6 ); // invoke-virtual {v7, v0, v6}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
/* move-object/from16 v0, p10 */
(( android.app.Notification$Builder ) v6 ).setLargeIcon ( v0 ); // invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
/* move/from16 v0, p7 */
(( android.app.Notification$Builder ) v6 ).setNumber ( v0 ); // invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;
/* move/from16 v0, p15 */
(( android.app.Notification$Builder ) v6 ).setUsesChronometer ( v0 ); // invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;
/* move/from16 v0, p16 */
(( android.app.Notification$Builder ) v6 ).setPriority ( v0 ); // invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;
/* move/from16 v0, p11 */
/* move/from16 v1, p12 */
/* move/from16 v2, p13 */
(( android.app.Notification$Builder ) v6 ).setProgress ( v0, v1, v2 ); // invoke-virtual {v6, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;
/* move/from16 v0, p18 */
(( android.app.Notification$Builder ) v6 ).setLocalOnly ( v0 ); // invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;
/* move-object/from16 v0, p21 */
(( android.app.Notification$Builder ) v6 ).setExtras ( v0 ); // invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
/* move-object/from16 v0, p25 */
(( android.app.Notification$Builder ) v6 ).setGroup ( v0 ); // invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;
/* move/from16 v0, p26 */
(( android.app.Notification$Builder ) v6 ).setGroupSummary ( v0 ); // invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;
/* move-object/from16 v0, p27 */
(( android.app.Notification$Builder ) v6 ).setSortKey ( v0 ); // invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;
/* move-object/from16 v0, p19 */
(( android.app.Notification$Builder ) v6 ).setCategory ( v0 ); // invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;
/* move/from16 v0, p22 */
(( android.app.Notification$Builder ) v6 ).setColor ( v0 ); // invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;
/* move/from16 v0, p23 */
(( android.app.Notification$Builder ) v6 ).setVisibility ( v0 ); // invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;
/* move-object/from16 v0, p24 */
(( android.app.Notification$Builder ) v6 ).setPublicVersion ( v0 ); // invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;
this.b = v6;
/* .line 103 */
/* invoke-virtual/range {p20 ..p20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator; */
/* .local v4, "i$":Ljava/util/Iterator; */
v6 = } // :goto_4
if ( v6 != null) { // if-eqz v6, :cond_4
/* check-cast v5, Ljava/lang/String; */
/* .line 104 */
/* .local v5, "person":Ljava/lang/String; */
v6 = this.b;
(( android.app.Notification$Builder ) v6 ).addPerson ( v5 ); // invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;
/* .line 68 */
} // .end local v4 # "i$":Ljava/util/Iterator;
} // .end local v5 # "person":Ljava/lang/String;
} // :cond_0
int v6 = 0; // const/4 v6, 0x0
/* goto/16 :goto_0 */
} // :cond_1
int v6 = 0; // const/4 v6, 0x0
/* goto/16 :goto_1 */
} // :cond_2
int v6 = 0; // const/4 v6, 0x0
/* goto/16 :goto_2 */
} // :cond_3
int v6 = 0; // const/4 v6, 0x0
/* .line 106 */
/* .restart local v4 # "i$":Ljava/util/Iterator; */
} // :cond_4
return;
} // .end method
/* # virtual methods */
public void addAction ( android.support.v4.app.NotificationCompatBase$Action p0 ) {
/* .locals 1 */
/* .param p1, "action" # Landroid/support/v4/app/NotificationCompatBase$Action; */
/* .prologue */
/* .line 110 */
v0 = this.b;
android.support.v4.app.NotificationCompatApi20 .addAction ( v0,p1 );
/* .line 111 */
return;
} // .end method
public android.app.Notification build ( ) {
/* .locals 1 */
/* .prologue */
/* .line 119 */
v0 = this.b;
(( android.app.Notification$Builder ) v0 ).build ( ); // invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
} // .end method
public android.app.Notification$Builder getBuilder ( ) {
/* .locals 1 */
/* .prologue */
/* .line 115 */
v0 = this.b;
} // .end method
