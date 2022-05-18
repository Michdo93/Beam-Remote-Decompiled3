class android.support.v4.app.ActionBarDrawerToggleHoneycomb {
	 /* .source "ActionBarDrawerToggleHoneycomb.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo; */
	 /* } */
} // .end annotation
/* # static fields */
private static final java.lang.String TAG;
private static final THEME_ATTRS;
/* # direct methods */
static android.support.v4.app.ActionBarDrawerToggleHoneycomb ( ) {
	 /* .locals 3 */
	 /* .prologue */
	 /* .line 44 */
	 int v0 = 1; // const/4 v0, 0x1
	 /* new-array v0, v0, [I */
	 int v1 = 0; // const/4 v1, 0x0
	 /* const v2, 0x101030b */
	 /* aput v2, v0, v1 */
	 return;
} // .end method
 android.support.v4.app.ActionBarDrawerToggleHoneycomb ( ) {
	 /* .locals 0 */
	 /* .prologue */
	 /* .line 41 */
	 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
	 /* .line 99 */
	 return;
} // .end method
public static android.graphics.drawable.Drawable getThemeUpIndicator ( android.app.Activity p0 ) {
	 /* .locals 3 */
	 /* .param p0, "activity" # Landroid/app/Activity; */
	 /* .prologue */
	 /* .line 93 */
	 v2 = android.support.v4.app.ActionBarDrawerToggleHoneycomb.THEME_ATTRS;
	 (( android.app.Activity ) p0 ).obtainStyledAttributes ( v2 ); // invoke-virtual {p0, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
	 /* .line 94 */
	 /* .local v0, "a":Landroid/content/res/TypedArray; */
	 int v2 = 0; // const/4 v2, 0x0
	 (( android.content.res.TypedArray ) v0 ).getDrawable ( v2 ); // invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
	 /* .line 95 */
	 /* .local v1, "result":Landroid/graphics/drawable/Drawable; */
	 (( android.content.res.TypedArray ) v0 ).recycle ( ); // invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
	 /* .line 96 */
} // .end method
public static java.lang.Object setActionBarDescription ( java.lang.Object p0, android.app.Activity p1, Integer p2 ) {
	 /* .locals 7 */
	 /* .param p0, "info" # Ljava/lang/Object; */
	 /* .param p1, "activity" # Landroid/app/Activity; */
	 /* .param p2, "contentDescRes" # I */
	 /* .prologue */
	 /* .line 72 */
	 /* if-nez p0, :cond_0 */
	 /* .line 73 */
	 /* new-instance p0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo; */
} // .end local p0 # "info":Ljava/lang/Object;
/* invoke-direct {p0, p1}, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V */
} // :cond_0
/* move-object v2, p0 */
/* .line 75 */
/* check-cast v2, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo; */
/* .line 76 */
/* .local v2, "sii":Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo; */
v3 = this.setHomeAsUpIndicator;
if ( v3 != null) { // if-eqz v3, :cond_1
/* .line 78 */
try { // :try_start_0
	 (( android.app.Activity ) p1 ).getActionBar ( ); // invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;
	 /* .line 79 */
	 /* .local v0, "actionBar":Landroid/app/ActionBar; */
	 v3 = this.setHomeActionContentDescription;
	 int v4 = 1; // const/4 v4, 0x1
	 /* new-array v4, v4, [Ljava/lang/Object; */
	 int v5 = 0; // const/4 v5, 0x0
	 java.lang.Integer .valueOf ( p2 );
	 /* aput-object v6, v4, v5 */
	 (( java.lang.reflect.Method ) v3 ).invoke ( v0, v4 ); // invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
	 /* .line 80 */
	 /* const/16 v4, 0x13 */
	 /* if-gt v3, v4, :cond_1 */
	 /* .line 83 */
	 (( android.app.ActionBar ) v0 ).getSubtitle ( ); // invoke-virtual {v0}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;
	 (( android.app.ActionBar ) v0 ).setSubtitle ( v3 ); // invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V
	 /* :try_end_0 */
	 /* .catch Ljava/lang/Exception; {:try_start_0 ..:try_end_0} :catch_0 */
	 /* .line 89 */
} // .end local v0 # "actionBar":Landroid/app/ActionBar;
} // :cond_1
} // :goto_0
/* .line 85 */
/* :catch_0 */
/* move-exception v1 */
/* .line 86 */
/* .local v1, "e":Ljava/lang/Exception; */
final String v3 = "ActionBarDrawerToggleHoneycomb"; // const-string v3, "ActionBarDrawerToggleHoneycomb"
final String v4 = "Couldn\'t set content description via JB-MR2 API"; // const-string v4, "Couldn\'t set content description via JB-MR2 API"
android.util.Log .w ( v3,v4,v1 );
} // .end method
public static java.lang.Object setActionBarUpIndicator ( java.lang.Object p0, android.app.Activity p1, android.graphics.drawable.Drawable p2, Integer p3 ) {
/* .locals 7 */
/* .param p0, "info" # Ljava/lang/Object; */
/* .param p1, "activity" # Landroid/app/Activity; */
/* .param p2, "drawable" # Landroid/graphics/drawable/Drawable; */
/* .param p3, "contentDescRes" # I */
/* .prologue */
/* .line 50 */
/* if-nez p0, :cond_0 */
/* .line 51 */
/* new-instance p0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo; */
} // .end local p0 # "info":Ljava/lang/Object;
/* invoke-direct {p0, p1}, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V */
} // :cond_0
/* move-object v2, p0 */
/* .line 53 */
/* check-cast v2, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo; */
/* .line 54 */
/* .local v2, "sii":Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo; */
v3 = this.setHomeAsUpIndicator;
if ( v3 != null) { // if-eqz v3, :cond_1
/* .line 56 */
try { // :try_start_0
(( android.app.Activity ) p1 ).getActionBar ( ); // invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;
/* .line 57 */
/* .local v0, "actionBar":Landroid/app/ActionBar; */
v3 = this.setHomeAsUpIndicator;
int v4 = 1; // const/4 v4, 0x1
/* new-array v4, v4, [Ljava/lang/Object; */
int v5 = 0; // const/4 v5, 0x0
/* aput-object p2, v4, v5 */
(( java.lang.reflect.Method ) v3 ).invoke ( v0, v4 ); // invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
/* .line 58 */
v3 = this.setHomeActionContentDescription;
int v4 = 1; // const/4 v4, 0x1
/* new-array v4, v4, [Ljava/lang/Object; */
int v5 = 0; // const/4 v5, 0x0
java.lang.Integer .valueOf ( p3 );
/* aput-object v6, v4, v5 */
(( java.lang.reflect.Method ) v3 ).invoke ( v0, v4 ); // invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
/* :try_end_0 */
/* .catch Ljava/lang/Exception; {:try_start_0 ..:try_end_0} :catch_0 */
/* .line 67 */
} // .end local v0 # "actionBar":Landroid/app/ActionBar;
} // :goto_0
/* .line 59 */
/* :catch_0 */
/* move-exception v1 */
/* .line 60 */
/* .local v1, "e":Ljava/lang/Exception; */
final String v3 = "ActionBarDrawerToggleHoneycomb"; // const-string v3, "ActionBarDrawerToggleHoneycomb"
final String v4 = "Couldn\'t set home-as-up indicator via JB-MR2 API"; // const-string v4, "Couldn\'t set home-as-up indicator via JB-MR2 API"
android.util.Log .w ( v3,v4,v1 );
/* .line 62 */
} // .end local v1 # "e":Ljava/lang/Exception;
} // :cond_1
v3 = this.upIndicatorView;
if ( v3 != null) { // if-eqz v3, :cond_2
/* .line 63 */
v3 = this.upIndicatorView;
(( android.widget.ImageView ) v3 ).setImageDrawable ( p2 ); // invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
/* .line 65 */
} // :cond_2
final String v3 = "ActionBarDrawerToggleHoneycomb"; // const-string v3, "ActionBarDrawerToggleHoneycomb"
final String v4 = "Couldn\'t set home-as-up indicator"; // const-string v4, "Couldn\'t set home-as-up indicator"
android.util.Log .w ( v3,v4 );
} // .end method
