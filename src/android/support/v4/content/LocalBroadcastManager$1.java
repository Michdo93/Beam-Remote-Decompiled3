class android.support.v4.content.LocalBroadcastManager$1 extends android.os.Handler {
	 /* .source "LocalBroadcastManager.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingMethod; */
	 /* value = Landroid/support/v4/content/LocalBroadcastManager;-><init>(Landroid/content/Context;)V */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x0 */
/* name = null */
} // .end annotation
/* # instance fields */
final android.support.v4.content.LocalBroadcastManager this$0; //synthetic
/* # direct methods */
 android.support.v4.content.LocalBroadcastManager$1 ( ) {
/* .locals 0 */
/* .param p2, "x0" # Landroid/os/Looper; */
/* .prologue */
/* .line 110 */
this.this$0 = p1;
/* invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V */
return;
} // .end method
/* # virtual methods */
public void handleMessage ( android.os.Message p0 ) {
/* .locals 1 */
/* .param p1, "msg" # Landroid/os/Message; */
/* .prologue */
/* .line 114 */
/* iget v0, p1, Landroid/os/Message;->what:I */
/* packed-switch v0, :pswitch_data_0 */
/* .line 119 */
/* invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V */
/* .line 121 */
} // :goto_0
return;
/* .line 116 */
/* :pswitch_0 */
v0 = this.this$0;
android.support.v4.content.LocalBroadcastManager .access$000 ( v0 );
/* .line 114 */
/* nop */
/* :pswitch_data_0 */
/* .packed-switch 0x1 */
/* :pswitch_0 */
} // .end packed-switch
} // .end method
