class android.support.v4.app.NotificationCompatHoneycomb {
	 /* .source "NotificationCompatHoneycomb.java" */
	 /* # direct methods */
	 android.support.v4.app.NotificationCompatHoneycomb ( ) {
		 /* .locals 0 */
		 /* .prologue */
		 /* .line 25 */
		 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
		 return;
	 } // .end method
	 static android.app.Notification add ( android.content.Context p0, android.app.Notification p1, java.lang.CharSequence p2, java.lang.CharSequence p3, java.lang.CharSequence p4, android.widget.RemoteViews p5, Integer p6, android.app.PendingIntent p7, android.app.PendingIntent p8, android.graphics.Bitmap p9 ) {
		 /* .locals 5 */
		 /* .param p0, "context" # Landroid/content/Context; */
		 /* .param p1, "n" # Landroid/app/Notification; */
		 /* .param p2, "contentTitle" # Ljava/lang/CharSequence; */
		 /* .param p3, "contentText" # Ljava/lang/CharSequence; */
		 /* .param p4, "contentInfo" # Ljava/lang/CharSequence; */
		 /* .param p5, "tickerView" # Landroid/widget/RemoteViews; */
		 /* .param p6, "number" # I */
		 /* .param p7, "contentIntent" # Landroid/app/PendingIntent; */
		 /* .param p8, "fullScreenIntent" # Landroid/app/PendingIntent; */
		 /* .param p9, "largeIcon" # Landroid/graphics/Bitmap; */
		 /* .prologue */
		 /* .line 30 */
		 /* new-instance v1, Landroid/app/Notification$Builder; */
		 /* invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V */
		 /* iget-wide v2, p1, Landroid/app/Notification;->when:J */
		 (( android.app.Notification$Builder ) v1 ).setWhen ( v2, v3 ); // invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;
		 /* iget v2, p1, Landroid/app/Notification;->icon:I */
		 /* iget v3, p1, Landroid/app/Notification;->iconLevel:I */
		 (( android.app.Notification$Builder ) v1 ).setSmallIcon ( v2, v3 ); // invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;
		 v2 = this.contentView;
		 (( android.app.Notification$Builder ) v1 ).setContent ( v2 ); // invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
		 v2 = this.tickerText;
		 (( android.app.Notification$Builder ) v1 ).setTicker ( v2, p5 ); // invoke-virtual {v1, v2, p5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
		 v2 = this.sound;
		 /* iget v3, p1, Landroid/app/Notification;->audioStreamType:I */
		 (( android.app.Notification$Builder ) v1 ).setSound ( v2, v3 ); // invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
		 v2 = this.vibrate;
		 (( android.app.Notification$Builder ) v1 ).setVibrate ( v2 ); // invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;
		 /* iget v2, p1, Landroid/app/Notification;->ledARGB:I */
		 /* iget v3, p1, Landroid/app/Notification;->ledOnMS:I */
		 /* iget v4, p1, Landroid/app/Notification;->ledOffMS:I */
		 (( android.app.Notification$Builder ) v1 ).setLights ( v2, v3, v4 ); // invoke-virtual {v1, v2, v3, v4}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;
		 /* iget v1, p1, Landroid/app/Notification;->flags:I */
		 /* and-int/lit8 v1, v1, 0x2 */
		 if ( v1 != null) { // if-eqz v1, :cond_0
			 int v1 = 1; // const/4 v1, 0x1
		 } // :goto_0
		 (( android.app.Notification$Builder ) v2 ).setOngoing ( v1 ); // invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;
		 /* iget v1, p1, Landroid/app/Notification;->flags:I */
		 /* and-int/lit8 v1, v1, 0x8 */
		 if ( v1 != null) { // if-eqz v1, :cond_1
			 int v1 = 1; // const/4 v1, 0x1
		 } // :goto_1
		 (( android.app.Notification$Builder ) v2 ).setOnlyAlertOnce ( v1 ); // invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
		 /* iget v1, p1, Landroid/app/Notification;->flags:I */
		 /* and-int/lit8 v1, v1, 0x10 */
		 if ( v1 != null) { // if-eqz v1, :cond_2
			 int v1 = 1; // const/4 v1, 0x1
		 } // :goto_2
		 (( android.app.Notification$Builder ) v2 ).setAutoCancel ( v1 ); // invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;
		 /* iget v2, p1, Landroid/app/Notification;->defaults:I */
		 (( android.app.Notification$Builder ) v1 ).setDefaults ( v2 ); // invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;
		 (( android.app.Notification$Builder ) v1 ).setContentTitle ( p2 ); // invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
		 (( android.app.Notification$Builder ) v1 ).setContentText ( p3 ); // invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
		 (( android.app.Notification$Builder ) v1 ).setContentInfo ( p4 ); // invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
		 (( android.app.Notification$Builder ) v1 ).setContentIntent ( p7 ); // invoke-virtual {v1, p7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
		 v2 = this.deleteIntent;
		 (( android.app.Notification$Builder ) v1 ).setDeleteIntent ( v2 ); // invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
		 /* iget v1, p1, Landroid/app/Notification;->flags:I */
		 /* and-int/lit16 v1, v1, 0x80 */
		 if ( v1 != null) { // if-eqz v1, :cond_3
			 int v1 = 1; // const/4 v1, 0x1
		 } // :goto_3
		 (( android.app.Notification$Builder ) v2 ).setFullScreenIntent ( p8, v1 ); // invoke-virtual {v2, p8, v1}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
		 (( android.app.Notification$Builder ) v1 ).setLargeIcon ( p9 ); // invoke-virtual {v1, p9}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
		 (( android.app.Notification$Builder ) v1 ).setNumber ( p6 ); // invoke-virtual {v1, p6}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;
		 /* .line 52 */
		 /* .local v0, "b":Landroid/app/Notification$Builder; */
		 (( android.app.Notification$Builder ) v0 ).getNotification ( ); // invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;
		 /* .line 30 */
	 } // .end local v0 # "b":Landroid/app/Notification$Builder;
} // :cond_0
int v1 = 0; // const/4 v1, 0x0
} // :cond_1
int v1 = 0; // const/4 v1, 0x0
} // :cond_2
int v1 = 0; // const/4 v1, 0x0
} // :cond_3
int v1 = 0; // const/4 v1, 0x0
} // .end method
