class android.support.v4.app.NotificationCompat$NotificationCompatImplIceCreamSandwich extends android.support.v4.app.NotificationCompat$NotificationCompatImplBase {
	 /* .source "NotificationCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x8 */
/* name = "NotificationCompatImplIceCreamSandwich" */
} // .end annotation
/* # direct methods */
 android.support.v4.app.NotificationCompat$NotificationCompatImplIceCreamSandwich ( ) {
/* .locals 0 */
/* .prologue */
/* .line 564 */
/* invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplBase;-><init>()V */
return;
} // .end method
/* # virtual methods */
public android.app.Notification build ( android.support.v4.app.NotificationCompat$Builder p0 ) {
/* .locals 13 */
/* .param p1, "b" # Landroid/support/v4/app/NotificationCompat$Builder; */
/* .prologue */
/* .line 567 */
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
/* iget v10, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressMax:I */
/* iget v11, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mProgress:I */
/* iget-boolean v12, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressIndeterminate:Z */
/* invoke-static/range {v0 ..v12}, Landroid/support/v4/app/NotificationCompatIceCreamSandwich;->add(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)Landroid/app/Notification; */
} // .end method
