class android.support.v4.app.NotificationCompat$NotificationCompatImplGingerbread extends android.support.v4.app.NotificationCompat$NotificationCompatImplBase {
	 /* .source "NotificationCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x8 */
/* name = "NotificationCompatImplGingerbread" */
} // .end annotation
/* # direct methods */
 android.support.v4.app.NotificationCompat$NotificationCompatImplGingerbread ( ) {
/* .locals 0 */
/* .prologue */
/* .line 539 */
/* invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplBase;-><init>()V */
return;
} // .end method
/* # virtual methods */
public android.app.Notification build ( android.support.v4.app.NotificationCompat$Builder p0 ) {
/* .locals 6 */
/* .param p1, "b" # Landroid/support/v4/app/NotificationCompat$Builder; */
/* .prologue */
/* .line 542 */
v0 = this.mNotification;
/* .line 543 */
/* .local v0, "result":Landroid/app/Notification; */
v1 = this.mContext;
v2 = this.mContentTitle;
v3 = this.mContentText;
v4 = this.mContentIntent;
(( android.app.Notification ) v0 ).setLatestEventInfo ( v1, v2, v3, v4 ); // invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
/* .line 545 */
v1 = this.mContext;
v2 = this.mContentTitle;
v3 = this.mContentText;
v4 = this.mContentIntent;
v5 = this.mFullScreenIntent;
/* invoke-static/range {v0 ..v5}, Landroid/support/v4/app/NotificationCompatGingerbread;->add(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification; */
/* .line 548 */
/* iget v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I */
/* if-lez v1, :cond_0 */
/* .line 549 */
/* iget v1, v0, Landroid/app/Notification;->flags:I */
/* or-int/lit16 v1, v1, 0x80 */
/* iput v1, v0, Landroid/app/Notification;->flags:I */
/* .line 551 */
} // :cond_0
} // .end method
