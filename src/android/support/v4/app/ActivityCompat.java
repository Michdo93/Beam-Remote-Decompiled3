public class android.support.v4.app.ActivityCompat extends android.support.v4.content.ContextCompat {
	 /* .source "ActivityCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl; */
	 /* } */
} // .end annotation
/* # direct methods */
public android.support.v4.app.ActivityCompat ( ) {
	 /* .locals 0 */
	 /* .prologue */
	 /* .line 38 */
	 /* invoke-direct {p0}, Landroid/support/v4/content/ContextCompat;-><init>()V */
	 /* .line 217 */
	 return;
} // .end method
private static android.support.v4.app.ActivityCompat21$SharedElementCallback21 createCallback ( android.support.v4.app.SharedElementCallback p0 ) {
	 /* .locals 1 */
	 /* .param p0, "callback" # Landroid/support/v4/app/SharedElementCallback; */
	 /* .prologue */
	 /* .line 210 */
	 int v0 = 0; // const/4 v0, 0x0
	 /* .line 211 */
	 /* .local v0, "newCallback":Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21; */
	 if ( p0 != null) { // if-eqz p0, :cond_0
		 /* .line 212 */
		 /* new-instance v0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl; */
	 } // .end local v0 # "newCallback":Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;
	 /* invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;-><init>(Landroid/support/v4/app/SharedElementCallback;)V */
	 /* .line 214 */
	 /* .restart local v0 # "newCallback":Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21; */
} // :cond_0
} // .end method
public static void finishAffinity ( android.app.Activity p0 ) {
/* .locals 2 */
/* .param p0, "activity" # Landroid/app/Activity; */
/* .prologue */
/* .line 141 */
/* const/16 v1, 0x10 */
/* if-lt v0, v1, :cond_0 */
/* .line 142 */
android.support.v4.app.ActivityCompatJB .finishAffinity ( p0 );
/* .line 146 */
} // :goto_0
return;
/* .line 144 */
} // :cond_0
(( android.app.Activity ) p0 ).finish ( ); // invoke-virtual {p0}, Landroid/app/Activity;->finish()V
} // .end method
public static void finishAfterTransition ( android.app.Activity p0 ) {
/* .locals 2 */
/* .param p0, "activity" # Landroid/app/Activity; */
/* .prologue */
/* .line 158 */
/* const/16 v1, 0x15 */
/* if-lt v0, v1, :cond_0 */
/* .line 159 */
android.support.v4.app.ActivityCompat21 .finishAfterTransition ( p0 );
/* .line 163 */
} // :goto_0
return;
/* .line 161 */
} // :cond_0
(( android.app.Activity ) p0 ).finish ( ); // invoke-virtual {p0}, Landroid/app/Activity;->finish()V
} // .end method
public static Boolean invalidateOptionsMenu ( android.app.Activity p0 ) {
/* .locals 2 */
/* .param p0, "activity" # Landroid/app/Activity; */
/* .prologue */
/* .line 72 */
/* const/16 v1, 0xb */
/* if-lt v0, v1, :cond_0 */
/* .line 73 */
android.support.v4.app.ActivityCompatHoneycomb .invalidateOptionsMenu ( p0 );
/* .line 74 */
int v0 = 1; // const/4 v0, 0x1
/* .line 76 */
} // :goto_0
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
} // .end method
public static void postponeEnterTransition ( android.app.Activity p0 ) {
/* .locals 2 */
/* .param p0, "activity" # Landroid/app/Activity; */
/* .prologue */
/* .line 197 */
/* const/16 v1, 0x15 */
/* if-lt v0, v1, :cond_0 */
/* .line 198 */
android.support.v4.app.ActivityCompat21 .postponeEnterTransition ( p0 );
/* .line 200 */
} // :cond_0
return;
} // .end method
public static void setEnterSharedElementCallback ( android.app.Activity p0, android.support.v4.app.SharedElementCallback p1 ) {
/* .locals 2 */
/* .param p0, "activity" # Landroid/app/Activity; */
/* .param p1, "callback" # Landroid/support/v4/app/SharedElementCallback; */
/* .prologue */
/* .line 175 */
/* const/16 v1, 0x15 */
/* if-lt v0, v1, :cond_0 */
/* .line 176 */
android.support.v4.app.ActivityCompat .createCallback ( p1 );
android.support.v4.app.ActivityCompat21 .setEnterSharedElementCallback ( p0,v0 );
/* .line 178 */
} // :cond_0
return;
} // .end method
public static void setExitSharedElementCallback ( android.app.Activity p0, android.support.v4.app.SharedElementCallback p1 ) {
/* .locals 2 */
/* .param p0, "activity" # Landroid/app/Activity; */
/* .param p1, "callback" # Landroid/support/v4/app/SharedElementCallback; */
/* .prologue */
/* .line 191 */
/* const/16 v1, 0x15 */
/* if-lt v0, v1, :cond_0 */
/* .line 192 */
android.support.v4.app.ActivityCompat .createCallback ( p1 );
android.support.v4.app.ActivityCompat21 .setExitSharedElementCallback ( p0,v0 );
/* .line 194 */
} // :cond_0
return;
} // .end method
public static void startActivity ( android.app.Activity p0, android.content.Intent p1, android.os.Bundle p2 ) {
/* .locals 2 */
/* .param p0, "activity" # Landroid/app/Activity; */
/* .param p1, "intent" # Landroid/content/Intent; */
/* .param p2, "options" # Landroid/os/Bundle; */
/* .annotation build Landroid/support/annotation/Nullable; */
} // .end annotation
} // .end param
/* .prologue */
/* .line 97 */
/* const/16 v1, 0x10 */
/* if-lt v0, v1, :cond_0 */
/* .line 98 */
android.support.v4.app.ActivityCompatJB .startActivity ( p0,p1,p2 );
/* .line 102 */
} // :goto_0
return;
/* .line 100 */
} // :cond_0
(( android.app.Activity ) p0 ).startActivity ( p1 ); // invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
} // .end method
public static void startActivityForResult ( android.app.Activity p0, android.content.Intent p1, Integer p2, android.os.Bundle p3 ) {
/* .locals 2 */
/* .param p0, "activity" # Landroid/app/Activity; */
/* .param p1, "intent" # Landroid/content/Intent; */
/* .param p2, "requestCode" # I */
/* .param p3, "options" # Landroid/os/Bundle; */
/* .annotation build Landroid/support/annotation/Nullable; */
} // .end annotation
} // .end param
/* .prologue */
/* .line 126 */
/* const/16 v1, 0x10 */
/* if-lt v0, v1, :cond_0 */
/* .line 127 */
android.support.v4.app.ActivityCompatJB .startActivityForResult ( p0,p1,p2,p3 );
/* .line 131 */
} // :goto_0
return;
/* .line 129 */
} // :cond_0
(( android.app.Activity ) p0 ).startActivityForResult ( p1, p2 ); // invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
} // .end method
public static void startPostponedEnterTransition ( android.app.Activity p0 ) {
/* .locals 2 */
/* .param p0, "activity" # Landroid/app/Activity; */
/* .prologue */
/* .line 203 */
/* const/16 v1, 0x15 */
/* if-lt v0, v1, :cond_0 */
/* .line 204 */
android.support.v4.app.ActivityCompat21 .startPostponedEnterTransition ( p0 );
/* .line 206 */
} // :cond_0
return;
} // .end method
