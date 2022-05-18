class android.support.v4.app.NotificationCompat$NotificationCompatImplKitKat extends android.support.v4.app.NotificationCompat$NotificationCompatImplJellybean {
	 /* .source "NotificationCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x8 */
/* name = "NotificationCompatImplKitKat" */
} // .end annotation
/* # direct methods */
 android.support.v4.app.NotificationCompat$NotificationCompatImplKitKat ( ) {
/* .locals 0 */
/* .prologue */
/* .line 638 */
/* invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplJellybean;-><init>()V */
return;
} // .end method
/* # virtual methods */
public android.app.Notification build ( android.support.v4.app.NotificationCompat$Builder p0 ) {
/* .locals 25 */
/* .param p1, "b" # Landroid/support/v4/app/NotificationCompat$Builder; */
/* .prologue */
/* .line 641 */
/* new-instance v1, Landroid/support/v4/app/NotificationCompatKitKat$Builder; */
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
v0 = this.mPeople;
/* move-object/from16 v20, v0 */
/* move-object/from16 v0, p1 */
v0 = this.mExtras;
/* move-object/from16 v21, v0 */
/* move-object/from16 v0, p1 */
v0 = this.mGroupKey;
/* move-object/from16 v22, v0 */
/* move-object/from16 v0, p1 */
/* iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupSummary:Z */
/* move/from16 v23, v0 */
/* move-object/from16 v0, p1 */
v0 = this.mSortKey;
/* move-object/from16 v24, v0 */
/* invoke-direct/range {v1 ..v24}, Landroid/support/v4/app/NotificationCompatKitKat$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/util/ArrayList;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V */
/* .line 647 */
/* .local v1, "builder":Landroid/support/v4/app/NotificationCompatKitKat$Builder; */
/* move-object/from16 v0, p1 */
v2 = this.mActions;
android.support.v4.app.NotificationCompat .access$000 ( v1,v2 );
/* .line 648 */
/* move-object/from16 v0, p1 */
v2 = this.mStyle;
android.support.v4.app.NotificationCompat .access$100 ( v1,v2 );
/* .line 649 */
(( android.support.v4.app.NotificationCompatKitKat$Builder ) v1 ).build ( ); // invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompatKitKat$Builder;->build()Landroid/app/Notification;
} // .end method
public android.support.v4.app.NotificationCompat$Action getAction ( android.app.Notification p0, Integer p1 ) {
/* .locals 2 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .param p2, "actionIndex" # I */
/* .prologue */
/* .line 664 */
v0 = android.support.v4.app.NotificationCompat$Action.FACTORY;
v1 = android.support.v4.app.RemoteInput.FACTORY;
android.support.v4.app.NotificationCompatKitKat .getAction ( p1,p2,v0,v1 );
/* check-cast v0, Landroid/support/v4/app/NotificationCompat$Action; */
} // .end method
public Integer getActionCount ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 659 */
v0 = android.support.v4.app.NotificationCompatKitKat .getActionCount ( p1 );
} // .end method
public android.os.Bundle getExtras ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 654 */
android.support.v4.app.NotificationCompatKitKat .getExtras ( p1 );
} // .end method
public java.lang.String getGroup ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 675 */
android.support.v4.app.NotificationCompatKitKat .getGroup ( p1 );
} // .end method
public Boolean getLocalOnly ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 670 */
v0 = android.support.v4.app.NotificationCompatKitKat .getLocalOnly ( p1 );
} // .end method
public java.lang.String getSortKey ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 685 */
android.support.v4.app.NotificationCompatKitKat .getSortKey ( p1 );
} // .end method
public Boolean isGroupSummary ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 680 */
v0 = android.support.v4.app.NotificationCompatKitKat .isGroupSummary ( p1 );
} // .end method
