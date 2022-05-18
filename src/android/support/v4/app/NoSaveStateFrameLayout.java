class android.support.v4.app.NoSaveStateFrameLayout extends android.widget.FrameLayout {
	 /* .source "NoSaveStateFrameLayout.java" */
	 /* # direct methods */
	 public android.support.v4.app.NoSaveStateFrameLayout ( ) {
		 /* .locals 0 */
		 /* .param p1, "context" # Landroid/content/Context; */
		 /* .prologue */
		 /* .line 45 */
		 /* invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V */
		 /* .line 46 */
		 return;
	 } // .end method
	 static android.view.ViewGroup wrap ( android.view.View p0 ) {
		 /* .locals 5 */
		 /* .param p0, "child" # Landroid/view/View; */
		 /* .prologue */
		 int v4 = -1; // const/4 v4, -0x1
		 /* .line 32 */
		 /* new-instance v2, Landroid/support/v4/app/NoSaveStateFrameLayout; */
		 (( android.view.View ) p0 ).getContext ( ); // invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;
		 /* invoke-direct {v2, v3}, Landroid/support/v4/app/NoSaveStateFrameLayout;-><init>(Landroid/content/Context;)V */
		 /* .line 33 */
		 /* .local v2, "wrapper":Landroid/support/v4/app/NoSaveStateFrameLayout; */
		 (( android.view.View ) p0 ).getLayoutParams ( ); // invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
		 /* .line 34 */
		 /* .local v0, "childParams":Landroid/view/ViewGroup$LayoutParams; */
		 if ( v0 != null) { // if-eqz v0, :cond_0
			 /* .line 35 */
			 (( android.support.v4.app.NoSaveStateFrameLayout ) v2 ).setLayoutParams ( v0 ); // invoke-virtual {v2, v0}, Landroid/support/v4/app/NoSaveStateFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
			 /* .line 37 */
		 } // :cond_0
		 /* new-instance v1, Landroid/widget/FrameLayout$LayoutParams; */
		 /* invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V */
		 /* .line 39 */
		 /* .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams; */
		 (( android.view.View ) p0 ).setLayoutParams ( v1 ); // invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
		 /* .line 40 */
		 (( android.support.v4.app.NoSaveStateFrameLayout ) v2 ).addView ( p0 ); // invoke-virtual {v2, p0}, Landroid/support/v4/app/NoSaveStateFrameLayout;->addView(Landroid/view/View;)V
		 /* .line 41 */
	 } // .end method
	 /* # virtual methods */
	 protected void dispatchRestoreInstanceState ( android.util.SparseArray p0 ) {
		 /* .locals 0 */
		 /* .annotation system Ldalvik/annotation/Signature; */
		 /* value = { */
		 /* "(", */
		 /* "Landroid/util/SparseArray", */
		 /* "<", */
		 /* "Landroid/os/Parcelable;", */
		 /* ">;)V" */
		 /* } */
	 } // .end annotation
	 /* .prologue */
	 /* .line 61 */
	 /* .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;" */
	 (( android.support.v4.app.NoSaveStateFrameLayout ) p0 ).dispatchThawSelfOnly ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/app/NoSaveStateFrameLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V
	 /* .line 62 */
	 return;
} // .end method
protected void dispatchSaveInstanceState ( android.util.SparseArray p0 ) {
	 /* .locals 0 */
	 /* .annotation system Ldalvik/annotation/Signature; */
	 /* value = { */
	 /* "(", */
	 /* "Landroid/util/SparseArray", */
	 /* "<", */
	 /* "Landroid/os/Parcelable;", */
	 /* ">;)V" */
	 /* } */
} // .end annotation
/* .prologue */
/* .line 53 */
/* .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;" */
(( android.support.v4.app.NoSaveStateFrameLayout ) p0 ).dispatchFreezeSelfOnly ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/app/NoSaveStateFrameLayout;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
/* .line 54 */
return;
} // .end method
