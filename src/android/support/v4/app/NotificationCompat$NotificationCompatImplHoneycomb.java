class android.support.v4.app.NotificationCompat$NotificationCompatImplHoneycomb extends android.support.v4.app.NotificationCompat$NotificationCompatImplBase {
	 /* .source "NotificationCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x8 */
/* name = "NotificationCompatImplHoneycomb" */
} // .end annotation
/* # direct methods */
 android.support.v4.app.NotificationCompat$NotificationCompatImplHoneycomb ( ) {
/* .locals 0 */
/* .prologue */
/* .line 555 */
/* invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplBase;-><init>()V */
return;
} // .end method
/* # virtual methods */
public android.app.Notification build ( android.support.v4.app.NotificationCompat$Builder p0 ) {
/* .locals 10 */
/* .param p1, "b" # Landroid/support/v4/app/NotificationCompat$Builder; */
/* .prologue */
/* .line 558 */
v0 = this.mContext;
v1 = this.mNotification;
v2 = this.mContentTitle;
v3 = this.mContentText;
v4 = this.mContentInfo;
v5 = this.mTickerView;
/* iget v6, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I */
v7 = this.mContentIntent;
v8 = this.mFullScreenIntent;
v9 = this.mLargeIcon;
/* invoke-static/range {v0 ..v9}, Landroid/support/v4/app/NotificationCompatHoneycomb;->add(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;)Landroid/app/Notification; */
} // .end method
