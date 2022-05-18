class android.support.v4.content.ContextCompatApi21 {
	 /* .source "ContextCompatApi21.java" */
	 /* # direct methods */
	 android.support.v4.content.ContextCompatApi21 ( ) {
		 /* .locals 0 */
		 /* .prologue */
		 /* .line 24 */
		 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
		 return;
	 } // .end method
	 public static java.io.File getCodeCacheDir ( android.content.Context p0 ) {
		 /* .locals 1 */
		 /* .param p0, "context" # Landroid/content/Context; */
		 /* .prologue */
		 /* .line 34 */
		 (( android.content.Context ) p0 ).getCodeCacheDir ( ); // invoke-virtual {p0}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;
	 } // .end method
	 public static android.graphics.drawable.Drawable getDrawable ( android.content.Context p0, Integer p1 ) {
		 /* .locals 1 */
		 /* .param p0, "context" # Landroid/content/Context; */
		 /* .param p1, "id" # I */
		 /* .prologue */
		 /* .line 26 */
		 (( android.content.Context ) p0 ).getDrawable ( p1 ); // invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
	 } // .end method
	 public static java.io.File getNoBackupFilesDir ( android.content.Context p0 ) {
		 /* .locals 1 */
		 /* .param p0, "context" # Landroid/content/Context; */
		 /* .prologue */
		 /* .line 30 */
		 (( android.content.Context ) p0 ).getNoBackupFilesDir ( ); // invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;
	 } // .end method
