public class android.support.v4.app.ActionBarDrawerToggle implements android.support.v4.widget.DrawerLayout$DrawerListener {
	 /* .source "ActionBarDrawerToggle.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/ActionBarDrawerToggle$1;, */
	 /* Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;, */
	 /* Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplJellybeanMR2;, */
	 /* Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplHC;, */
	 /* Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplBase;, */
	 /* Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;, */
	 /* Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;, */
	 /* Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider; */
	 /* } */
} // .end annotation
/* .annotation runtime Ljava/lang/Deprecated; */
} // .end annotation
/* # static fields */
private static final Integer ID_HOME;
private static final android.support.v4.app.ActionBarDrawerToggle$ActionBarDrawerToggleImpl IMPL;
private static final Float TOGGLE_DRAWABLE_OFFSET;
/* # instance fields */
private final android.app.Activity mActivity;
private final android.support.v4.app.ActionBarDrawerToggle$Delegate mActivityImpl;
private final Integer mCloseDrawerContentDescRes;
private android.graphics.drawable.Drawable mDrawerImage;
private final Integer mDrawerImageResource;
private Boolean mDrawerIndicatorEnabled;
private final android.support.v4.widget.DrawerLayout mDrawerLayout;
private Boolean mHasCustomUpIndicator;
private android.graphics.drawable.Drawable mHomeAsUpIndicator;
private final Integer mOpenDrawerContentDescRes;
private java.lang.Object mSetIndicatorInfo;
private android.support.v4.app.ActionBarDrawerToggle$SlideDrawable mSlider;
/* # direct methods */
static android.support.v4.app.ActionBarDrawerToggle ( ) {
/* .locals 3 */
/* .prologue */
int v2 = 0; // const/4 v2, 0x0
/* .line 176 */
/* .line 177 */
/* .local v0, "version":I */
/* const/16 v1, 0x12 */
/* if-lt v0, v1, :cond_0 */
/* .line 178 */
/* new-instance v1, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplJellybeanMR2; */
/* invoke-direct {v1, v2}, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplJellybeanMR2;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle$1;)V */
/* .line 184 */
} // :goto_0
return;
/* .line 179 */
} // :cond_0
/* const/16 v1, 0xb */
/* if-lt v0, v1, :cond_1 */
/* .line 180 */
/* new-instance v1, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplHC; */
/* invoke-direct {v1, v2}, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplHC;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle$1;)V */
/* .line 182 */
} // :cond_1
/* new-instance v1, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplBase; */
/* invoke-direct {v1, v2}, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplBase;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle$1;)V */
} // .end method
public android.support.v4.app.ActionBarDrawerToggle ( ) {
/* .locals 7 */
/* .param p1, "activity" # Landroid/app/Activity; */
/* .param p2, "drawerLayout" # Landroid/support/v4/widget/DrawerLayout; */
/* .param p3, "drawerImageRes" # I */
/* .param p4, "openDrawerContentDescRes" # I */
/* .param p5, "closeDrawerContentDescRes" # I */
/* .prologue */
/* .line 229 */
v0 = android.support.v4.app.ActionBarDrawerToggle .assumeMaterial ( p1 );
/* if-nez v0, :cond_0 */
int v3 = 1; // const/4 v3, 0x1
} // :goto_0
/* move-object v0, p0 */
/* move-object v1, p1 */
/* move-object v2, p2 */
/* move v4, p3 */
/* move v5, p4 */
/* move v6, p5 */
/* invoke-direct/range {v0 ..v6}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;ZIII)V */
/* .line 231 */
return;
/* .line 229 */
} // :cond_0
int v3 = 0; // const/4 v3, 0x0
} // .end method
public android.support.v4.app.ActionBarDrawerToggle ( ) {
/* .locals 3 */
/* .param p1, "activity" # Landroid/app/Activity; */
/* .param p2, "drawerLayout" # Landroid/support/v4/widget/DrawerLayout; */
/* .param p3, "animate" # Z */
/* .param p4, "drawerImageRes" # I */
/* .param p5, "openDrawerContentDescRes" # I */
/* .param p6, "closeDrawerContentDescRes" # I */
/* .prologue */
int v2 = 0; // const/4 v2, 0x0
/* .line 261 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 195 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z */
/* .line 262 */
this.mActivity = p1;
/* .line 265 */
/* instance-of v0, p1, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider; */
if ( v0 != null) { // if-eqz v0, :cond_0
/* move-object v0, p1 */
/* .line 266 */
/* check-cast v0, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider; */
this.mActivityImpl = v0;
/* .line 271 */
} // :goto_0
this.mDrawerLayout = p2;
/* .line 272 */
/* iput p4, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImageResource:I */
/* .line 273 */
/* iput p5, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I */
/* .line 274 */
/* iput p6, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I */
/* .line 276 */
(( android.support.v4.app.ActionBarDrawerToggle ) p0 ).getThemeUpIndicator ( ); // invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
this.mHomeAsUpIndicator = v0;
/* .line 277 */
android.support.v4.content.ContextCompat .getDrawable ( p1,p4 );
this.mDrawerImage = v0;
/* .line 278 */
/* new-instance v0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable; */
v1 = this.mDrawerImage;
/* invoke-direct {v0, p0, v1, v2}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;Landroid/support/v4/app/ActionBarDrawerToggle$1;)V */
this.mSlider = v0;
/* .line 279 */
v1 = this.mSlider;
if ( p3 != null) { // if-eqz p3, :cond_1
/* const v0, 0x3eaaaaab */
} // :goto_1
(( android.support.v4.app.ActionBarDrawerToggle$SlideDrawable ) v1 ).setOffset ( v0 ); // invoke-virtual {v1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setOffset(F)V
/* .line 280 */
return;
/* .line 268 */
} // :cond_0
this.mActivityImpl = v2;
/* .line 279 */
} // :cond_1
int v0 = 0; // const/4 v0, 0x0
} // .end method
static android.app.Activity access$400 ( android.support.v4.app.ActionBarDrawerToggle p0 ) { //synthethic
/* .locals 1 */
/* .param p0, "x0" # Landroid/support/v4/app/ActionBarDrawerToggle; */
/* .prologue */
/* .line 65 */
v0 = this.mActivity;
} // .end method
private static Boolean assumeMaterial ( android.content.Context p0 ) {
/* .locals 2 */
/* .param p0, "context" # Landroid/content/Context; */
/* .prologue */
/* const/16 v1, 0x15 */
/* .line 234 */
(( android.content.Context ) p0 ).getApplicationInfo ( ); // invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
/* iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I */
/* if-lt v0, v1, :cond_0 */
/* if-lt v0, v1, :cond_0 */
int v0 = 1; // const/4 v0, 0x1
} // :goto_0
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
} // .end method
/* # virtual methods */
android.graphics.drawable.Drawable getThemeUpIndicator ( ) {
/* .locals 2 */
/* .prologue */
/* .line 477 */
v0 = this.mActivityImpl;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 478 */
v0 = this.mActivityImpl;
/* .line 480 */
} // :goto_0
} // :cond_0
v0 = android.support.v4.app.ActionBarDrawerToggle.IMPL;
v1 = this.mActivity;
} // .end method
public Boolean isDrawerIndicatorEnabled ( ) {
/* .locals 1 */
/* .prologue */
/* .line 376 */
/* iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z */
} // .end method
public void onConfigurationChanged ( android.content.res.Configuration p0 ) {
/* .locals 2 */
/* .param p1, "newConfig" # Landroid/content/res/Configuration; */
/* .prologue */
/* .line 388 */
/* iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z */
/* if-nez v0, :cond_0 */
/* .line 389 */
(( android.support.v4.app.ActionBarDrawerToggle ) p0 ).getThemeUpIndicator ( ); // invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
this.mHomeAsUpIndicator = v0;
/* .line 391 */
} // :cond_0
v0 = this.mActivity;
/* iget v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImageResource:I */
android.support.v4.content.ContextCompat .getDrawable ( v0,v1 );
this.mDrawerImage = v0;
/* .line 392 */
(( android.support.v4.app.ActionBarDrawerToggle ) p0 ).syncState ( ); // invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V
/* .line 393 */
return;
} // .end method
public void onDrawerClosed ( android.view.View p0 ) {
/* .locals 2 */
/* .param p1, "drawerView" # Landroid/view/View; */
/* .prologue */
/* .line 459 */
v0 = this.mSlider;
int v1 = 0; // const/4 v1, 0x0
(( android.support.v4.app.ActionBarDrawerToggle$SlideDrawable ) v0 ).setPosition ( v1 ); // invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V
/* .line 460 */
/* iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 461 */
/* iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I */
(( android.support.v4.app.ActionBarDrawerToggle ) p0 ).setActionBarDescription ( v0 ); // invoke-virtual {p0, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarDescription(I)V
/* .line 463 */
} // :cond_0
return;
} // .end method
public void onDrawerOpened ( android.view.View p0 ) {
/* .locals 2 */
/* .param p1, "drawerView" # Landroid/view/View; */
/* .prologue */
/* .line 444 */
v0 = this.mSlider;
/* const/high16 v1, 0x3f800000 # 1.0f */
(( android.support.v4.app.ActionBarDrawerToggle$SlideDrawable ) v0 ).setPosition ( v1 ); // invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V
/* .line 445 */
/* iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 446 */
/* iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I */
(( android.support.v4.app.ActionBarDrawerToggle ) p0 ).setActionBarDescription ( v0 ); // invoke-virtual {p0, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarDescription(I)V
/* .line 448 */
} // :cond_0
return;
} // .end method
public void onDrawerSlide ( android.view.View p0, Float p1 ) {
/* .locals 4 */
/* .param p1, "drawerView" # Landroid/view/View; */
/* .param p2, "slideOffset" # F */
/* .prologue */
/* const/high16 v3, 0x40000000 # 2.0f */
/* const/high16 v2, 0x3f000000 # 0.5f */
/* .line 426 */
v1 = this.mSlider;
v0 = (( android.support.v4.app.ActionBarDrawerToggle$SlideDrawable ) v1 ).getPosition ( ); // invoke-virtual {v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->getPosition()F
/* .line 427 */
/* .local v0, "glyphOffset":F */
/* cmpl-float v1, p2, v2 */
/* if-lez v1, :cond_0 */
/* .line 428 */
int v1 = 0; // const/4 v1, 0x0
/* sub-float v2, p2, v2 */
v1 = java.lang.Math .max ( v1,v2 );
/* mul-float/2addr v1, v3 */
v0 = java.lang.Math .max ( v0,v1 );
/* .line 432 */
} // :goto_0
v1 = this.mSlider;
(( android.support.v4.app.ActionBarDrawerToggle$SlideDrawable ) v1 ).setPosition ( v0 ); // invoke-virtual {v1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V
/* .line 433 */
return;
/* .line 430 */
} // :cond_0
/* mul-float v1, p2, v3 */
v0 = java.lang.Math .min ( v0,v1 );
} // .end method
public void onDrawerStateChanged ( Integer p0 ) {
/* .locals 0 */
/* .param p1, "newState" # I */
/* .prologue */
/* .line 474 */
return;
} // .end method
public Boolean onOptionsItemSelected ( android.view.MenuItem p0 ) {
/* .locals 3 */
/* .param p1, "item" # Landroid/view/MenuItem; */
/* .prologue */
/* const v2, 0x800003 */
/* .line 405 */
v0 = if ( p1 != null) { // if-eqz p1, :cond_1
/* const v1, 0x102002c */
/* if-ne v0, v1, :cond_1 */
/* iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z */
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 406 */
v0 = this.mDrawerLayout;
v0 = (( android.support.v4.widget.DrawerLayout ) v0 ).isDrawerVisible ( v2 ); // invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(I)Z
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 407 */
v0 = this.mDrawerLayout;
(( android.support.v4.widget.DrawerLayout ) v0 ).closeDrawer ( v2 ); // invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V
/* .line 411 */
} // :goto_0
int v0 = 1; // const/4 v0, 0x1
/* .line 413 */
} // :goto_1
/* .line 409 */
} // :cond_0
v0 = this.mDrawerLayout;
(( android.support.v4.widget.DrawerLayout ) v0 ).openDrawer ( v2 ); // invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V
/* .line 413 */
} // :cond_1
int v0 = 0; // const/4 v0, 0x0
} // .end method
void setActionBarDescription ( Integer p0 ) {
/* .locals 3 */
/* .param p1, "contentDescRes" # I */
/* .prologue */
/* .line 493 */
v0 = this.mActivityImpl;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 494 */
v0 = this.mActivityImpl;
/* .line 499 */
} // :goto_0
return;
/* .line 497 */
} // :cond_0
v0 = android.support.v4.app.ActionBarDrawerToggle.IMPL;
v1 = this.mSetIndicatorInfo;
v2 = this.mActivity;
this.mSetIndicatorInfo = v0;
} // .end method
void setActionBarUpIndicator ( android.graphics.drawable.Drawable p0, Integer p1 ) {
/* .locals 3 */
/* .param p1, "upDrawable" # Landroid/graphics/drawable/Drawable; */
/* .param p2, "contentDescRes" # I */
/* .prologue */
/* .line 484 */
v0 = this.mActivityImpl;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 485 */
v0 = this.mActivityImpl;
/* .line 490 */
} // :goto_0
return;
/* .line 488 */
} // :cond_0
v0 = android.support.v4.app.ActionBarDrawerToggle.IMPL;
v1 = this.mSetIndicatorInfo;
v2 = this.mActivity;
this.mSetIndicatorInfo = v0;
} // .end method
public void setDrawerIndicatorEnabled ( Boolean p0 ) {
/* .locals 3 */
/* .param p1, "enable" # Z */
/* .prologue */
/* .line 360 */
/* iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z */
/* if-eq p1, v0, :cond_0 */
/* .line 361 */
if ( p1 != null) { // if-eqz p1, :cond_2
/* .line 362 */
v1 = this.mSlider;
v0 = this.mDrawerLayout;
/* const v2, 0x800003 */
v0 = (( android.support.v4.widget.DrawerLayout ) v0 ).isDrawerOpen ( v2 ); // invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z
if ( v0 != null) { // if-eqz v0, :cond_1
/* iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I */
} // :goto_0
(( android.support.v4.app.ActionBarDrawerToggle ) p0 ).setActionBarUpIndicator ( v1, v0 ); // invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
/* .line 367 */
} // :goto_1
/* iput-boolean p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z */
/* .line 369 */
} // :cond_0
return;
/* .line 362 */
} // :cond_1
/* iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I */
/* .line 365 */
} // :cond_2
v0 = this.mHomeAsUpIndicator;
int v1 = 0; // const/4 v1, 0x0
(( android.support.v4.app.ActionBarDrawerToggle ) p0 ).setActionBarUpIndicator ( v0, v1 ); // invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
} // .end method
public void setHomeAsUpIndicator ( Integer p0 ) {
/* .locals 2 */
/* .param p1, "resId" # I */
/* .prologue */
/* .line 341 */
int v0 = 0; // const/4 v0, 0x0
/* .line 342 */
/* .local v0, "indicator":Landroid/graphics/drawable/Drawable; */
if ( p1 != null) { // if-eqz p1, :cond_0
/* .line 343 */
v1 = this.mActivity;
android.support.v4.content.ContextCompat .getDrawable ( v1,p1 );
/* .line 346 */
} // :cond_0
(( android.support.v4.app.ActionBarDrawerToggle ) p0 ).setHomeAsUpIndicator ( v0 ); // invoke-virtual {p0, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
/* .line 347 */
return;
} // .end method
public void setHomeAsUpIndicator ( android.graphics.drawable.Drawable p0 ) {
/* .locals 2 */
/* .param p1, "indicator" # Landroid/graphics/drawable/Drawable; */
/* .prologue */
int v1 = 0; // const/4 v1, 0x0
/* .line 316 */
/* if-nez p1, :cond_1 */
/* .line 317 */
(( android.support.v4.app.ActionBarDrawerToggle ) p0 ).getThemeUpIndicator ( ); // invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
this.mHomeAsUpIndicator = v0;
/* .line 318 */
/* iput-boolean v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z */
/* .line 324 */
} // :goto_0
/* iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z */
/* if-nez v0, :cond_0 */
/* .line 325 */
v0 = this.mHomeAsUpIndicator;
(( android.support.v4.app.ActionBarDrawerToggle ) p0 ).setActionBarUpIndicator ( v0, v1 ); // invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
/* .line 327 */
} // :cond_0
return;
/* .line 320 */
} // :cond_1
this.mHomeAsUpIndicator = p1;
/* .line 321 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z */
} // .end method
public void syncState ( ) {
/* .locals 3 */
/* .prologue */
/* const v2, 0x800003 */
/* .line 292 */
v0 = this.mDrawerLayout;
v0 = (( android.support.v4.widget.DrawerLayout ) v0 ).isDrawerOpen ( v2 ); // invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 293 */
v0 = this.mSlider;
/* const/high16 v1, 0x3f800000 # 1.0f */
(( android.support.v4.app.ActionBarDrawerToggle$SlideDrawable ) v0 ).setPosition ( v1 ); // invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V
/* .line 298 */
} // :goto_0
/* iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 299 */
v1 = this.mSlider;
v0 = this.mDrawerLayout;
v0 = (( android.support.v4.widget.DrawerLayout ) v0 ).isDrawerOpen ( v2 ); // invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z
if ( v0 != null) { // if-eqz v0, :cond_2
/* iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I */
} // :goto_1
(( android.support.v4.app.ActionBarDrawerToggle ) p0 ).setActionBarUpIndicator ( v1, v0 ); // invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
/* .line 302 */
} // :cond_0
return;
/* .line 295 */
} // :cond_1
v0 = this.mSlider;
int v1 = 0; // const/4 v1, 0x0
(( android.support.v4.app.ActionBarDrawerToggle$SlideDrawable ) v0 ).setPosition ( v1 ); // invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V
/* .line 299 */
} // :cond_2
/* iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I */
} // .end method
