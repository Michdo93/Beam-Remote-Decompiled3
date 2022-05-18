class android.support.v4.content.ContextCompatFroyo {
	 /* .source "ContextCompatFroyo.java" */
	 /* # direct methods */
	 android.support.v4.content.ContextCompatFroyo ( ) {
		 /* .locals 0 */
		 /* .prologue */
		 /* .line 23 */
		 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
		 return;
	 } // .end method
	 public static java.io.File getExternalCacheDir ( android.content.Context p0 ) {
		 /* .locals 1 */
		 /* .param p0, "context" # Landroid/content/Context; */
		 /* .prologue */
		 /* .line 25 */
		 (( android.content.Context ) p0 ).getExternalCacheDir ( ); // invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
	 } // .end method
	 public static java.io.File getExternalFilesDir ( android.content.Context p0, java.lang.String p1 ) {
		 /* .locals 1 */
		 /* .param p0, "context" # Landroid/content/Context; */
		 /* .param p1, "type" # Ljava/lang/String; */
		 /* .prologue */
		 /* .line 29 */
		 (( android.content.Context ) p0 ).getExternalFilesDir ( p1 ); // invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
	 } // .end method
