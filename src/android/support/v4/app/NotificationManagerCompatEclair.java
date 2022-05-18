class android.support.v4.app.NotificationManagerCompatEclair {
	 /* .source "NotificationManagerCompatEclair.java" */
	 /* # direct methods */
	 android.support.v4.app.NotificationManagerCompatEclair ( ) {
		 /* .locals 0 */
		 /* .prologue */
		 /* .line 22 */
		 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
		 return;
	 } // .end method
	 static void cancelNotification ( android.app.NotificationManager p0, java.lang.String p1, Integer p2 ) {
		 /* .locals 0 */
		 /* .param p0, "notificationManager" # Landroid/app/NotificationManager; */
		 /* .param p1, "tag" # Ljava/lang/String; */
		 /* .param p2, "id" # I */
		 /* .prologue */
		 /* .line 25 */
		 (( android.app.NotificationManager ) p0 ).cancel ( p1, p2 ); // invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
		 /* .line 26 */
		 return;
	 } // .end method
	 public static void postNotification ( android.app.NotificationManager p0, java.lang.String p1, Integer p2, android.app.Notification p3 ) {
		 /* .locals 0 */
		 /* .param p0, "notificationManager" # Landroid/app/NotificationManager; */
		 /* .param p1, "tag" # Ljava/lang/String; */
		 /* .param p2, "id" # I */
		 /* .param p3, "notification" # Landroid/app/Notification; */
		 /* .prologue */
		 /* .line 30 */
		 (( android.app.NotificationManager ) p0 ).notify ( p1, p2, p3 ); // invoke-virtual {p0, p1, p2, p3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
		 /* .line 31 */
		 return;
	 } // .end method
