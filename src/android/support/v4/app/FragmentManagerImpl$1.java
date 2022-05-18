class android.support.v4.app.FragmentManagerImpl$1 implements java.lang.Runnable {
	 /* .source "FragmentManager.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/FragmentManagerImpl; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x0 */
/* name = null */
} // .end annotation
/* # instance fields */
final android.support.v4.app.FragmentManagerImpl this$0; //synthetic
/* # direct methods */
 android.support.v4.app.FragmentManagerImpl$1 ( ) {
/* .locals 0 */
/* .prologue */
/* .line 451 */
this.this$0 = p1;
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
/* # virtual methods */
public void run ( ) {
/* .locals 1 */
/* .prologue */
/* .line 454 */
v0 = this.this$0;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).execPendingActions ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z
/* .line 455 */
return;
} // .end method
