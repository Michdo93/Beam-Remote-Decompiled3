class android.support.v4.app.ActionBarDrawerToggleJellybeanMR2 {
	 /* .source "ActionBarDrawerToggleJellybeanMR2.java" */
	 /* # static fields */
	 private static final java.lang.String TAG;
	 private static final THEME_ATTRS;
	 /* # direct methods */
	 static android.support.v4.app.ActionBarDrawerToggleJellybeanMR2 ( ) {
		 /* .locals 3 */
		 /* .prologue */
		 /* .line 31 */
		 int v0 = 1; // const/4 v0, 0x1
		 /* new-array v0, v0, [I */
		 int v1 = 0; // const/4 v1, 0x0
		 /* const v2, 0x101030b */
		 /* aput v2, v0, v1 */
		 return;
	 } // .end method
	 android.support.v4.app.ActionBarDrawerToggleJellybeanMR2 ( ) {
		 /* .locals 0 */
		 /* .prologue */
		 /* .line 28 */
		 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
		 return;
	 } // .end method
	 public static android.graphics.drawable.Drawable getThemeUpIndicator ( android.app.Activity p0 ) {
		 /* .locals 8 */
		 /* .param p0, "activity" # Landroid/app/Activity; */
		 /* .prologue */
		 int v7 = 0; // const/4 v7, 0x0
		 /* .line 55 */
		 (( android.app.Activity ) p0 ).getActionBar ( ); // invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;
		 /* .line 57 */
		 /* .local v1, "actionBar":Landroid/app/ActionBar; */
		 if ( v1 != null) { // if-eqz v1, :cond_0
			 /* .line 58 */
			 (( android.app.ActionBar ) v1 ).getThemedContext ( ); // invoke-virtual {v1}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;
			 /* .line 63 */
			 /* .local v2, "context":Landroid/content/Context; */
		 } // :goto_0
		 int v4 = 0; // const/4 v4, 0x0
		 v5 = android.support.v4.app.ActionBarDrawerToggleJellybeanMR2.THEME_ATTRS;
		 /* const v6, 0x10102ce */
		 (( android.content.Context ) v2 ).obtainStyledAttributes ( v4, v5, v6, v7 ); // invoke-virtual {v2, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
		 /* .line 65 */
		 /* .local v0, "a":Landroid/content/res/TypedArray; */
		 (( android.content.res.TypedArray ) v0 ).getDrawable ( v7 ); // invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
		 /* .line 66 */
		 /* .local v3, "result":Landroid/graphics/drawable/Drawable; */
		 (( android.content.res.TypedArray ) v0 ).recycle ( ); // invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
		 /* .line 67 */
		 /* .line 60 */
	 } // .end local v0 # "a":Landroid/content/res/TypedArray;
} // .end local v2 # "context":Landroid/content/Context;
} // .end local v3 # "result":Landroid/graphics/drawable/Drawable;
} // :cond_0
/* move-object v2, p0 */
/* .restart local v2 # "context":Landroid/content/Context; */
} // .end method
public static java.lang.Object setActionBarDescription ( java.lang.Object p0, android.app.Activity p1, Integer p2 ) {
/* .locals 1 */
/* .param p0, "info" # Ljava/lang/Object; */
/* .param p1, "activity" # Landroid/app/Activity; */
/* .param p2, "contentDescRes" # I */
/* .prologue */
/* .line 47 */
(( android.app.Activity ) p1 ).getActionBar ( ); // invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;
/* .line 48 */
/* .local v0, "actionBar":Landroid/app/ActionBar; */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 49 */
(( android.app.ActionBar ) v0 ).setHomeActionContentDescription ( p2 ); // invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V
/* .line 51 */
} // :cond_0
} // .end method
public static java.lang.Object setActionBarUpIndicator ( java.lang.Object p0, android.app.Activity p1, android.graphics.drawable.Drawable p2, Integer p3 ) {
/* .locals 1 */
/* .param p0, "info" # Ljava/lang/Object; */
/* .param p1, "activity" # Landroid/app/Activity; */
/* .param p2, "drawable" # Landroid/graphics/drawable/Drawable; */
/* .param p3, "contentDescRes" # I */
/* .prologue */
/* .line 37 */
(( android.app.Activity ) p1 ).getActionBar ( ); // invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;
/* .line 38 */
/* .local v0, "actionBar":Landroid/app/ActionBar; */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 39 */
(( android.app.ActionBar ) v0 ).setHomeAsUpIndicator ( p2 ); // invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
/* .line 40 */
(( android.app.ActionBar ) v0 ).setHomeActionContentDescription ( p3 ); // invoke-virtual {v0, p3}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V
/* .line 42 */
} // :cond_0
} // .end method
