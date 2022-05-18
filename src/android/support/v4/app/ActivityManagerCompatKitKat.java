class android.support.v4.app.ActivityManagerCompatKitKat {
	 /* .source "ActivityManagerCompatKitKat.java" */
	 /* # direct methods */
	 android.support.v4.app.ActivityManagerCompatKitKat ( ) {
		 /* .locals 0 */
		 /* .prologue */
		 /* .line 21 */
		 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
		 return;
	 } // .end method
	 public static Boolean isLowRamDevice ( android.app.ActivityManager p0 ) {
		 /* .locals 1 */
		 /* .param p0, "am" # Landroid/app/ActivityManager; */
		 /* .prologue */
		 /* .line 23 */
		 v0 = 		 (( android.app.ActivityManager ) p0 ).isLowRamDevice ( ); // invoke-virtual {p0}, Landroid/app/ActivityManager;->isLowRamDevice()Z
	 } // .end method
