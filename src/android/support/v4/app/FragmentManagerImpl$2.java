class android.support.v4.app.FragmentManagerImpl$2 implements java.lang.Runnable {
	 /* .source "FragmentManager.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingMethod; */
	 /* value = Landroid/support/v4/app/FragmentManagerImpl;->popBackStack()V */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x0 */
/* name = null */
} // .end annotation
/* # instance fields */
final android.support.v4.app.FragmentManagerImpl this$0; //synthetic
/* # direct methods */
 android.support.v4.app.FragmentManagerImpl$2 ( ) {
/* .locals 0 */
/* .prologue */
/* .line 491 */
this.this$0 = p1;
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
/* # virtual methods */
public void run ( ) {
/* .locals 5 */
/* .prologue */
/* .line 493 */
v0 = this.this$0;
v1 = this.this$0;
v1 = this.mActivity;
v1 = this.mHandler;
int v2 = 0; // const/4 v2, 0x0
int v3 = -1; // const/4 v3, -0x1
int v4 = 0; // const/4 v4, 0x0
(( android.support.v4.app.FragmentManagerImpl ) v0 ).popBackStackState ( v1, v2, v3, v4 ); // invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
/* .line 494 */
return;
} // .end method
