class android.support.v4.content.ContextCompatHoneycomb {
	 /* .source "ContextCompatHoneycomb.java" */
	 /* # direct methods */
	 android.support.v4.content.ContextCompatHoneycomb ( ) {
		 /* .locals 0 */
		 /* .prologue */
		 /* .line 27 */
		 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
		 return;
	 } // .end method
	 public static java.io.File getObbDir ( android.content.Context p0 ) {
		 /* .locals 1 */
		 /* .param p0, "context" # Landroid/content/Context; */
		 /* .prologue */
		 /* .line 34 */
		 (( android.content.Context ) p0 ).getObbDir ( ); // invoke-virtual {p0}, Landroid/content/Context;->getObbDir()Ljava/io/File;
	 } // .end method
	 static void startActivities ( android.content.Context p0, android.content.Intent[] p1 ) {
		 /* .locals 0 */
		 /* .param p0, "context" # Landroid/content/Context; */
		 /* .param p1, "intents" # [Landroid/content/Intent; */
		 /* .prologue */
		 /* .line 30 */
		 (( android.content.Context ) p0 ).startActivities ( p1 ); // invoke-virtual {p0, p1}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V
		 /* .line 31 */
		 return;
	 } // .end method
