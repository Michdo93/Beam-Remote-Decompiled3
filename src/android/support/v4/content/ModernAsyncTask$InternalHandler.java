class android.support.v4.content.ModernAsyncTask$InternalHandler extends android.os.Handler {
	 /* .source "ModernAsyncTask.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/content/ModernAsyncTask; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0xa */
/* name = "InternalHandler" */
} // .end annotation
/* # direct methods */
private android.support.v4.content.ModernAsyncTask$InternalHandler ( ) {
/* .locals 0 */
/* .prologue */
/* .line 466 */
/* invoke-direct {p0}, Landroid/os/Handler;-><init>()V */
return;
} // .end method
 android.support.v4.content.ModernAsyncTask$InternalHandler ( ) { //synthethic
/* .locals 0 */
/* .param p1, "x0" # Landroid/support/v4/content/ModernAsyncTask$1; */
/* .prologue */
/* .line 466 */
/* invoke-direct {p0}, Landroid/support/v4/content/ModernAsyncTask$InternalHandler;-><init>()V */
return;
} // .end method
/* # virtual methods */
public void handleMessage ( android.os.Message p0 ) {
/* .locals 4 */
/* .param p1, "msg" # Landroid/os/Message; */
/* .prologue */
/* .line 470 */
v0 = this.obj;
/* check-cast v0, Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult; */
/* .line 471 */
/* .local v0, "result":Landroid/support/v4/content/ModernAsyncTask$AsyncTaskResult; */
/* iget v1, p1, Landroid/os/Message;->what:I */
/* packed-switch v1, :pswitch_data_0 */
/* .line 480 */
} // :goto_0
return;
/* .line 474 */
/* :pswitch_0 */
v1 = this.mTask;
v2 = this.mData;
int v3 = 0; // const/4 v3, 0x0
/* aget-object v2, v2, v3 */
android.support.v4.content.ModernAsyncTask .access$500 ( v1,v2 );
/* .line 477 */
/* :pswitch_1 */
v1 = this.mTask;
v2 = this.mData;
(( android.support.v4.content.ModernAsyncTask ) v1 ).onProgressUpdate ( v2 ); // invoke-virtual {v1, v2}, Landroid/support/v4/content/ModernAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V
/* .line 471 */
/* nop */
/* :pswitch_data_0 */
/* .packed-switch 0x1 */
/* :pswitch_0 */
/* :pswitch_1 */
} // .end packed-switch
} // .end method
