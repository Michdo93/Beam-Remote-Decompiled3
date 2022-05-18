class android.support.v4.app.ActivityOptionsCompatJB {
	 /* .source "ActivityOptionsCompatJB.java" */
	 /* # instance fields */
	 private final android.app.ActivityOptions mActivityOptions;
	 /* # direct methods */
	 private android.support.v4.app.ActivityOptionsCompatJB ( ) {
		 /* .locals 0 */
		 /* .param p1, "activityOptions" # Landroid/app/ActivityOptions; */
		 /* .prologue */
		 /* .line 47 */
		 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
		 /* .line 48 */
		 this.mActivityOptions = p1;
		 /* .line 49 */
		 return;
	 } // .end method
	 public static android.support.v4.app.ActivityOptionsCompatJB makeCustomAnimation ( android.content.Context p0, Integer p1, Integer p2 ) {
		 /* .locals 2 */
		 /* .param p0, "context" # Landroid/content/Context; */
		 /* .param p1, "enterResId" # I */
		 /* .param p2, "exitResId" # I */
		 /* .prologue */
		 /* .line 29 */
		 /* new-instance v0, Landroid/support/v4/app/ActivityOptionsCompatJB; */
		 android.app.ActivityOptions .makeCustomAnimation ( p0,p1,p2 );
		 /* invoke-direct {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompatJB;-><init>(Landroid/app/ActivityOptions;)V */
	 } // .end method
	 public static android.support.v4.app.ActivityOptionsCompatJB makeScaleUpAnimation ( android.view.View p0, Integer p1, Integer p2, Integer p3, Integer p4 ) {
		 /* .locals 2 */
		 /* .param p0, "source" # Landroid/view/View; */
		 /* .param p1, "startX" # I */
		 /* .param p2, "startY" # I */
		 /* .param p3, "startWidth" # I */
		 /* .param p4, "startHeight" # I */
		 /* .prologue */
		 /* .line 35 */
		 /* new-instance v0, Landroid/support/v4/app/ActivityOptionsCompatJB; */
		 android.app.ActivityOptions .makeScaleUpAnimation ( p0,p1,p2,p3,p4 );
		 /* invoke-direct {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompatJB;-><init>(Landroid/app/ActivityOptions;)V */
	 } // .end method
	 public static android.support.v4.app.ActivityOptionsCompatJB makeThumbnailScaleUpAnimation ( android.view.View p0, android.graphics.Bitmap p1, Integer p2, Integer p3 ) {
		 /* .locals 2 */
		 /* .param p0, "source" # Landroid/view/View; */
		 /* .param p1, "thumbnail" # Landroid/graphics/Bitmap; */
		 /* .param p2, "startX" # I */
		 /* .param p3, "startY" # I */
		 /* .prologue */
		 /* .line 41 */
		 /* new-instance v0, Landroid/support/v4/app/ActivityOptionsCompatJB; */
		 android.app.ActivityOptions .makeThumbnailScaleUpAnimation ( p0,p1,p2,p3 );
		 /* invoke-direct {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompatJB;-><init>(Landroid/app/ActivityOptions;)V */
	 } // .end method
	 /* # virtual methods */
	 public android.os.Bundle toBundle ( ) {
		 /* .locals 1 */
		 /* .prologue */
		 /* .line 52 */
		 v0 = this.mActivityOptions;
		 (( android.app.ActivityOptions ) v0 ).toBundle ( ); // invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;
	 } // .end method
	 public void update ( android.support.v4.app.ActivityOptionsCompatJB p0 ) {
		 /* .locals 2 */
		 /* .param p1, "otherOptions" # Landroid/support/v4/app/ActivityOptionsCompatJB; */
		 /* .prologue */
		 /* .line 56 */
		 v0 = this.mActivityOptions;
		 v1 = this.mActivityOptions;
		 (( android.app.ActivityOptions ) v0 ).update ( v1 ); // invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V
		 /* .line 57 */
		 return;
	 } // .end method
