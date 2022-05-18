class android.support.v4.app.FragmentTabHost$DummyTabFactory implements android.widget.TabHost$TabContentFactory {
	 /* .source "FragmentTabHost.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/FragmentTabHost; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x8 */
/* name = "DummyTabFactory" */
} // .end annotation
/* # instance fields */
private final android.content.Context mContext;
/* # direct methods */
public android.support.v4.app.FragmentTabHost$DummyTabFactory ( ) {
/* .locals 0 */
/* .param p1, "context" # Landroid/content/Context; */
/* .prologue */
/* .line 77 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 78 */
this.mContext = p1;
/* .line 79 */
return;
} // .end method
/* # virtual methods */
public android.view.View createTabContent ( java.lang.String p0 ) {
/* .locals 3 */
/* .param p1, "tag" # Ljava/lang/String; */
/* .prologue */
int v2 = 0; // const/4 v2, 0x0
/* .line 83 */
/* new-instance v0, Landroid/view/View; */
v1 = this.mContext;
/* invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V */
/* .line 84 */
/* .local v0, "v":Landroid/view/View; */
(( android.view.View ) v0 ).setMinimumWidth ( v2 ); // invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V
/* .line 85 */
(( android.view.View ) v0 ).setMinimumHeight ( v2 ); // invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V
/* .line 86 */
} // .end method
