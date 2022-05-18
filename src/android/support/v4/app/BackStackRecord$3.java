class android.support.v4.app.BackStackRecord$3 implements android.view.ViewTreeObserver$OnPreDrawListener {
	 /* .source "BackStackRecord.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingMethod; */
	 /* value = Landroid/support/v4/app/BackStackRecord;->excludeHiddenFragmentsAfterEnter(Landroid/view/View;Landroid/support/v4/app/BackStackRecord$TransitionState;ILjava/lang/Object;)V */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x0 */
/* name = null */
} // .end annotation
/* # instance fields */
final android.support.v4.app.BackStackRecord this$0; //synthetic
final Integer val$containerId; //synthetic
final android.view.View val$sceneRoot; //synthetic
final android.support.v4.app.BackStackRecord$TransitionState val$state; //synthetic
final java.lang.Object val$transition; //synthetic
/* # direct methods */
 android.support.v4.app.BackStackRecord$3 ( ) {
/* .locals 0 */
/* .prologue */
/* .line 1365 */
this.this$0 = p1;
this.val$sceneRoot = p2;
this.val$state = p3;
/* iput p4, p0, Landroid/support/v4/app/BackStackRecord$3;->val$containerId:I */
this.val$transition = p5;
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
/* # virtual methods */
public Boolean onPreDraw ( ) {
/* .locals 4 */
/* .prologue */
/* .line 1367 */
v0 = this.val$sceneRoot;
(( android.view.View ) v0 ).getViewTreeObserver ( ); // invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
(( android.view.ViewTreeObserver ) v0 ).removeOnPreDrawListener ( p0 ); // invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
/* .line 1368 */
v0 = this.this$0;
v1 = this.val$state;
/* iget v2, p0, Landroid/support/v4/app/BackStackRecord$3;->val$containerId:I */
v3 = this.val$transition;
android.support.v4.app.BackStackRecord .access$300 ( v0,v1,v2,v3 );
/* .line 1369 */
int v0 = 1; // const/4 v0, 0x1
} // .end method
