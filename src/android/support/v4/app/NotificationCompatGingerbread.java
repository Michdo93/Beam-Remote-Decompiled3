class android.support.v4.app.NotificationCompatGingerbread {
	 /* .source "NotificationCompatGingerbread.java" */
	 /* # direct methods */
	 android.support.v4.app.NotificationCompatGingerbread ( ) {
		 /* .locals 0 */
		 /* .prologue */
		 /* .line 23 */
		 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
		 return;
	 } // .end method
	 public static android.app.Notification add ( android.app.Notification p0, android.content.Context p1, java.lang.CharSequence p2, java.lang.CharSequence p3, android.app.PendingIntent p4, android.app.PendingIntent p5 ) {
		 /* .locals 0 */
		 /* .param p0, "notification" # Landroid/app/Notification; */
		 /* .param p1, "context" # Landroid/content/Context; */
		 /* .param p2, "contentTitle" # Ljava/lang/CharSequence; */
		 /* .param p3, "contentText" # Ljava/lang/CharSequence; */
		 /* .param p4, "contentIntent" # Landroid/app/PendingIntent; */
		 /* .param p5, "fullScreenIntent" # Landroid/app/PendingIntent; */
		 /* .prologue */
		 /* .line 27 */
		 (( android.app.Notification ) p0 ).setLatestEventInfo ( p1, p2, p3, p4 ); // invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
		 /* .line 28 */
		 this.fullScreenIntent = p5;
		 /* .line 29 */
	 } // .end method
