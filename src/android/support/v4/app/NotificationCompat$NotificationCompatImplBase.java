class android.support.v4.app.NotificationCompat$NotificationCompatImplBase implements android.support.v4.app.NotificationCompat$NotificationCompatImpl {
	 /* .source "NotificationCompat.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x8 */
/* name = "NotificationCompatImplBase" */
} // .end annotation
/* # direct methods */
 android.support.v4.app.NotificationCompat$NotificationCompatImplBase ( ) {
/* .locals 0 */
/* .prologue */
/* .line 462 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
/* # virtual methods */
public android.app.Notification build ( android.support.v4.app.NotificationCompat$Builder p0 ) {
/* .locals 5 */
/* .param p1, "b" # Landroid/support/v4/app/NotificationCompat$Builder; */
/* .prologue */
/* .line 465 */
v0 = this.mNotification;
/* .line 466 */
/* .local v0, "result":Landroid/app/Notification; */
v1 = this.mContext;
v2 = this.mContentTitle;
v3 = this.mContentText;
v4 = this.mContentIntent;
(( android.app.Notification ) v0 ).setLatestEventInfo ( v1, v2, v3, v4 ); // invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
/* .line 469 */
/* iget v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I */
/* if-lez v1, :cond_0 */
/* .line 470 */
/* iget v1, v0, Landroid/app/Notification;->flags:I */
/* or-int/lit16 v1, v1, 0x80 */
/* iput v1, v0, Landroid/app/Notification;->flags:I */
/* .line 472 */
} // :cond_0
} // .end method
public android.support.v4.app.NotificationCompat$Action getAction ( android.app.Notification p0, Integer p1 ) {
/* .locals 1 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .param p2, "actionIndex" # I */
/* .prologue */
/* .line 487 */
int v0 = 0; // const/4 v0, 0x0
} // .end method
public Integer getActionCount ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 482 */
int v0 = 0; // const/4 v0, 0x0
} // .end method
public android.support.v4.app.NotificationCompat$Action getActionsFromParcelableArrayList ( java.util.ArrayList p0 ) {
/* .locals 1 */
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
/* .line 493 */
/* .local p1, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;" */
int v0 = 0; // const/4 v0, 0x0
} // .end method
public android.os.Bundle getBundleForUnreadConversation ( android.support.v4.app.NotificationCompatBase$UnreadConversation p0 ) {
/* .locals 1 */
/* .param p1, "uc" # Landroid/support/v4/app/NotificationCompatBase$UnreadConversation; */
/* .prologue */
/* .line 528 */
int v0 = 0; // const/4 v0, 0x0
} // .end method
public java.lang.String getCategory ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 503 */
int v0 = 0; // const/4 v0, 0x0
} // .end method
public android.os.Bundle getExtras ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 477 */
int v0 = 0; // const/4 v0, 0x0
} // .end method
public java.lang.String getGroup ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 513 */
int v0 = 0; // const/4 v0, 0x0
} // .end method
public Boolean getLocalOnly ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 508 */
int v0 = 0; // const/4 v0, 0x0
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
/* .line 498 */
int v0 = 0; // const/4 v0, 0x0
} // .end method
public java.lang.String getSortKey ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 523 */
int v0 = 0; // const/4 v0, 0x0
} // .end method
public android.support.v4.app.NotificationCompatBase$UnreadConversation getUnreadConversationFromBundle ( android.os.Bundle p0, android.support.v4.app.NotificationCompatBase$UnreadConversation$Factory p1, android.support.v4.app.RemoteInputCompatBase$RemoteInput$Factory p2 ) {
/* .locals 1 */
/* .param p1, "b" # Landroid/os/Bundle; */
/* .param p2, "factory" # Landroid/support/v4/app/NotificationCompatBase$UnreadConversation$Factory; */
/* .param p3, "remoteInputFactory" # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory; */
/* .prologue */
/* .line 535 */
int v0 = 0; // const/4 v0, 0x0
} // .end method
public Boolean isGroupSummary ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 518 */
int v0 = 0; // const/4 v0, 0x0
} // .end method
