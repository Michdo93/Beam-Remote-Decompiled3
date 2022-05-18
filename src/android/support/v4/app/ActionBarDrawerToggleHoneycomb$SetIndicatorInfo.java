class android.support.v4.app.ActionBarDrawerToggleHoneycomb$SetIndicatorInfo {
	 /* .source "ActionBarDrawerToggleHoneycomb.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0xa */
/* name = "SetIndicatorInfo" */
} // .end annotation
/* # instance fields */
public java.lang.reflect.Method setHomeActionContentDescription;
public java.lang.reflect.Method setHomeAsUpIndicator;
public android.widget.ImageView upIndicatorView;
/* # direct methods */
 android.support.v4.app.ActionBarDrawerToggleHoneycomb$SetIndicatorInfo ( ) {
/* .locals 14 */
/* .param p1, "activity" # Landroid/app/Activity; */
/* .prologue */
/* const v13, 0x102002c */
int v12 = 1; // const/4 v12, 0x1
int v11 = 0; // const/4 v11, 0x0
/* .line 104 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 106 */
try { // :try_start_0
	 /* const-class v6, Landroid/app/ActionBar; */
	 final String v7 = "setHomeAsUpIndicator"; // const-string v7, "setHomeAsUpIndicator"
	 int v8 = 1; // const/4 v8, 0x1
	 /* new-array v8, v8, [Ljava/lang/Class; */
	 int v9 = 0; // const/4 v9, 0x0
	 /* const-class v10, Landroid/graphics/drawable/Drawable; */
	 /* aput-object v10, v8, v9 */
	 (( java.lang.Class ) v6 ).getDeclaredMethod ( v7, v8 ); // invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
	 this.setHomeAsUpIndicator = v6;
	 /* .line 108 */
	 /* const-class v6, Landroid/app/ActionBar; */
	 final String v7 = "setHomeActionContentDescription"; // const-string v7, "setHomeActionContentDescription"
	 int v8 = 1; // const/4 v8, 0x1
	 /* new-array v8, v8, [Ljava/lang/Class; */
	 int v9 = 0; // const/4 v9, 0x0
	 v10 = java.lang.Integer.TYPE;
	 /* aput-object v10, v8, v9 */
	 (( java.lang.Class ) v6 ).getDeclaredMethod ( v7, v8 ); // invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
	 this.setHomeActionContentDescription = v6;
	 /* :try_end_0 */
	 /* .catch Ljava/lang/NoSuchMethodException; {:try_start_0 ..:try_end_0} :catch_0 */
	 /* .line 138 */
} // :cond_0
} // :goto_0
return;
/* .line 113 */
/* :catch_0 */
/* move-exception v6 */
/* .line 117 */
(( android.app.Activity ) p1 ).findViewById ( v13 ); // invoke-virtual {p1, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;
/* .line 118 */
/* .local v2, "home":Landroid/view/View; */
if ( v2 != null) { // if-eqz v2, :cond_0
/* .line 123 */
(( android.view.View ) v2 ).getParent ( ); // invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
/* check-cast v3, Landroid/view/ViewGroup; */
/* .line 124 */
/* .local v3, "parent":Landroid/view/ViewGroup; */
v0 = (( android.view.ViewGroup ) v3 ).getChildCount ( ); // invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I
/* .line 125 */
/* .local v0, "childCount":I */
int v6 = 2; // const/4 v6, 0x2
/* if-ne v0, v6, :cond_0 */
/* .line 130 */
(( android.view.ViewGroup ) v3 ).getChildAt ( v11 ); // invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
/* .line 131 */
/* .local v1, "first":Landroid/view/View; */
(( android.view.ViewGroup ) v3 ).getChildAt ( v12 ); // invoke-virtual {v3, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
/* .line 132 */
/* .local v4, "second":Landroid/view/View; */
v6 = (( android.view.View ) v1 ).getId ( ); // invoke-virtual {v1}, Landroid/view/View;->getId()I
/* if-ne v6, v13, :cond_1 */
/* move-object v5, v4 */
/* .line 134 */
/* .local v5, "up":Landroid/view/View; */
} // :goto_1
/* instance-of v6, v5, Landroid/widget/ImageView; */
if ( v6 != null) { // if-eqz v6, :cond_0
/* .line 136 */
/* check-cast v5, Landroid/widget/ImageView; */
} // .end local v5 # "up":Landroid/view/View;
this.upIndicatorView = v5;
} // :cond_1
/* move-object v5, v1 */
/* .line 132 */
} // .end method
