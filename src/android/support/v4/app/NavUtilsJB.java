class android.support.v4.app.NavUtilsJB {
	 /* .source "NavUtilsJB.java" */
	 /* # direct methods */
	 android.support.v4.app.NavUtilsJB ( ) {
		 /* .locals 0 */
		 /* .prologue */
		 /* .line 23 */
		 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
		 return;
	 } // .end method
	 public static android.content.Intent getParentActivityIntent ( android.app.Activity p0 ) {
		 /* .locals 1 */
		 /* .param p0, "activity" # Landroid/app/Activity; */
		 /* .prologue */
		 /* .line 25 */
		 (( android.app.Activity ) p0 ).getParentActivityIntent ( ); // invoke-virtual {p0}, Landroid/app/Activity;->getParentActivityIntent()Landroid/content/Intent;
	 } // .end method
	 public static java.lang.String getParentActivityName ( android.content.pm.ActivityInfo p0 ) {
		 /* .locals 1 */
		 /* .param p0, "info" # Landroid/content/pm/ActivityInfo; */
		 /* .prologue */
		 /* .line 37 */
		 v0 = this.parentActivityName;
	 } // .end method
	 public static void navigateUpTo ( android.app.Activity p0, android.content.Intent p1 ) {
		 /* .locals 0 */
		 /* .param p0, "activity" # Landroid/app/Activity; */
		 /* .param p1, "upIntent" # Landroid/content/Intent; */
		 /* .prologue */
		 /* .line 33 */
		 (( android.app.Activity ) p0 ).navigateUpTo ( p1 ); // invoke-virtual {p0, p1}, Landroid/app/Activity;->navigateUpTo(Landroid/content/Intent;)Z
		 /* .line 34 */
		 return;
	 } // .end method
	 public static Boolean shouldUpRecreateTask ( android.app.Activity p0, android.content.Intent p1 ) {
		 /* .locals 1 */
		 /* .param p0, "activity" # Landroid/app/Activity; */
		 /* .param p1, "targetIntent" # Landroid/content/Intent; */
		 /* .prologue */
		 /* .line 29 */
		 v0 = 		 (( android.app.Activity ) p0 ).shouldUpRecreateTask ( p1 ); // invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldUpRecreateTask(Landroid/content/Intent;)Z
	 } // .end method
