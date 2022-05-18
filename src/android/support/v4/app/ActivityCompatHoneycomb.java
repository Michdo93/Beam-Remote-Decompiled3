class android.support.v4.app.ActivityCompatHoneycomb {
	 /* .source "ActivityCompatHoneycomb.java" */
	 /* # direct methods */
	 android.support.v4.app.ActivityCompatHoneycomb ( ) {
		 /* .locals 0 */
		 /* .prologue */
		 /* .line 27 */
		 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
		 return;
	 } // .end method
	 static void dump ( android.app.Activity p0, java.lang.String p1, java.io.FileDescriptor p2, java.io.PrintWriter p3, java.lang.String[] p4 ) {
		 /* .locals 0 */
		 /* .param p0, "activity" # Landroid/app/Activity; */
		 /* .param p1, "prefix" # Ljava/lang/String; */
		 /* .param p2, "fd" # Ljava/io/FileDescriptor; */
		 /* .param p3, "writer" # Ljava/io/PrintWriter; */
		 /* .param p4, "args" # [Ljava/lang/String; */
		 /* .prologue */
		 /* .line 34 */
		 (( android.app.Activity ) p0 ).dump ( p1, p2, p3, p4 ); // invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
		 /* .line 35 */
		 return;
	 } // .end method
	 static void invalidateOptionsMenu ( android.app.Activity p0 ) {
		 /* .locals 0 */
		 /* .param p0, "activity" # Landroid/app/Activity; */
		 /* .prologue */
		 /* .line 29 */
		 (( android.app.Activity ) p0 ).invalidateOptionsMenu ( ); // invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V
		 /* .line 30 */
		 return;
	 } // .end method
