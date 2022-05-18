class android.support.v4.app.ActivityCompat21 {
	 /* .source "ActivityCompat21.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/ActivityCompat21$SharedElementCallbackImpl;, */
	 /* Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21; */
	 /* } */
} // .end annotation
/* # direct methods */
 android.support.v4.app.ActivityCompat21 ( ) {
	 /* .locals 0 */
	 /* .prologue */
	 /* .line 32 */
	 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
	 /* .line 80 */
	 return;
} // .end method
private static android.app.SharedElementCallback createCallback ( android.support.v4.app.ActivityCompat21$SharedElementCallback21 p0 ) {
	 /* .locals 1 */
	 /* .param p0, "callback" # Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21; */
	 /* .prologue */
	 /* .line 73 */
	 int v0 = 0; // const/4 v0, 0x0
	 /* .line 74 */
	 /* .local v0, "newListener":Landroid/app/SharedElementCallback; */
	 if ( p0 != null) { // if-eqz p0, :cond_0
		 /* .line 75 */
		 /* new-instance v0, Landroid/support/v4/app/ActivityCompat21$SharedElementCallbackImpl; */
	 } // .end local v0 # "newListener":Landroid/app/SharedElementCallback;
	 /* invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityCompat21$SharedElementCallbackImpl;-><init>(Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;)V */
	 /* .line 77 */
	 /* .restart local v0 # "newListener":Landroid/app/SharedElementCallback; */
} // :cond_0
} // .end method
public static void finishAfterTransition ( android.app.Activity p0 ) {
/* .locals 0 */
/* .param p0, "activity" # Landroid/app/Activity; */
/* .prologue */
/* .line 35 */
(( android.app.Activity ) p0 ).finishAfterTransition ( ); // invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V
/* .line 36 */
return;
} // .end method
public static void postponeEnterTransition ( android.app.Activity p0 ) {
/* .locals 0 */
/* .param p0, "activity" # Landroid/app/Activity; */
/* .prologue */
/* .line 49 */
(( android.app.Activity ) p0 ).postponeEnterTransition ( ); // invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V
/* .line 50 */
return;
} // .end method
public static void setEnterSharedElementCallback ( android.app.Activity p0, android.support.v4.app.ActivityCompat21$SharedElementCallback21 p1 ) {
/* .locals 1 */
/* .param p0, "activity" # Landroid/app/Activity; */
/* .param p1, "callback" # Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21; */
/* .prologue */
/* .line 40 */
android.support.v4.app.ActivityCompat21 .createCallback ( p1 );
(( android.app.Activity ) p0 ).setEnterSharedElementCallback ( v0 ); // invoke-virtual {p0, v0}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
/* .line 41 */
return;
} // .end method
public static void setExitSharedElementCallback ( android.app.Activity p0, android.support.v4.app.ActivityCompat21$SharedElementCallback21 p1 ) {
/* .locals 1 */
/* .param p0, "activity" # Landroid/app/Activity; */
/* .param p1, "callback" # Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21; */
/* .prologue */
/* .line 45 */
android.support.v4.app.ActivityCompat21 .createCallback ( p1 );
(( android.app.Activity ) p0 ).setExitSharedElementCallback ( v0 ); // invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
/* .line 46 */
return;
} // .end method
public static void startPostponedEnterTransition ( android.app.Activity p0 ) {
/* .locals 0 */
/* .param p0, "activity" # Landroid/app/Activity; */
/* .prologue */
/* .line 53 */
(( android.app.Activity ) p0 ).startPostponedEnterTransition ( ); // invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V
/* .line 54 */
return;
} // .end method
