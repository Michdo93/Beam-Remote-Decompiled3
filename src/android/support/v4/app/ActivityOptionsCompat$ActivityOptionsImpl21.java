class android.support.v4.app.ActivityOptionsCompat$ActivityOptionsImpl21 extends android.support.v4.app.ActivityOptionsCompat {
	 /* .source "ActivityOptionsCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/ActivityOptionsCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0xa */
/* name = "ActivityOptionsImpl21" */
} // .end annotation
/* # instance fields */
private final android.support.v4.app.ActivityOptionsCompat21 mImpl;
/* # direct methods */
 android.support.v4.app.ActivityOptionsCompat$ActivityOptionsImpl21 ( ) {
/* .locals 0 */
/* .param p1, "impl" # Landroid/support/v4/app/ActivityOptionsCompat21; */
/* .prologue */
/* .line 201 */
/* invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V */
/* .line 202 */
this.mImpl = p1;
/* .line 203 */
return;
} // .end method
/* # virtual methods */
public android.os.Bundle toBundle ( ) {
/* .locals 1 */
/* .prologue */
/* .line 207 */
v0 = this.mImpl;
(( android.support.v4.app.ActivityOptionsCompat21 ) v0 ).toBundle ( ); // invoke-virtual {v0}, Landroid/support/v4/app/ActivityOptionsCompat21;->toBundle()Landroid/os/Bundle;
} // .end method
public void update ( android.support.v4.app.ActivityOptionsCompat p0 ) {
/* .locals 3 */
/* .param p1, "otherOptions" # Landroid/support/v4/app/ActivityOptionsCompat; */
/* .prologue */
/* .line 212 */
/* instance-of v1, p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21; */
if ( v1 != null) { // if-eqz v1, :cond_0
	 /* move-object v0, p1 */
	 /* .line 214 */
	 /* check-cast v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21; */
	 /* .line 215 */
	 /* .local v0, "otherImpl":Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21; */
	 v1 = this.mImpl;
	 v2 = this.mImpl;
	 (( android.support.v4.app.ActivityOptionsCompat21 ) v1 ).update ( v2 ); // invoke-virtual {v1, v2}, Landroid/support/v4/app/ActivityOptionsCompat21;->update(Landroid/support/v4/app/ActivityOptionsCompat21;)V
	 /* .line 217 */
} // .end local v0 # "otherImpl":Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;
} // :cond_0
return;
} // .end method
