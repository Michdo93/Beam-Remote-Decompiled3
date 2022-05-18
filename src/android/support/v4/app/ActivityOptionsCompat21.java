class android.support.v4.app.ActivityOptionsCompat21 {
	 /* .source "ActivityOptionsCompat21.java" */
	 /* # instance fields */
	 private final android.app.ActivityOptions mActivityOptions;
	 /* # direct methods */
	 private android.support.v4.app.ActivityOptionsCompat21 ( ) {
		 /* .locals 0 */
		 /* .param p1, "activityOptions" # Landroid/app/ActivityOptions; */
		 /* .prologue */
		 /* .line 49 */
		 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
		 /* .line 50 */
		 this.mActivityOptions = p1;
		 /* .line 51 */
		 return;
	 } // .end method
	 public static android.support.v4.app.ActivityOptionsCompat21 makeSceneTransitionAnimation ( android.app.Activity p0, android.view.View p1, java.lang.String p2 ) {
		 /* .locals 2 */
		 /* .param p0, "activity" # Landroid/app/Activity; */
		 /* .param p1, "sharedElement" # Landroid/view/View; */
		 /* .param p2, "sharedElementName" # Ljava/lang/String; */
		 /* .prologue */
		 /* .line 31 */
		 /* new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat21; */
		 android.app.ActivityOptions .makeSceneTransitionAnimation ( p0,p1,p2 );
		 /* invoke-direct {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat21;-><init>(Landroid/app/ActivityOptions;)V */
	 } // .end method
	 public static android.support.v4.app.ActivityOptionsCompat21 makeSceneTransitionAnimation ( android.app.Activity p0, android.view.View[] p1, java.lang.String[] p2 ) {
		 /* .locals 4 */
		 /* .param p0, "activity" # Landroid/app/Activity; */
		 /* .param p1, "sharedElements" # [Landroid/view/View; */
		 /* .param p2, "sharedElementNames" # [Ljava/lang/String; */
		 /* .prologue */
		 /* .line 38 */
		 int v1 = 0; // const/4 v1, 0x0
		 /* .line 39 */
		 /* .local v1, "pairs":[Landroid/util/Pair; */
		 if ( p1 != null) { // if-eqz p1, :cond_0
			 /* .line 40 */
			 /* array-length v2, p1 */
			 /* new-array v1, v2, [Landroid/util/Pair; */
			 /* .line 41 */
			 int v0 = 0; // const/4 v0, 0x0
			 /* .local v0, "i":I */
		 } // :goto_0
		 /* array-length v2, v1 */
		 /* if-ge v0, v2, :cond_0 */
		 /* .line 42 */
		 /* aget-object v2, p1, v0 */
		 /* aget-object v3, p2, v0 */
		 android.util.Pair .create ( v2,v3 );
		 /* aput-object v2, v1, v0 */
		 /* .line 41 */
		 /* add-int/lit8 v0, v0, 0x1 */
		 /* .line 45 */
	 } // .end local v0 # "i":I
} // :cond_0
/* new-instance v2, Landroid/support/v4/app/ActivityOptionsCompat21; */
android.app.ActivityOptions .makeSceneTransitionAnimation ( p0,v1 );
/* invoke-direct {v2, v3}, Landroid/support/v4/app/ActivityOptionsCompat21;-><init>(Landroid/app/ActivityOptions;)V */
} // .end method
/* # virtual methods */
public android.os.Bundle toBundle ( ) {
/* .locals 1 */
/* .prologue */
/* .line 54 */
v0 = this.mActivityOptions;
(( android.app.ActivityOptions ) v0 ).toBundle ( ); // invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;
} // .end method
public void update ( android.support.v4.app.ActivityOptionsCompat21 p0 ) {
/* .locals 2 */
/* .param p1, "otherOptions" # Landroid/support/v4/app/ActivityOptionsCompat21; */
/* .prologue */
/* .line 58 */
v0 = this.mActivityOptions;
v1 = this.mActivityOptions;
(( android.app.ActivityOptions ) v0 ).update ( v1 ); // invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->update(Landroid/app/ActivityOptions;)V
/* .line 59 */
return;
} // .end method
