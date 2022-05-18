public class android.support.v4.app.NotificationCompatJellybean$Builder implements android.support.v4.app.NotificationBuilderWithBuilderAccessor implements android.support.v4.app.NotificationBuilderWithActions {
	 /* .source "NotificationCompatJellybean.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationCompatJellybean; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x9 */
/* name = "Builder" */
} // .end annotation
/* # instance fields */
private android.app.Notification$Builder b;
private java.util.List mActionExtrasList;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/List", */
/* "<", */
/* "Landroid/os/Bundle;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final android.os.Bundle mExtras;
/* # direct methods */
public android.support.v4.app.NotificationCompatJellybean$Builder ( ) {
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
/* .param p14, "useChronometer" # Z */
/* .param p15, "priority" # I */
/* .param p16, "subText" # Ljava/lang/CharSequence; */
/* .param p17, "localOnly" # Z */
/* .param p18, "extras" # Landroid/os/Bundle; */
/* .param p19, "groupKey" # Ljava/lang/String; */
/* .param p20, "groupSummary" # Z */
/* .param p21, "sortKey" # Ljava/lang/String; */
/* .prologue */
/* .line 76 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 68 */
/* new-instance v4, Ljava/util/ArrayList; */
/* invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V */
this.mActionExtrasList = v4;
/* .line 77 */
/* new-instance v4, Landroid/app/Notification$Builder; */
/* invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V */
/* iget-wide v6, p2, Landroid/app/Notification;->when:J */
(( android.app.Notification$Builder ) v4 ).setWhen ( v6, v7 ); // invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;
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
if ( v4 != null) { // if-eqz v4, :cond_4
int v4 = 1; // const/4 v4, 0x1
} // :goto_0
(( android.app.Notification$Builder ) v5 ).setOngoing ( v4 ); // invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;
/* iget v4, p2, Landroid/app/Notification;->flags:I */
/* and-int/lit8 v4, v4, 0x8 */
if ( v4 != null) { // if-eqz v4, :cond_5
int v4 = 1; // const/4 v4, 0x1
} // :goto_1
(( android.app.Notification$Builder ) v5 ).setOnlyAlertOnce ( v4 ); // invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
/* iget v4, p2, Landroid/app/Notification;->flags:I */
/* and-int/lit8 v4, v4, 0x10 */
if ( v4 != null) { // if-eqz v4, :cond_6
int v4 = 1; // const/4 v4, 0x1
} // :goto_2
(( android.app.Notification$Builder ) v5 ).setAutoCancel ( v4 ); // invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;
/* iget v5, p2, Landroid/app/Notification;->defaults:I */
(( android.app.Notification$Builder ) v4 ).setDefaults ( v5 ); // invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;
(( android.app.Notification$Builder ) v4 ).setContentTitle ( p3 ); // invoke-virtual {v4, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
(( android.app.Notification$Builder ) v4 ).setContentText ( p4 ); // invoke-virtual {v4, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
/* move-object/from16 v0, p16 */
(( android.app.Notification$Builder ) v4 ).setSubText ( v0 ); // invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
(( android.app.Notification$Builder ) v4 ).setContentInfo ( p5 ); // invoke-virtual {v4, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
/* move-object/from16 v0, p8 */
(( android.app.Notification$Builder ) v4 ).setContentIntent ( v0 ); // invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
v5 = this.deleteIntent;
(( android.app.Notification$Builder ) v4 ).setDeleteIntent ( v5 ); // invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
/* iget v4, p2, Landroid/app/Notification;->flags:I */
/* and-int/lit16 v4, v4, 0x80 */
if ( v4 != null) { // if-eqz v4, :cond_7
int v4 = 1; // const/4 v4, 0x1
} // :goto_3
/* move-object/from16 v0, p9 */
(( android.app.Notification$Builder ) v5 ).setFullScreenIntent ( v0, v4 ); // invoke-virtual {v5, v0, v4}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
/* move-object/from16 v0, p10 */
(( android.app.Notification$Builder ) v4 ).setLargeIcon ( v0 ); // invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
(( android.app.Notification$Builder ) v4 ).setNumber ( p7 ); // invoke-virtual {v4, p7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;
/* move/from16 v0, p14 */
(( android.app.Notification$Builder ) v4 ).setUsesChronometer ( v0 ); // invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;
/* move/from16 v0, p15 */
(( android.app.Notification$Builder ) v4 ).setPriority ( v0 ); // invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;
/* move/from16 v0, p11 */
/* move/from16 v1, p12 */
/* move/from16 v2, p13 */
(( android.app.Notification$Builder ) v4 ).setProgress ( v0, v1, v2 ); // invoke-virtual {v4, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;
this.b = v4;
/* .line 102 */
/* new-instance v4, Landroid/os/Bundle; */
/* invoke-direct {v4}, Landroid/os/Bundle;-><init>()V */
this.mExtras = v4;
/* .line 103 */
if ( p18 != null) { // if-eqz p18, :cond_0
/* .line 104 */
v4 = this.mExtras;
/* move-object/from16 v0, p18 */
(( android.os.Bundle ) v4 ).putAll ( v0 ); // invoke-virtual {v4, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
/* .line 106 */
} // :cond_0
if ( p17 != null) { // if-eqz p17, :cond_1
/* .line 107 */
v4 = this.mExtras;
final String v5 = "android.support.localOnly"; // const-string v5, "android.support.localOnly"
int v6 = 1; // const/4 v6, 0x1
(( android.os.Bundle ) v4 ).putBoolean ( v5, v6 ); // invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
/* .line 109 */
} // :cond_1
if ( p19 != null) { // if-eqz p19, :cond_2
/* .line 110 */
v4 = this.mExtras;
final String v5 = "android.support.groupKey"; // const-string v5, "android.support.groupKey"
/* move-object/from16 v0, p19 */
(( android.os.Bundle ) v4 ).putString ( v5, v0 ); // invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
/* .line 111 */
if ( p20 != null) { // if-eqz p20, :cond_8
/* .line 112 */
v4 = this.mExtras;
final String v5 = "android.support.isGroupSummary"; // const-string v5, "android.support.isGroupSummary"
int v6 = 1; // const/4 v6, 0x1
(( android.os.Bundle ) v4 ).putBoolean ( v5, v6 ); // invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
/* .line 117 */
} // :cond_2
} // :goto_4
if ( p21 != null) { // if-eqz p21, :cond_3
/* .line 118 */
v4 = this.mExtras;
final String v5 = "android.support.sortKey"; // const-string v5, "android.support.sortKey"
/* move-object/from16 v0, p21 */
(( android.os.Bundle ) v4 ).putString ( v5, v0 ); // invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
/* .line 120 */
} // :cond_3
return;
/* .line 77 */
} // :cond_4
int v4 = 0; // const/4 v4, 0x0
/* goto/16 :goto_0 */
} // :cond_5
int v4 = 0; // const/4 v4, 0x0
/* goto/16 :goto_1 */
} // :cond_6
int v4 = 0; // const/4 v4, 0x0
/* goto/16 :goto_2 */
} // :cond_7
int v4 = 0; // const/4 v4, 0x0
/* .line 114 */
} // :cond_8
v4 = this.mExtras;
final String v5 = "android.support.useSideChannel"; // const-string v5, "android.support.useSideChannel"
int v6 = 1; // const/4 v6, 0x1
(( android.os.Bundle ) v4 ).putBoolean ( v5, v6 ); // invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
} // .end method
/* # virtual methods */
public void addAction ( android.support.v4.app.NotificationCompatBase$Action p0 ) {
/* .locals 2 */
/* .param p1, "action" # Landroid/support/v4/app/NotificationCompatBase$Action; */
/* .prologue */
/* .line 124 */
v0 = this.mActionExtrasList;
v1 = this.b;
android.support.v4.app.NotificationCompatJellybean .writeActionAndGetExtras ( v1,p1 );
/* .line 125 */
return;
} // .end method
public android.app.Notification build ( ) {
/* .locals 8 */
/* .prologue */
/* .line 133 */
v6 = this.b;
(( android.app.Notification$Builder ) v6 ).build ( ); // invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
/* .line 136 */
/* .local v5, "notif":Landroid/app/Notification; */
android.support.v4.app.NotificationCompatJellybean .getExtras ( v5 );
/* .line 137 */
/* .local v1, "extras":Landroid/os/Bundle; */
/* new-instance v4, Landroid/os/Bundle; */
v6 = this.mExtras;
/* invoke-direct {v4, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V */
/* .line 138 */
/* .local v4, "mergeBundle":Landroid/os/Bundle; */
v6 = this.mExtras;
(( android.os.Bundle ) v6 ).keySet ( ); // invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
/* .local v2, "i$":Ljava/util/Iterator; */
} // :cond_0
v6 = } // :goto_0
if ( v6 != null) { // if-eqz v6, :cond_1
/* check-cast v3, Ljava/lang/String; */
/* .line 139 */
/* .local v3, "key":Ljava/lang/String; */
v6 = (( android.os.Bundle ) v1 ).containsKey ( v3 ); // invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
if ( v6 != null) { // if-eqz v6, :cond_0
/* .line 140 */
(( android.os.Bundle ) v4 ).remove ( v3 ); // invoke-virtual {v4, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
/* .line 143 */
} // .end local v3 # "key":Ljava/lang/String;
} // :cond_1
(( android.os.Bundle ) v1 ).putAll ( v4 ); // invoke-virtual {v1, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
/* .line 144 */
v6 = this.mActionExtrasList;
android.support.v4.app.NotificationCompatJellybean .buildActionExtrasMap ( v6 );
/* .line 145 */
/* .local v0, "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;" */
if ( v0 != null) { // if-eqz v0, :cond_2
/* .line 147 */
android.support.v4.app.NotificationCompatJellybean .getExtras ( v5 );
final String v7 = "android.support.actionExtras"; // const-string v7, "android.support.actionExtras"
(( android.os.Bundle ) v6 ).putSparseParcelableArray ( v7, v0 ); // invoke-virtual {v6, v7, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
/* .line 149 */
} // :cond_2
} // .end method
public android.app.Notification$Builder getBuilder ( ) {
/* .locals 1 */
/* .prologue */
/* .line 129 */
v0 = this.b;
} // .end method
