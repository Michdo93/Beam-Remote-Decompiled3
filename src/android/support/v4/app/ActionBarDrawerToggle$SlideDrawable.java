class android.support.v4.app.ActionBarDrawerToggle$SlideDrawable extends android.graphics.drawable.InsetDrawable implements android.graphics.drawable.Drawable$Callback {
	 /* .source "ActionBarDrawerToggle.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/ActionBarDrawerToggle; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x2 */
/* name = "SlideDrawable" */
} // .end annotation
/* # instance fields */
private final Boolean mHasMirroring;
private Float mOffset;
private Float mPosition;
private final android.graphics.Rect mTmpRect;
final android.support.v4.app.ActionBarDrawerToggle this$0; //synthetic
/* # direct methods */
private android.support.v4.app.ActionBarDrawerToggle$SlideDrawable ( ) {
/* .locals 3 */
/* .param p2, "wrapped" # Landroid/graphics/drawable/Drawable; */
/* .prologue */
int v0 = 0; // const/4 v0, 0x0
/* .line 508 */
this.this$0 = p1;
/* .line 509 */
/* invoke-direct {p0, p2, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V */
/* .line 502 */
/* const/16 v2, 0x12 */
/* if-le v1, v2, :cond_0 */
int v0 = 1; // const/4 v0, 0x1
} // :cond_0
/* iput-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mHasMirroring:Z */
/* .line 503 */
/* new-instance v0, Landroid/graphics/Rect; */
/* invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V */
this.mTmpRect = v0;
/* .line 510 */
return;
} // .end method
 android.support.v4.app.ActionBarDrawerToggle$SlideDrawable ( ) { //synthethic
/* .locals 0 */
/* .param p1, "x0" # Landroid/support/v4/app/ActionBarDrawerToggle; */
/* .param p2, "x1" # Landroid/graphics/drawable/Drawable; */
/* .param p3, "x2" # Landroid/support/v4/app/ActionBarDrawerToggle$1; */
/* .prologue */
/* .line 501 */
/* invoke-direct {p0, p1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;)V */
return;
} // .end method
/* # virtual methods */
public void draw ( android.graphics.Canvas p0 ) {
/* .locals 6 */
/* .param p1, "canvas" # Landroid/graphics/Canvas; */
/* .prologue */
int v5 = 0; // const/4 v5, 0x0
int v0 = 1; // const/4 v0, 0x1
/* .line 540 */
v3 = this.mTmpRect;
(( android.support.v4.app.ActionBarDrawerToggle$SlideDrawable ) p0 ).copyBounds ( v3 ); // invoke-virtual {p0, v3}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->copyBounds(Landroid/graphics/Rect;)V
/* .line 541 */
(( android.graphics.Canvas ) p1 ).save ( ); // invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
/* .line 544 */
v3 = this.this$0;
android.support.v4.app.ActionBarDrawerToggle .access$400 ( v3 );
(( android.app.Activity ) v3 ).getWindow ( ); // invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
(( android.view.Window ) v3 ).getDecorView ( ); // invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;
v3 = android.support.v4.view.ViewCompat .getLayoutDirection ( v3 );
/* if-ne v3, v0, :cond_2 */
/* move v1, v0 */
/* .line 546 */
/* .local v1, "isLayoutRTL":Z */
} // :goto_0
if ( v1 != null) { // if-eqz v1, :cond_0
int v0 = -1; // const/4 v0, -0x1
/* .line 547 */
/* .local v0, "flipRtl":I */
} // :cond_0
v3 = this.mTmpRect;
v2 = (( android.graphics.Rect ) v3 ).width ( ); // invoke-virtual {v3}, Landroid/graphics/Rect;->width()I
/* .line 548 */
/* .local v2, "width":I */
/* iget v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F */
/* neg-float v3, v3 */
/* int-to-float v4, v2 */
/* mul-float/2addr v3, v4 */
/* iget v4, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F */
/* mul-float/2addr v3, v4 */
/* int-to-float v4, v0 */
/* mul-float/2addr v3, v4 */
(( android.graphics.Canvas ) p1 ).translate ( v3, v5 ); // invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V
/* .line 551 */
if ( v1 != null) { // if-eqz v1, :cond_1
/* iget-boolean v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mHasMirroring:Z */
/* if-nez v3, :cond_1 */
/* .line 552 */
/* int-to-float v3, v2 */
(( android.graphics.Canvas ) p1 ).translate ( v3, v5 ); // invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V
/* .line 553 */
/* const/high16 v3, -0x40800000 # -1.0f */
/* const/high16 v4, 0x3f800000 # 1.0f */
(( android.graphics.Canvas ) p1 ).scale ( v3, v4 ); // invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V
/* .line 556 */
} // :cond_1
/* invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V */
/* .line 557 */
(( android.graphics.Canvas ) p1 ).restore ( ); // invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
/* .line 558 */
return;
/* .line 544 */
} // .end local v0 # "flipRtl":I
} // .end local v1 # "isLayoutRTL":Z
} // .end local v2 # "width":I
} // :cond_2
int v1 = 0; // const/4 v1, 0x0
} // .end method
public Float getPosition ( ) {
/* .locals 1 */
/* .prologue */
/* .line 523 */
/* iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F */
} // .end method
public void setOffset ( Float p0 ) {
/* .locals 0 */
/* .param p1, "offset" # F */
/* .prologue */
/* .line 534 */
/* iput p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F */
/* .line 535 */
(( android.support.v4.app.ActionBarDrawerToggle$SlideDrawable ) p0 ).invalidateSelf ( ); // invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V
/* .line 536 */
return;
} // .end method
public void setPosition ( Float p0 ) {
/* .locals 0 */
/* .param p1, "position" # F */
/* .prologue */
/* .line 518 */
/* iput p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F */
/* .line 519 */
(( android.support.v4.app.ActionBarDrawerToggle$SlideDrawable ) p0 ).invalidateSelf ( ); // invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V
/* .line 520 */
return;
} // .end method
