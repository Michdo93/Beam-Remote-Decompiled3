class android.support.v4.app.NotificationCompat$NotificationCompatImplJellybean extends android.support.v4.app.NotificationCompat$NotificationCompatImplBase {
	 /* .source "NotificationCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x8 */
/* name = "NotificationCompatImplJellybean" */
} // .end annotation
/* # direct methods */
 android.support.v4.app.NotificationCompat$NotificationCompatImplJellybean ( ) {
/* .locals 0 */
/* .prologue */
/* .line 574 */
/* invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplBase;-><init>()V */
return;
} // .end method
/* # virtual methods */
public android.app.Notification build ( android.support.v4.app.NotificationCompat$Builder p0 ) {
/* .locals 23 */
/* .param p1, "b" # Landroid/support/v4/app/NotificationCompat$Builder; */
/* .prologue */
/* .line 577 */
/* new-instance v1, Landroid/support/v4/app/NotificationCompatJellybean$Builder; */
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
/* iget-boolean v15, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z */
/* move-object/from16 v0, p1 */
/* iget v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I */
/* move/from16 v16, v0 */
/* move-object/from16 v0, p1 */
v0 = this.mSubText;
/* move-object/from16 v17, v0 */
/* move-object/from16 v0, p1 */
/* iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLocalOnly:Z */
/* move/from16 v18, v0 */
/* move-object/from16 v0, p1 */
v0 = this.mExtras;
/* move-object/from16 v19, v0 */
/* move-object/from16 v0, p1 */
v0 = this.mGroupKey;
/* move-object/from16 v20, v0 */
/* move-object/from16 v0, p1 */
/* iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupSummary:Z */
/* move/from16 v21, v0 */
/* move-object/from16 v0, p1 */
v0 = this.mSortKey;
/* move-object/from16 v22, v0 */
/* invoke-direct/range {v1 ..v22}, Landroid/support/v4/app/NotificationCompatJellybean$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZILjava/lang/CharSequence;ZLandroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V */
/* .line 583 */
/* .local v1, "builder":Landroid/support/v4/app/NotificationCompatJellybean$Builder; */
/* move-object/from16 v0, p1 */
v2 = this.mActions;
android.support.v4.app.NotificationCompat .access$000 ( v1,v2 );
/* .line 584 */
/* move-object/from16 v0, p1 */
v2 = this.mStyle;
android.support.v4.app.NotificationCompat .access$100 ( v1,v2 );
/* .line 585 */
(( android.support.v4.app.NotificationCompatJellybean$Builder ) v1 ).build ( ); // invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompatJellybean$Builder;->build()Landroid/app/Notification;
} // .end method
public android.support.v4.app.NotificationCompat$Action getAction ( android.app.Notification p0, Integer p1 ) {
/* .locals 2 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .param p2, "actionIndex" # I */
/* .prologue */
/* .line 600 */
v0 = android.support.v4.app.NotificationCompat$Action.FACTORY;
v1 = android.support.v4.app.RemoteInput.FACTORY;
android.support.v4.app.NotificationCompatJellybean .getAction ( p1,p2,v0,v1 );
/* check-cast v0, Landroid/support/v4/app/NotificationCompat$Action; */
} // .end method
public Integer getActionCount ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 595 */
v0 = android.support.v4.app.NotificationCompatJellybean .getActionCount ( p1 );
} // .end method
public android.support.v4.app.NotificationCompat$Action getActionsFromParcelableArrayList ( java.util.ArrayList p0 ) {
/* .locals 2 */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/os/Parcelable;", */
/* ">;)[", */
/* "Landroid/support/v4/app/NotificationCompat$Action;" */
/* } */
} // .end annotation
/* .prologue */
/* .line 607 */
/* .local p1, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;" */
v0 = android.support.v4.app.NotificationCompat$Action.FACTORY;
v1 = android.support.v4.app.RemoteInput.FACTORY;
android.support.v4.app.NotificationCompatJellybean .getActionsFromParcelableArrayList ( p1,v0,v1 );
/* check-cast v0, [Landroid/support/v4/app/NotificationCompat$Action; */
/* check-cast v0, [Landroid/support/v4/app/NotificationCompat$Action; */
} // .end method
public android.os.Bundle getExtras ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 590 */
android.support.v4.app.NotificationCompatJellybean .getExtras ( p1 );
} // .end method
public java.lang.String getGroup ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 624 */
android.support.v4.app.NotificationCompatJellybean .getGroup ( p1 );
} // .end method
public Boolean getLocalOnly ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 619 */
v0 = android.support.v4.app.NotificationCompatJellybean .getLocalOnly ( p1 );
} // .end method
public java.util.ArrayList getParcelableArrayListForActions ( android.support.v4.app.NotificationCompat$Action[] p0 ) {
/* .locals 1 */
/* .param p1, "actions" # [Landroid/support/v4/app/NotificationCompat$Action; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "([", */
/* "Landroid/support/v4/app/NotificationCompat$Action;", */
/* ")", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/os/Parcelable;", */
/* ">;" */
/* } */
} // .end annotation
/* .prologue */
/* .line 614 */
android.support.v4.app.NotificationCompatJellybean .getParcelableArrayListForActions ( p1 );
} // .end method
public java.lang.String getSortKey ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 634 */
android.support.v4.app.NotificationCompatJellybean .getSortKey ( p1 );
} // .end method
public Boolean isGroupSummary ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 629 */
v0 = android.support.v4.app.NotificationCompatJellybean .isGroupSummary ( p1 );
} // .end method
