class android.support.v4.app.NotificationManagerCompat$ImplBase implements android.support.v4.app.NotificationManagerCompat$Impl {
	 /* .source "NotificationManagerCompat.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationManagerCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x8 */
/* name = "ImplBase" */
} // .end annotation
/* # direct methods */
 android.support.v4.app.NotificationManagerCompat$ImplBase ( ) {
/* .locals 0 */
/* .prologue */
/* .line 123 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
/* # virtual methods */
public void cancelNotification ( android.app.NotificationManager p0, java.lang.String p1, Integer p2 ) {
/* .locals 0 */
/* .param p1, "notificationManager" # Landroid/app/NotificationManager; */
/* .param p2, "tag" # Ljava/lang/String; */
/* .param p3, "id" # I */
/* .prologue */
/* .line 127 */
(( android.app.NotificationManager ) p1 ).cancel ( p3 ); // invoke-virtual {p1, p3}, Landroid/app/NotificationManager;->cancel(I)V
/* .line 128 */
return;
} // .end method
public Integer getSideChannelBindFlags ( ) {
/* .locals 1 */
/* .prologue */
/* .line 138 */
int v0 = 1; // const/4 v0, 0x1
} // .end method
public void postNotification ( android.app.NotificationManager p0, java.lang.String p1, Integer p2, android.app.Notification p3 ) {
/* .locals 0 */
/* .param p1, "notificationManager" # Landroid/app/NotificationManager; */
/* .param p2, "tag" # Ljava/lang/String; */
/* .param p3, "id" # I */
/* .param p4, "notification" # Landroid/app/Notification; */
/* .prologue */
/* .line 133 */
(( android.app.NotificationManager ) p1 ).notify ( p3, p4 ); // invoke-virtual {p1, p3, p4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
/* .line 134 */
return;
} // .end method
