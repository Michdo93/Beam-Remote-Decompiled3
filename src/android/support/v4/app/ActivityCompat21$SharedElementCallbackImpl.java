class android.support.v4.app.ActivityCompat21$SharedElementCallbackImpl extends android.app.SharedElementCallback {
	 /* .source "ActivityCompat21.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/ActivityCompat21; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0xa */
/* name = "SharedElementCallbackImpl" */
} // .end annotation
/* # instance fields */
private android.support.v4.app.ActivityCompat21$SharedElementCallback21 mCallback;
/* # direct methods */
public android.support.v4.app.ActivityCompat21$SharedElementCallbackImpl ( ) {
/* .locals 0 */
/* .param p1, "callback" # Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21; */
/* .prologue */
/* .line 83 */
/* invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V */
/* .line 84 */
this.mCallback = p1;
/* .line 85 */
return;
} // .end method
/* # virtual methods */
public android.os.Parcelable onCaptureSharedElementSnapshot ( android.view.View p0, android.graphics.Matrix p1, android.graphics.RectF p2 ) {
/* .locals 1 */
/* .param p1, "sharedElement" # Landroid/view/View; */
/* .param p2, "viewToGlobalMatrix" # Landroid/graphics/Matrix; */
/* .param p3, "screenBounds" # Landroid/graphics/RectF; */
/* .prologue */
/* .line 115 */
v0 = this.mCallback;
(( android.support.v4.app.ActivityCompat21$SharedElementCallback21 ) v0 ).onCaptureSharedElementSnapshot ( p1, p2, p3 ); // invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
} // .end method
public android.view.View onCreateSnapshotView ( android.content.Context p0, android.os.Parcelable p1 ) {
/* .locals 1 */
/* .param p1, "context" # Landroid/content/Context; */
/* .param p2, "snapshot" # Landroid/os/Parcelable; */
/* .prologue */
/* .line 121 */
v0 = this.mCallback;
(( android.support.v4.app.ActivityCompat21$SharedElementCallback21 ) v0 ).onCreateSnapshotView ( p1, p2 ); // invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
} // .end method
public void onMapSharedElements ( java.util.List p0, java.util.Map p1 ) {
/* .locals 1 */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Ljava/util/List", */
/* "<", */
/* "Ljava/lang/String;", */
/* ">;", */
/* "Ljava/util/Map", */
/* "<", */
/* "Ljava/lang/String;", */
/* "Landroid/view/View;", */
/* ">;)V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 108 */
/* .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;" */
/* .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;" */
v0 = this.mCallback;
(( android.support.v4.app.ActivityCompat21$SharedElementCallback21 ) v0 ).onMapSharedElements ( p1, p2 ); // invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
/* .line 109 */
return;
} // .end method
public void onRejectSharedElements ( java.util.List p0 ) {
/* .locals 1 */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Ljava/util/List", */
/* "<", */
/* "Landroid/view/View;", */
/* ">;)V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 103 */
/* .local p1, "rejectedSharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;" */
v0 = this.mCallback;
(( android.support.v4.app.ActivityCompat21$SharedElementCallback21 ) v0 ).onRejectSharedElements ( p1 ); // invoke-virtual {v0, p1}, Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;->onRejectSharedElements(Ljava/util/List;)V
/* .line 104 */
return;
} // .end method
public void onSharedElementEnd ( java.util.List p0, java.util.List p1, java.util.List p2 ) {
/* .locals 1 */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Ljava/util/List", */
/* "<", */
/* "Ljava/lang/String;", */
/* ">;", */
/* "Ljava/util/List", */
/* "<", */
/* "Landroid/view/View;", */
/* ">;", */
/* "Ljava/util/List", */
/* "<", */
/* "Landroid/view/View;", */
/* ">;)V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 97 */
/* .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;" */
/* .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;" */
/* .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;" */
v0 = this.mCallback;
(( android.support.v4.app.ActivityCompat21$SharedElementCallback21 ) v0 ).onSharedElementEnd ( p1, p2, p3 ); // invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
/* .line 99 */
return;
} // .end method
public void onSharedElementStart ( java.util.List p0, java.util.List p1, java.util.List p2 ) {
/* .locals 1 */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Ljava/util/List", */
/* "<", */
/* "Ljava/lang/String;", */
/* ">;", */
/* "Ljava/util/List", */
/* "<", */
/* "Landroid/view/View;", */
/* ">;", */
/* "Ljava/util/List", */
/* "<", */
/* "Landroid/view/View;", */
/* ">;)V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 90 */
/* .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;" */
/* .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;" */
/* .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;" */
v0 = this.mCallback;
(( android.support.v4.app.ActivityCompat21$SharedElementCallback21 ) v0 ).onSharedElementStart ( p1, p2, p3 ); // invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
/* .line 92 */
return;
} // .end method
