class android.support.v4.app.FragmentActivity$1 extends android.os.Handler {
	 /* .source "FragmentActivity.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/FragmentActivity; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x0 */
/* name = null */
} // .end annotation
/* # instance fields */
final android.support.v4.app.FragmentActivity this$0; //synthetic
/* # direct methods */
 android.support.v4.app.FragmentActivity$1 ( ) {
/* .locals 0 */
/* .prologue */
/* .line 86 */
this.this$0 = p1;
/* invoke-direct {p0}, Landroid/os/Handler;-><init>()V */
return;
} // .end method
/* # virtual methods */
public void handleMessage ( android.os.Message p0 ) {
/* .locals 2 */
/* .param p1, "msg" # Landroid/os/Message; */
/* .prologue */
/* .line 89 */
/* iget v0, p1, Landroid/os/Message;->what:I */
/* packed-switch v0, :pswitch_data_0 */
/* .line 100 */
/* invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V */
/* .line 102 */
} // :cond_0
} // :goto_0
return;
/* .line 91 */
/* :pswitch_0 */
v0 = this.this$0;
/* iget-boolean v0, v0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 92 */
v0 = this.this$0;
int v1 = 0; // const/4 v1, 0x0
(( android.support.v4.app.FragmentActivity ) v0 ).doReallyStop ( v1 ); // invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V
/* .line 96 */
/* :pswitch_1 */
v0 = this.this$0;
(( android.support.v4.app.FragmentActivity ) v0 ).onResumeFragments ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V
/* .line 97 */
v0 = this.this$0;
v0 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).execPendingActions ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z
/* .line 89 */
/* nop */
/* :pswitch_data_0 */
/* .packed-switch 0x1 */
/* :pswitch_0 */
/* :pswitch_1 */
} // .end packed-switch
} // .end method
