class android.support.v4.app.Fragment$1 implements android.support.v4.app.FragmentContainer {
	 /* .source "Fragment.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingMethod; */
	 /* value = Landroid/support/v4/app/Fragment;->instantiateChildFragmentManager()V */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x0 */
/* name = null */
} // .end annotation
/* # instance fields */
final android.support.v4.app.Fragment this$0; //synthetic
/* # direct methods */
 android.support.v4.app.Fragment$1 ( ) {
/* .locals 0 */
/* .prologue */
/* .line 1742 */
this.this$0 = p1;
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
/* # virtual methods */
public android.view.View findViewById ( Integer p0 ) {
/* .locals 2 */
/* .param p1, "id" # I */
/* .prologue */
/* .line 1745 */
v0 = this.this$0;
v0 = this.mView;
/* if-nez v0, :cond_0 */
/* .line 1746 */
/* new-instance v0, Ljava/lang/IllegalStateException; */
final String v1 = "Fragment does not have a view"; // const-string v1, "Fragment does not have a view"
/* invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 1748 */
} // :cond_0
v0 = this.this$0;
v0 = this.mView;
(( android.view.View ) v0 ).findViewById ( p1 ); // invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
} // .end method
public Boolean hasView ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1753 */
v0 = this.this$0;
v0 = this.mView;
if ( v0 != null) { // if-eqz v0, :cond_0
int v0 = 1; // const/4 v0, 0x1
} // :goto_0
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
} // .end method
