class android.support.v4.app.NotificationCompatIceCreamSandwich {
	 /* .source "NotificationCompatIceCreamSandwich.java" */
	 /* # direct methods */
	 android.support.v4.app.NotificationCompatIceCreamSandwich ( ) {
		 /* .locals 0 */
		 /* .prologue */
		 /* .line 25 */
		 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
		 return;
	 } // .end method
	 static android.app.Notification add ( android.content.Context p0, android.app.Notification p1, java.lang.CharSequence p2, java.lang.CharSequence p3, java.lang.CharSequence p4, android.widget.RemoteViews p5, Integer p6, android.app.PendingIntent p7, android.app.PendingIntent p8, android.graphics.Bitmap p9, Integer p10, Integer p11, Boolean p12 ) {
		 /* .locals 9 */
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
		 /* .param p10, "progressMax" # I */
		 /* .param p11, "progress" # I */
		 /* .param p12, "progressIndeterminate" # Z */
		 /* .prologue */
		 /* .line 31 */
		 /* new-instance v5, Landroid/app/Notification$Builder; */
		 /* invoke-direct {v5, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V */
		 /* iget-wide v6, p1, Landroid/app/Notification;->when:J */
		 (( android.app.Notification$Builder ) v5 ).setWhen ( v6, v7 ); // invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;
		 /* iget v6, p1, Landroid/app/Notification;->icon:I */
		 /* iget v7, p1, Landroid/app/Notification;->iconLevel:I */
		 (( android.app.Notification$Builder ) v5 ).setSmallIcon ( v6, v7 ); // invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;
		 v6 = this.contentView;
		 (( android.app.Notification$Builder ) v5 ).setContent ( v6 ); // invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
		 v6 = this.tickerText;
		 (( android.app.Notification$Builder ) v5 ).setTicker ( v6, p5 ); // invoke-virtual {v5, v6, p5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
		 v6 = this.sound;
		 /* iget v7, p1, Landroid/app/Notification;->audioStreamType:I */
		 (( android.app.Notification$Builder ) v5 ).setSound ( v6, v7 ); // invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
		 v6 = this.vibrate;
		 (( android.app.Notification$Builder ) v5 ).setVibrate ( v6 ); // invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;
		 /* iget v6, p1, Landroid/app/Notification;->ledARGB:I */
		 /* iget v7, p1, Landroid/app/Notification;->ledOnMS:I */
		 /* iget v8, p1, Landroid/app/Notification;->ledOffMS:I */
		 (( android.app.Notification$Builder ) v5 ).setLights ( v6, v7, v8 ); // invoke-virtual {v5, v6, v7, v8}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;
		 /* iget v5, p1, Landroid/app/Notification;->flags:I */
		 /* and-int/lit8 v5, v5, 0x2 */
		 if ( v5 != null) { // if-eqz v5, :cond_0
			 int v5 = 1; // const/4 v5, 0x1
		 } // :goto_0
		 (( android.app.Notification$Builder ) v6 ).setOngoing ( v5 ); // invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;
		 /* iget v5, p1, Landroid/app/Notification;->flags:I */
		 /* and-int/lit8 v5, v5, 0x8 */
		 if ( v5 != null) { // if-eqz v5, :cond_1
			 int v5 = 1; // const/4 v5, 0x1
		 } // :goto_1
		 (( android.app.Notification$Builder ) v6 ).setOnlyAlertOnce ( v5 ); // invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
		 /* iget v5, p1, Landroid/app/Notification;->flags:I */
		 /* and-int/lit8 v5, v5, 0x10 */
		 if ( v5 != null) { // if-eqz v5, :cond_2
			 int v5 = 1; // const/4 v5, 0x1
		 } // :goto_2
		 (( android.app.Notification$Builder ) v6 ).setAutoCancel ( v5 ); // invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;
		 /* iget v6, p1, Landroid/app/Notification;->defaults:I */
		 (( android.app.Notification$Builder ) v5 ).setDefaults ( v6 ); // invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;
		 (( android.app.Notification$Builder ) v5 ).setContentTitle ( p2 ); // invoke-virtual {v5, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
		 (( android.app.Notification$Builder ) v5 ).setContentText ( p3 ); // invoke-virtual {v5, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
		 (( android.app.Notification$Builder ) v5 ).setContentInfo ( p4 ); // invoke-virtual {v5, p4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
		 /* move-object/from16 v0, p7 */
		 (( android.app.Notification$Builder ) v5 ).setContentIntent ( v0 ); // invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
		 v6 = this.deleteIntent;
		 (( android.app.Notification$Builder ) v5 ).setDeleteIntent ( v6 ); // invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
		 /* iget v5, p1, Landroid/app/Notification;->flags:I */
		 /* and-int/lit16 v5, v5, 0x80 */
		 if ( v5 != null) { // if-eqz v5, :cond_3
			 int v5 = 1; // const/4 v5, 0x1
		 } // :goto_3
		 /* move-object/from16 v0, p8 */
		 (( android.app.Notification$Builder ) v6 ).setFullScreenIntent ( v0, v5 ); // invoke-virtual {v6, v0, v5}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
		 /* move-object/from16 v0, p9 */
		 (( android.app.Notification$Builder ) v5 ).setLargeIcon ( v0 ); // invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
		 (( android.app.Notification$Builder ) v5 ).setNumber ( p6 ); // invoke-virtual {v5, p6}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;
		 /* move/from16 v0, p10 */
		 /* move/from16 v1, p11 */
		 /* move/from16 v2, p12 */
		 (( android.app.Notification$Builder ) v5 ).setProgress ( v0, v1, v2 ); // invoke-virtual {v5, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;
		 /* .line 54 */
		 /* .local v4, "b":Landroid/app/Notification$Builder; */
		 (( android.app.Notification$Builder ) v4 ).getNotification ( ); // invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;
		 /* .line 31 */
	 } // .end local v4 # "b":Landroid/app/Notification$Builder;
} // :cond_0
int v5 = 0; // const/4 v5, 0x0
} // :cond_1
int v5 = 0; // const/4 v5, 0x0
} // :cond_2
int v5 = 0; // const/4 v5, 0x0
} // :cond_3
int v5 = 0; // const/4 v5, 0x0
} // .end method
