class android.support.v4.app.ShareCompat$ShareCompatImplICS extends android.support.v4.app.ShareCompat$ShareCompatImplBase {
	 /* .source "ShareCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/ShareCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x8 */
/* name = "ShareCompatImplICS" */
} // .end annotation
/* # direct methods */
 android.support.v4.app.ShareCompat$ShareCompatImplICS ( ) {
/* .locals 0 */
/* .prologue */
/* .line 124 */
/* invoke-direct {p0}, Landroid/support/v4/app/ShareCompat$ShareCompatImplBase;-><init>()V */
return;
} // .end method
/* # virtual methods */
public void configureMenuItem ( android.view.MenuItem p0, android.support.v4.app.ShareCompat$IntentBuilder p1 ) {
/* .locals 2 */
/* .param p1, "item" # Landroid/view/MenuItem; */
/* .param p2, "shareIntent" # Landroid/support/v4/app/ShareCompat$IntentBuilder; */
/* .prologue */
/* .line 126 */
(( android.support.v4.app.ShareCompat$IntentBuilder ) p2 ).getActivity ( ); // invoke-virtual {p2}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->getActivity()Landroid/app/Activity;
(( android.support.v4.app.ShareCompat$IntentBuilder ) p2 ).getIntent ( ); // invoke-virtual {p2}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;
android.support.v4.app.ShareCompatICS .configureMenuItem ( p1,v0,v1 );
/* .line 128 */
v0 = (( android.support.v4.app.ShareCompat$ShareCompatImplICS ) p0 ).shouldAddChooserIntent ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/app/ShareCompat$ShareCompatImplICS;->shouldAddChooserIntent(Landroid/view/MenuItem;)Z
if ( v0 != null) { // if-eqz v0, :cond_0
	 /* .line 129 */
	 (( android.support.v4.app.ShareCompat$IntentBuilder ) p2 ).createChooserIntent ( ); // invoke-virtual {p2}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->createChooserIntent()Landroid/content/Intent;
	 /* .line 131 */
} // :cond_0
return;
} // .end method
Boolean shouldAddChooserIntent ( android.view.MenuItem p0 ) {
/* .locals 1 */
/* .param p1, "item" # Landroid/view/MenuItem; */
/* .prologue */
v0 = /* .line 134 */
/* if-nez v0, :cond_0 */
int v0 = 1; // const/4 v0, 0x1
} // :goto_0
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
} // .end method
