class android.support.v4.app.ActivityCompat$SharedElementCallback21Impl extends android.support.v4.app.ActivityCompat21$SharedElementCallback21 {
	 /* .source "ActivityCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/ActivityCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0xa */
/* name = "SharedElementCallback21Impl" */
} // .end annotation
/* # instance fields */
private android.support.v4.app.SharedElementCallback mCallback;
/* # direct methods */
public android.support.v4.app.ActivityCompat$SharedElementCallback21Impl ( ) {
/* .locals 0 */
/* .param p1, "callback" # Landroid/support/v4/app/SharedElementCallback; */
/* .prologue */
/* .line 222 */
/* invoke-direct {p0}, Landroid/support/v4/app/ActivityCompat21$SharedElementCallback21;-><init>()V */
/* .line 223 */
this.mCallback = p1;
/* .line 224 */
return;
} // .end method
/* # virtual methods */
public android.os.Parcelable onCaptureSharedElementSnapshot ( android.view.View p0, android.graphics.Matrix p1, android.graphics.RectF p2 ) {
/* .locals 1 */
/* .param p1, "sharedElement" # Landroid/view/View; */
/* .param p2, "viewToGlobalMatrix" # Landroid/graphics/Matrix; */
/* .param p3, "screenBounds" # Landroid/graphics/RectF; */
/* .prologue */
/* .line 253 */
v0 = this.mCallback;
(( android.support.v4.app.SharedElementCallback ) v0 ).onCaptureSharedElementSnapshot ( p1, p2, p3 ); // invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/SharedElementCallback;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
} // .end method
public android.view.View onCreateSnapshotView ( android.content.Context p0, android.os.Parcelable p1 ) {
/* .locals 1 */
/* .param p1, "context" # Landroid/content/Context; */
/* .param p2, "snapshot" # Landroid/os/Parcelable; */
/* .prologue */
/* .line 259 */
v0 = this.mCallback;
(( android.support.v4.app.SharedElementCallback ) v0 ).onCreateSnapshotView ( p1, p2 ); // invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/SharedElementCallback;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
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
/* .line 247 */
/* .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;" */
/* .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;" */
v0 = this.mCallback;
(( android.support.v4.app.SharedElementCallback ) v0 ).onMapSharedElements ( p1, p2 ); // invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
/* .line 248 */
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
/* .line 242 */
/* .local p1, "rejectedSharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;" */
v0 = this.mCallback;
(( android.support.v4.app.SharedElementCallback ) v0 ).onRejectSharedElements ( p1 ); // invoke-virtual {v0, p1}, Landroid/support/v4/app/SharedElementCallback;->onRejectSharedElements(Ljava/util/List;)V
/* .line 243 */
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
/* .line 236 */
/* .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;" */
/* .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;" */
/* .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;" */
v0 = this.mCallback;
(( android.support.v4.app.SharedElementCallback ) v0 ).onSharedElementEnd ( p1, p2, p3 ); // invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
/* .line 238 */
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
/* .line 229 */
/* .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;" */
/* .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;" */
/* .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;" */
v0 = this.mCallback;
(( android.support.v4.app.SharedElementCallback ) v0 ).onSharedElementStart ( p1, p2, p3 ); // invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
/* .line 231 */
return;
} // .end method
