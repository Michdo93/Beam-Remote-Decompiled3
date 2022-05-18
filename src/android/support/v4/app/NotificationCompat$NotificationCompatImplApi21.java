class android.support.v4.app.NotificationCompat$NotificationCompatImplApi21 extends android.support.v4.app.NotificationCompat$NotificationCompatImplApi20 {
	 /* .source "NotificationCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x8 */
/* name = "NotificationCompatImplApi21" */
} // .end annotation
/* # direct methods */
 android.support.v4.app.NotificationCompat$NotificationCompatImplApi21 ( ) {
/* .locals 0 */
/* .prologue */
/* .line 743 */
/* invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplApi20;-><init>()V */
return;
} // .end method
/* # virtual methods */
public android.app.Notification build ( android.support.v4.app.NotificationCompat$Builder p0 ) {
/* .locals 29 */
/* .param p1, "b" # Landroid/support/v4/app/NotificationCompat$Builder; */
/* .prologue */
/* .line 746 */
/* new-instance v1, Landroid/support/v4/app/NotificationCompatApi21$Builder; */
/* move-object/from16 v0, p1 */
v2 = this.mContext;
/* move-object/from16 v0, p1 */
v3 = this.mNotification;
/* move-object/from16 v0, p1 */
v4 = this.mContentTitle;
/* move-object/from16 v0, p1 */
v5 = this.mContentText;
/* move-object/from16 v0, p1 */
v6 = this.mContentInfo;
/* move-object/from16 v0, p1 */
v7 = this.mTickerView;
/* move-object/from16 v0, p1 */
/* iget v8, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I */
/* move-object/from16 v0, p1 */
v9 = this.mContentIntent;
/* move-object/from16 v0, p1 */
v10 = this.mFullScreenIntent;
/* move-object/from16 v0, p1 */
v11 = this.mLargeIcon;
/* move-object/from16 v0, p1 */
/* iget v12, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressMax:I */
/* move-object/from16 v0, p1 */
/* iget v13, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgress:I */
/* move-object/from16 v0, p1 */
/* iget-boolean v14, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressIndeterminate:Z */
/* move-object/from16 v0, p1 */
/* iget-boolean v15, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mShowWhen:Z */
/* move-object/from16 v0, p1 */
/* iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z */
/* move/from16 v16, v0 */
/* move-object/from16 v0, p1 */
/* iget v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I */
/* move/from16 v17, v0 */
/* move-object/from16 v0, p1 */
v0 = this.mSubText;
/* move-object/from16 v18, v0 */
/* move-object/from16 v0, p1 */
/* iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLocalOnly:Z */
/* move/from16 v19, v0 */
/* move-object/from16 v0, p1 */
v0 = this.mCategory;
/* move-object/from16 v20, v0 */
/* move-object/from16 v0, p1 */
v0 = this.mPeople;
/* move-object/from16 v21, v0 */
/* move-object/from16 v0, p1 */
v0 = this.mExtras;
/* move-object/from16 v22, v0 */
/* move-object/from16 v0, p1 */
/* iget v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mColor:I */
/* move/from16 v23, v0 */
/* move-object/from16 v0, p1 */
/* iget v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mVisibility:I */
/* move/from16 v24, v0 */
/* move-object/from16 v0, p1 */
v0 = this.mPublicVersion;
/* move-object/from16 v25, v0 */
/* move-object/from16 v0, p1 */
v0 = this.mGroupKey;
/* move-object/from16 v26, v0 */
/* move-object/from16 v0, p1 */
/* iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupSummary:Z */
/* move/from16 v27, v0 */
/* move-object/from16 v0, p1 */
v0 = this.mSortKey;
/* move-object/from16 v28, v0 */
/* invoke-direct/range {v1 ..v28}, Landroid/support/v4/app/NotificationCompatApi21$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;)V */
/* .line 753 */
/* .local v1, "builder":Landroid/support/v4/app/NotificationCompatApi21$Builder; */
/* move-object/from16 v0, p1 */
v2 = this.mActions;
android.support.v4.app.NotificationCompat .access$000 ( v1,v2 );
/* .line 754 */
/* move-object/from16 v0, p1 */
v2 = this.mStyle;
android.support.v4.app.NotificationCompat .access$100 ( v1,v2 );
/* .line 755 */
(( android.support.v4.app.NotificationCompatApi21$Builder ) v1 ).build ( ); // invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompatApi21$Builder;->build()Landroid/app/Notification;
} // .end method
public android.os.Bundle getBundleForUnreadConversation ( android.support.v4.app.NotificationCompatBase$UnreadConversation p0 ) {
/* .locals 1 */
/* .param p1, "uc" # Landroid/support/v4/app/NotificationCompatBase$UnreadConversation; */
/* .prologue */
/* .line 765 */
android.support.v4.app.NotificationCompatApi21 .getBundleForUnreadConversation ( p1 );
} // .end method
public java.lang.String getCategory ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p1, "notif" # Landroid/app/Notification; */
/* .prologue */
/* .line 760 */
android.support.v4.app.NotificationCompatApi21 .getCategory ( p1 );
} // .end method
public android.support.v4.app.NotificationCompatBase$UnreadConversation getUnreadConversationFromBundle ( android.os.Bundle p0, android.support.v4.app.NotificationCompatBase$UnreadConversation$Factory p1, android.support.v4.app.RemoteInputCompatBase$RemoteInput$Factory p2 ) {
/* .locals 1 */
/* .param p1, "b" # Landroid/os/Bundle; */
/* .param p2, "factory" # Landroid/support/v4/app/NotificationCompatBase$UnreadConversation$Factory; */
/* .param p3, "remoteInputFactory" # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory; */
/* .prologue */
/* .line 772 */
android.support.v4.app.NotificationCompatApi21 .getUnreadConversationFromBundle ( p1,p2,p3 );
} // .end method
