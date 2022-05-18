class android.support.v4.app.ActivityCompatJB {
	 /* .source "ActivityCompatJB.java" */
	 /* # direct methods */
	 android.support.v4.app.ActivityCompatJB ( ) {
		 /* .locals 0 */
		 /* .prologue */
		 /* .line 24 */
		 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
		 return;
	 } // .end method
	 public static void finishAffinity ( android.app.Activity p0 ) {
		 /* .locals 0 */
		 /* .param p0, "activity" # Landroid/app/Activity; */
		 /* .prologue */
		 /* .line 34 */
		 (( android.app.Activity ) p0 ).finishAffinity ( ); // invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V
		 /* .line 35 */
		 return;
	 } // .end method
	 public static void startActivity ( android.content.Context p0, android.content.Intent p1, android.os.Bundle p2 ) {
		 /* .locals 0 */
		 /* .param p0, "context" # Landroid/content/Context; */
		 /* .param p1, "intent" # Landroid/content/Intent; */
		 /* .param p2, "options" # Landroid/os/Bundle; */
		 /* .prologue */
		 /* .line 26 */
		 (( android.content.Context ) p0 ).startActivity ( p1, p2 ); // invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
		 /* .line 27 */
		 return;
	 } // .end method
	 public static void startActivityForResult ( android.app.Activity p0, android.content.Intent p1, Integer p2, android.os.Bundle p3 ) {
		 /* .locals 0 */
		 /* .param p0, "activity" # Landroid/app/Activity; */
		 /* .param p1, "intent" # Landroid/content/Intent; */
		 /* .param p2, "requestCode" # I */
		 /* .param p3, "options" # Landroid/os/Bundle; */
		 /* .prologue */
		 /* .line 30 */
		 (( android.app.Activity ) p0 ).startActivityForResult ( p1, p2, p3 ); // invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
		 /* .line 31 */
		 return;
	 } // .end method
