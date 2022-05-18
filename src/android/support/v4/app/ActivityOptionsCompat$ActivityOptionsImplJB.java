class android.support.v4.app.ActivityOptionsCompat$ActivityOptionsImplJB extends android.support.v4.app.ActivityOptionsCompat {
	 /* .source "ActivityOptionsCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/ActivityOptionsCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0xa */
/* name = "ActivityOptionsImplJB" */
} // .end annotation
/* # instance fields */
private final android.support.v4.app.ActivityOptionsCompatJB mImpl;
/* # direct methods */
 android.support.v4.app.ActivityOptionsCompat$ActivityOptionsImplJB ( ) {
/* .locals 0 */
/* .param p1, "impl" # Landroid/support/v4/app/ActivityOptionsCompatJB; */
/* .prologue */
/* .line 180 */
/* invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V */
/* .line 181 */
this.mImpl = p1;
/* .line 182 */
return;
} // .end method
/* # virtual methods */
public android.os.Bundle toBundle ( ) {
/* .locals 1 */
/* .prologue */
/* .line 186 */
v0 = this.mImpl;
(( android.support.v4.app.ActivityOptionsCompatJB ) v0 ).toBundle ( ); // invoke-virtual {v0}, Landroid/support/v4/app/ActivityOptionsCompatJB;->toBundle()Landroid/os/Bundle;
} // .end method
public void update ( android.support.v4.app.ActivityOptionsCompat p0 ) {
/* .locals 3 */
/* .param p1, "otherOptions" # Landroid/support/v4/app/ActivityOptionsCompat; */
/* .prologue */
/* .line 191 */
/* instance-of v1, p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB; */
if ( v1 != null) { // if-eqz v1, :cond_0
	 /* move-object v0, p1 */
	 /* .line 192 */
	 /* check-cast v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB; */
	 /* .line 193 */
	 /* .local v0, "otherImpl":Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB; */
	 v1 = this.mImpl;
	 v2 = this.mImpl;
	 (( android.support.v4.app.ActivityOptionsCompatJB ) v1 ).update ( v2 ); // invoke-virtual {v1, v2}, Landroid/support/v4/app/ActivityOptionsCompatJB;->update(Landroid/support/v4/app/ActivityOptionsCompatJB;)V
	 /* .line 195 */
} // .end local v0 # "otherImpl":Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;
} // :cond_0
return;
} // .end method
