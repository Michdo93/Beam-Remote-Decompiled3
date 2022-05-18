class android.support.v4.app.FragmentManagerImpl$5 implements android.view.animation.Animation$AnimationListener {
	 /* .source "FragmentManager.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingMethod; */
	 /* value = Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x0 */
/* name = null */
} // .end annotation
/* # instance fields */
final android.support.v4.app.FragmentManagerImpl this$0; //synthetic
final android.support.v4.app.Fragment val$fragment; //synthetic
/* # direct methods */
 android.support.v4.app.FragmentManagerImpl$5 ( ) {
/* .locals 0 */
/* .prologue */
/* .line 1027 */
this.this$0 = p1;
this.val$fragment = p2;
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
/* # virtual methods */
public void onAnimationEnd ( android.view.animation.Animation p0 ) {
/* .locals 6 */
/* .param p1, "animation" # Landroid/view/animation/Animation; */
/* .prologue */
int v3 = 0; // const/4 v3, 0x0
/* .line 1030 */
v0 = this.val$fragment;
v0 = this.mAnimatingAway;
if ( v0 != null) { // if-eqz v0, :cond_0
	 /* .line 1031 */
	 v0 = this.val$fragment;
	 int v1 = 0; // const/4 v1, 0x0
	 this.mAnimatingAway = v1;
	 /* .line 1032 */
	 v0 = this.this$0;
	 v1 = this.val$fragment;
	 v2 = this.val$fragment;
	 /* iget v2, v2, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I */
	 /* move v4, v3 */
	 /* move v5, v3 */
	 /* invoke-virtual/range {v0 ..v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V */
	 /* .line 1035 */
} // :cond_0
return;
} // .end method
public void onAnimationRepeat ( android.view.animation.Animation p0 ) {
/* .locals 0 */
/* .param p1, "animation" # Landroid/view/animation/Animation; */
/* .prologue */
/* .line 1038 */
return;
} // .end method
public void onAnimationStart ( android.view.animation.Animation p0 ) {
/* .locals 0 */
/* .param p1, "animation" # Landroid/view/animation/Animation; */
/* .prologue */
/* .line 1041 */
return;
} // .end method
