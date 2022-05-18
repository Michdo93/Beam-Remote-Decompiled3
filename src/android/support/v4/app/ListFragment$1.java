class android.support.v4.app.ListFragment$1 implements java.lang.Runnable {
	 /* .source "ListFragment.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/ListFragment; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x0 */
/* name = null */
} // .end annotation
/* # instance fields */
final android.support.v4.app.ListFragment this$0; //synthetic
/* # direct methods */
 android.support.v4.app.ListFragment$1 ( ) {
/* .locals 0 */
/* .prologue */
/* .line 49 */
this.this$0 = p1;
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
/* # virtual methods */
public void run ( ) {
/* .locals 2 */
/* .prologue */
/* .line 51 */
v0 = this.this$0;
v0 = this.mList;
v1 = this.this$0;
v1 = this.mList;
(( android.widget.ListView ) v0 ).focusableViewAvailable ( v1 ); // invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V
/* .line 52 */
return;
} // .end method
