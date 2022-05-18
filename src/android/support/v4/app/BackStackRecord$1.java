class android.support.v4.app.BackStackRecord$1 implements android.support.v4.app.FragmentTransitionCompat21$ViewRetriever {
	 /* .source "BackStackRecord.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingMethod; */
	 /* value = Landroid/support/v4/app/BackStackRecord;->configureTransitions(ILandroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x0 */
/* name = null */
} // .end annotation
/* # instance fields */
final android.support.v4.app.BackStackRecord this$0; //synthetic
final android.support.v4.app.Fragment val$inFragment; //synthetic
/* # direct methods */
 android.support.v4.app.BackStackRecord$1 ( ) {
/* .locals 0 */
/* .prologue */
/* .line 1186 */
this.this$0 = p1;
this.val$inFragment = p2;
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
/* # virtual methods */
public android.view.View getView ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1189 */
v0 = this.val$inFragment;
(( android.support.v4.app.Fragment ) v0 ).getView ( ); // invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;
} // .end method
