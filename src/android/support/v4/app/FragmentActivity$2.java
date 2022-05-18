class android.support.v4.app.FragmentActivity$2 implements android.support.v4.app.FragmentContainer {
	 /* .source "FragmentActivity.java" */
	 /* # interfaces */
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
 android.support.v4.app.FragmentActivity$2 ( ) {
/* .locals 0 */
/* .prologue */
/* .line 106 */
this.this$0 = p1;
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
/* # virtual methods */
public android.view.View findViewById ( Integer p0 ) {
/* .locals 1 */
/* .param p1, "id" # I */
/* .prologue */
/* .line 109 */
v0 = this.this$0;
(( android.support.v4.app.FragmentActivity ) v0 ).findViewById ( p1 ); // invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;
} // .end method
public Boolean hasView ( ) {
/* .locals 2 */
/* .prologue */
/* .line 114 */
v1 = this.this$0;
(( android.support.v4.app.FragmentActivity ) v1 ).getWindow ( ); // invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;
/* .line 115 */
/* .local v0, "window":Landroid/view/Window; */
if ( v0 != null) { // if-eqz v0, :cond_0
	 (( android.view.Window ) v0 ).peekDecorView ( ); // invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;
	 if ( v1 != null) { // if-eqz v1, :cond_0
		 int v1 = 1; // const/4 v1, 0x1
	 } // :goto_0
} // :cond_0
int v1 = 0; // const/4 v1, 0x0
} // .end method
