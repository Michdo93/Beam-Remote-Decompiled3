class android.support.v4.app.ListFragment$2 implements android.widget.AdapterView$OnItemClickListener {
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
 android.support.v4.app.ListFragment$2 ( ) {
/* .locals 0 */
/* .prologue */
/* .line 56 */
this.this$0 = p1;
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
/* # virtual methods */
public void onItemClick ( android.widget.AdapterView p0, android.view.View p1, Integer p2, Long p3 ) {
/* .locals 6 */
/* .param p2, "v" # Landroid/view/View; */
/* .param p3, "position" # I */
/* .param p4, "id" # J */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Landroid/widget/AdapterView", */
/* "<*>;", */
/* "Landroid/view/View;", */
/* "IJ)V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 58 */
/* .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;" */
v0 = this.this$0;
/* move-object v1, p1 */
/* check-cast v1, Landroid/widget/ListView; */
/* move-object v2, p2 */
/* move v3, p3 */
/* move-wide v4, p4 */
/* invoke-virtual/range {v0 ..v5}, Landroid/support/v4/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V */
/* .line 59 */
return;
} // .end method
