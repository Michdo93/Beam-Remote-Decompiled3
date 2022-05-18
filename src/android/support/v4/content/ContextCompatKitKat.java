class android.support.v4.content.ContextCompatKitKat {
	 /* .source "ContextCompatKitKat.java" */
	 /* # direct methods */
	 android.support.v4.content.ContextCompatKitKat ( ) {
		 /* .locals 0 */
		 /* .prologue */
		 /* .line 23 */
		 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
		 return;
	 } // .end method
	 public static java.io.File getExternalCacheDirs ( android.content.Context p0 ) {
		 /* .locals 1 */
		 /* .param p0, "context" # Landroid/content/Context; */
		 /* .prologue */
		 /* .line 25 */
		 (( android.content.Context ) p0 ).getExternalCacheDirs ( ); // invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDirs()[Ljava/io/File;
	 } // .end method
	 public static java.io.File getExternalFilesDirs ( android.content.Context p0, java.lang.String p1 ) {
		 /* .locals 1 */
		 /* .param p0, "context" # Landroid/content/Context; */
		 /* .param p1, "type" # Ljava/lang/String; */
		 /* .prologue */
		 /* .line 29 */
		 (( android.content.Context ) p0 ).getExternalFilesDirs ( p1 ); // invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;
	 } // .end method
	 public static java.io.File getObbDirs ( android.content.Context p0 ) {
		 /* .locals 1 */
		 /* .param p0, "context" # Landroid/content/Context; */
		 /* .prologue */
		 /* .line 33 */
		 (( android.content.Context ) p0 ).getObbDirs ( ); // invoke-virtual {p0}, Landroid/content/Context;->getObbDirs()[Ljava/io/File;
	 } // .end method
