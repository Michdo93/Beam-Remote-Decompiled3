public abstract class android.support.v4.app.SharedElementCallback {
	 /* .source "SharedElementCallback.java" */
	 /* # instance fields */
	 private android.graphics.Matrix mTempMatrix;
	 /* # direct methods */
	 public android.support.v4.app.SharedElementCallback ( ) {
		 /* .locals 0 */
		 /* .prologue */
		 /* .line 39 */
		 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
		 return;
	 } // .end method
	 /* # virtual methods */
	 public android.os.Parcelable onCaptureSharedElementSnapshot ( android.view.View p0, android.graphics.Matrix p1, android.graphics.RectF p2 ) {
		 /* .locals 7 */
		 /* .param p1, "sharedElement" # Landroid/view/View; */
		 /* .param p2, "viewToGlobalMatrix" # Landroid/graphics/Matrix; */
		 /* .param p3, "screenBounds" # Landroid/graphics/RectF; */
		 /* .prologue */
		 /* .line 141 */
		 v4 = 		 (( android.graphics.RectF ) p3 ).width ( ); // invoke-virtual {p3}, Landroid/graphics/RectF;->width()F
		 v2 = 		 java.lang.Math .round ( v4 );
		 /* .line 142 */
		 /* .local v2, "bitmapWidth":I */
		 v4 = 		 (( android.graphics.RectF ) p3 ).height ( ); // invoke-virtual {p3}, Landroid/graphics/RectF;->height()F
		 v1 = 		 java.lang.Math .round ( v4 );
		 /* .line 143 */
		 /* .local v1, "bitmapHeight":I */
		 int v0 = 0; // const/4 v0, 0x0
		 /* .line 144 */
		 /* .local v0, "bitmap":Landroid/graphics/Bitmap; */
		 /* if-lez v2, :cond_1 */
		 /* if-lez v1, :cond_1 */
		 /* .line 145 */
		 v4 = this.mTempMatrix;
		 /* if-nez v4, :cond_0 */
		 /* .line 146 */
		 /* new-instance v4, Landroid/graphics/Matrix; */
		 /* invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V */
		 this.mTempMatrix = v4;
		 /* .line 148 */
	 } // :cond_0
	 v4 = this.mTempMatrix;
	 (( android.graphics.Matrix ) v4 ).set ( p2 ); // invoke-virtual {v4, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V
	 /* .line 149 */
	 v4 = this.mTempMatrix;
	 /* iget v5, p3, Landroid/graphics/RectF;->left:F */
	 /* neg-float v5, v5 */
	 /* iget v6, p3, Landroid/graphics/RectF;->top:F */
	 /* neg-float v6, v6 */
	 (( android.graphics.Matrix ) v4 ).postTranslate ( v5, v6 ); // invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z
	 /* .line 150 */
	 v4 = android.graphics.Bitmap$Config.ARGB_8888;
	 android.graphics.Bitmap .createBitmap ( v2,v1,v4 );
	 /* .line 151 */
	 /* new-instance v3, Landroid/graphics/Canvas; */
	 /* invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V */
	 /* .line 152 */
	 /* .local v3, "canvas":Landroid/graphics/Canvas; */
	 v4 = this.mTempMatrix;
	 (( android.graphics.Canvas ) v3 ).concat ( v4 ); // invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V
	 /* .line 153 */
	 (( android.view.View ) p1 ).draw ( v3 ); // invoke-virtual {p1, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
	 /* .line 155 */
} // .end local v3 # "canvas":Landroid/graphics/Canvas;
} // :cond_1
} // .end method
public android.view.View onCreateSnapshotView ( android.content.Context p0, android.os.Parcelable p1 ) {
/* .locals 3 */
/* .param p1, "context" # Landroid/content/Context; */
/* .param p2, "snapshot" # Landroid/os/Parcelable; */
/* .prologue */
/* .line 176 */
int v1 = 0; // const/4 v1, 0x0
/* .line 177 */
/* .local v1, "view":Landroid/widget/ImageView; */
/* instance-of v2, p2, Landroid/graphics/Bitmap; */
if ( v2 != null) { // if-eqz v2, :cond_0
/* move-object v0, p2 */
/* .line 178 */
/* check-cast v0, Landroid/graphics/Bitmap; */
/* .line 179 */
/* .local v0, "bitmap":Landroid/graphics/Bitmap; */
/* new-instance v1, Landroid/widget/ImageView; */
} // .end local v1 # "view":Landroid/widget/ImageView;
/* invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V */
/* .line 180 */
/* .restart local v1 # "view":Landroid/widget/ImageView; */
(( android.widget.ImageView ) v1 ).setImageBitmap ( v0 ); // invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
/* .line 182 */
} // .end local v0 # "bitmap":Landroid/graphics/Bitmap;
} // :cond_0
} // .end method
public void onMapSharedElements ( java.util.List p0, java.util.Map p1 ) {
/* .locals 0 */
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
/* .line 117 */
/* .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;" */
/* .local p2, "sharedElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;" */
return;
} // .end method
public void onRejectSharedElements ( java.util.List p0 ) {
/* .locals 0 */
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
/* .line 106 */
/* .local p1, "rejectedSharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;" */
return;
} // .end method
public void onSharedElementEnd ( java.util.List p0, java.util.List p1, java.util.List p2 ) {
/* .locals 0 */
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
/* .line 82 */
/* .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;" */
/* .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;" */
/* .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;" */
return;
} // .end method
public void onSharedElementStart ( java.util.List p0, java.util.List p1, java.util.List p2 ) {
/* .locals 0 */
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
/* .line 57 */
/* .local p1, "sharedElementNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;" */
/* .local p2, "sharedElements":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;" */
/* .local p3, "sharedElementSnapshots":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;" */
return;
} // .end method
