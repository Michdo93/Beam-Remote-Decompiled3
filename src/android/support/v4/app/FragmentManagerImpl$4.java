class android.support.v4.app.FragmentManagerImpl$4 implements java.lang.Runnable {
	 /* .source "FragmentManager.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingMethod; */
	 /* value = Landroid/support/v4/app/FragmentManagerImpl;->popBackStack(II)V */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x0 */
/* name = null */
} // .end annotation
/* # instance fields */
final android.support.v4.app.FragmentManagerImpl this$0; //synthetic
final Integer val$flags; //synthetic
final Integer val$id; //synthetic
/* # direct methods */
 android.support.v4.app.FragmentManagerImpl$4 ( ) {
/* .locals 0 */
/* .prologue */
/* .line 526 */
this.this$0 = p1;
/* iput p2, p0, Landroid/support/v4/app/FragmentManagerImpl$4;->val$id:I */
/* iput p3, p0, Landroid/support/v4/app/FragmentManagerImpl$4;->val$flags:I */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
/* # virtual methods */
public void run ( ) {
/* .locals 5 */
/* .prologue */
/* .line 528 */
v0 = this.this$0;
v1 = this.this$0;
v1 = this.mActivity;
v1 = this.mHandler;
int v2 = 0; // const/4 v2, 0x0
/* iget v3, p0, Landroid/support/v4/app/FragmentManagerImpl$4;->val$id:I */
/* iget v4, p0, Landroid/support/v4/app/FragmentManagerImpl$4;->val$flags:I */
(( android.support.v4.app.FragmentManagerImpl ) v0 ).popBackStackState ( v1, v2, v3, v4 ); // invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
/* .line 529 */
return;
} // .end method
