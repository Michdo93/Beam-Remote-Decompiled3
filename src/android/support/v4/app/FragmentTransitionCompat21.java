class android.support.v4.app.FragmentTransitionCompat21 {
	 /* .source "FragmentTransitionCompat21.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;, */
	 /* Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever; */
	 /* } */
} // .end annotation
/* # direct methods */
 android.support.v4.app.FragmentTransitionCompat21 ( ) {
	 /* .locals 0 */
	 /* .prologue */
	 /* .line 34 */
	 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
	 /* .line 327 */
	 return;
} // .end method
static void access$000 ( java.util.ArrayList p0, android.view.View p1 ) { //synthethic
	 /* .locals 0 */
	 /* .param p0, "x0" # Ljava/util/ArrayList; */
	 /* .param p1, "x1" # Landroid/view/View; */
	 /* .prologue */
	 /* .line 34 */
	 android.support.v4.app.FragmentTransitionCompat21 .captureTransitioningViews ( p0,p1 );
	 return;
} // .end method
static android.graphics.Rect access$100 ( android.view.View p0 ) { //synthethic
	 /* .locals 1 */
	 /* .param p0, "x0" # Landroid/view/View; */
	 /* .prologue */
	 /* .line 34 */
	 android.support.v4.app.FragmentTransitionCompat21 .getBoundsOnScreen ( p0 );
} // .end method
public static void addTargets ( java.lang.Object p0, java.util.ArrayList p1 ) {
	 /* .locals 4 */
	 /* .param p0, "transitionObject" # Ljava/lang/Object; */
	 /* .annotation system Ldalvik/annotation/Signature; */
	 /* value = { */
	 /* "(", */
	 /* "Ljava/lang/Object;", */
	 /* "Ljava/util/ArrayList", */
	 /* "<", */
	 /* "Landroid/view/View;", */
	 /* ">;)V" */
	 /* } */
} // .end annotation
/* .prologue */
/* .line 316 */
/* .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;" */
/* move-object v2, p0 */
/* check-cast v2, Landroid/transition/Transition; */
/* .line 317 */
/* .local v2, "transition":Landroid/transition/Transition; */
v1 = (( java.util.ArrayList ) p1 ).size ( ); // invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
/* .line 318 */
/* .local v1, "numViews":I */
int v0 = 0; // const/4 v0, 0x0
/* .local v0, "i":I */
} // :goto_0
/* if-ge v0, v1, :cond_0 */
/* .line 319 */
(( java.util.ArrayList ) p1 ).get ( v0 ); // invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v3, Landroid/view/View; */
(( android.transition.Transition ) v2 ).addTarget ( v3 ); // invoke-virtual {v2, v3}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;
/* .line 318 */
/* add-int/lit8 v0, v0, 0x1 */
/* .line 321 */
} // :cond_0
return;
} // .end method
public static void addTransitionTargets ( java.lang.Object p0, java.lang.Object p1, android.view.View p2, android.support.v4.app.FragmentTransitionCompat21$ViewRetriever p3, android.view.View p4, android.support.v4.app.FragmentTransitionCompat21$EpicenterView p5, java.util.Map p6, java.util.ArrayList p7, java.util.Map p8, java.util.ArrayList p9 ) {
/* .locals 10 */
/* .param p0, "enterTransitionObject" # Ljava/lang/Object; */
/* .param p1, "sharedElementTransitionObject" # Ljava/lang/Object; */
/* .param p2, "container" # Landroid/view/View; */
/* .param p3, "inFragment" # Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever; */
/* .param p4, "nonExistentView" # Landroid/view/View; */
/* .param p5, "epicenterView" # Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Ljava/lang/Object;", */
/* "Ljava/lang/Object;", */
/* "Landroid/view/View;", */
/* "Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;", */
/* "Landroid/view/View;", */
/* "Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;", */
/* "Ljava/util/Map", */
/* "<", */
/* "Ljava/lang/String;", */
/* "Ljava/lang/String;", */
/* ">;", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/view/View;", */
/* ">;", */
/* "Ljava/util/Map", */
/* "<", */
/* "Ljava/lang/String;", */
/* "Landroid/view/View;", */
/* ">;", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/view/View;", */
/* ">;)V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 101 */
/* .local p6, "nameOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;" */
/* .local p7, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;" */
/* .local p8, "renamedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;" */
/* .local p9, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;" */
/* if-nez p0, :cond_0 */
if ( p1 != null) { // if-eqz p1, :cond_4
} // :cond_0
/* move-object v6, p0 */
/* .line 102 */
/* check-cast v6, Landroid/transition/Transition; */
/* .line 103 */
/* .local v6, "enterTransition":Landroid/transition/Transition; */
if ( v6 != null) { // if-eqz v6, :cond_1
/* .line 104 */
(( android.transition.Transition ) v6 ).addTarget ( p4 ); // invoke-virtual {v6, p4}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;
/* .line 106 */
} // :cond_1
if ( p1 != null) { // if-eqz p1, :cond_2
/* move-object v8, p1 */
/* .line 107 */
/* check-cast v8, Landroid/transition/Transition; */
/* .line 108 */
/* .local v8, "sharedElementTransition":Landroid/transition/Transition; */
/* move-object/from16 v0, p9 */
android.support.v4.app.FragmentTransitionCompat21 .addTargets ( v8,v0 );
/* .line 111 */
} // .end local v8 # "sharedElementTransition":Landroid/transition/Transition;
} // :cond_2
if ( p3 != null) { // if-eqz p3, :cond_3
/* .line 112 */
(( android.view.View ) p2 ).getViewTreeObserver ( ); // invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
/* new-instance v1, Landroid/support/v4/app/FragmentTransitionCompat21$2; */
/* move-object v2, p2 */
/* move-object v3, p3 */
/* move-object/from16 v4, p6 */
/* move-object/from16 v5, p8 */
/* move-object/from16 v7, p7 */
/* invoke-direct/range {v1 ..v7}, Landroid/support/v4/app/FragmentTransitionCompat21$2;-><init>(Landroid/view/View;Landroid/support/v4/app/FragmentTransitionCompat21$ViewRetriever;Ljava/util/Map;Ljava/util/Map;Landroid/transition/Transition;Ljava/util/ArrayList;)V */
(( android.view.ViewTreeObserver ) v9 ).addOnPreDrawListener ( v1 ); // invoke-virtual {v9, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
/* .line 140 */
} // :cond_3
android.support.v4.app.FragmentTransitionCompat21 .setSharedElementEpicenter ( v6,p5 );
/* .line 142 */
} // .end local v6 # "enterTransition":Landroid/transition/Transition;
} // :cond_4
return;
} // .end method
public static void beginDelayedTransition ( android.view.ViewGroup p0, java.lang.Object p1 ) {
/* .locals 1 */
/* .param p0, "sceneRoot" # Landroid/view/ViewGroup; */
/* .param p1, "transitionObject" # Ljava/lang/Object; */
/* .prologue */
/* .line 68 */
/* move-object v0, p1 */
/* check-cast v0, Landroid/transition/Transition; */
/* .line 69 */
/* .local v0, "transition":Landroid/transition/Transition; */
android.transition.TransitionManager .beginDelayedTransition ( p0,v0 );
/* .line 70 */
return;
} // .end method
public static java.lang.Object captureExitingViews ( java.lang.Object p0, android.view.View p1, java.util.ArrayList p2, java.util.Map p3 ) {
/* .locals 1 */
/* .param p0, "exitTransition" # Ljava/lang/Object; */
/* .param p1, "root" # Landroid/view/View; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Ljava/lang/Object;", */
/* "Landroid/view/View;", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/view/View;", */
/* ">;", */
/* "Ljava/util/Map", */
/* "<", */
/* "Ljava/lang/String;", */
/* "Landroid/view/View;", */
/* ">;)", */
/* "Ljava/lang/Object;" */
/* } */
} // .end annotation
/* .prologue */
/* .line 48 */
/* .local p2, "viewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;" */
/* .local p3, "namedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;" */
if ( p0 != null) { // if-eqz p0, :cond_1
/* .line 49 */
android.support.v4.app.FragmentTransitionCompat21 .captureTransitioningViews ( p2,p1 );
/* .line 50 */
if ( p3 != null) { // if-eqz p3, :cond_0
/* .line 51 */
(( java.util.ArrayList ) p2 ).removeAll ( v0 ); // invoke-virtual {p2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
/* .line 53 */
} // :cond_0
v0 = (( java.util.ArrayList ) p2 ).isEmpty ( ); // invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z
if ( v0 != null) { // if-eqz v0, :cond_2
/* .line 54 */
int p0 = 0; // const/4 p0, 0x0
/* .line 59 */
} // .end local p0 # "exitTransition":Ljava/lang/Object;
} // :cond_1
} // :goto_0
/* .restart local p0 # "exitTransition":Ljava/lang/Object; */
} // :cond_2
/* move-object v0, p0 */
/* .line 56 */
/* check-cast v0, Landroid/transition/Transition; */
android.support.v4.app.FragmentTransitionCompat21 .addTargets ( v0,p2 );
} // .end method
private static void captureTransitioningViews ( java.util.ArrayList p0, android.view.View p1 ) {
/* .locals 5 */
/* .param p1, "view" # Landroid/view/View; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/view/View;", */
/* ">;", */
/* "Landroid/view/View;", */
/* ")V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 231 */
/* .local p0, "transitioningViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;" */
v4 = (( android.view.View ) p1 ).getVisibility ( ); // invoke-virtual {p1}, Landroid/view/View;->getVisibility()I
/* if-nez v4, :cond_0 */
/* .line 232 */
/* instance-of v4, p1, Landroid/view/ViewGroup; */
if ( v4 != null) { // if-eqz v4, :cond_2
/* move-object v3, p1 */
/* .line 233 */
/* check-cast v3, Landroid/view/ViewGroup; */
/* .line 234 */
/* .local v3, "viewGroup":Landroid/view/ViewGroup; */
v4 = (( android.view.ViewGroup ) v3 ).isTransitionGroup ( ); // invoke-virtual {v3}, Landroid/view/ViewGroup;->isTransitionGroup()Z
if ( v4 != null) { // if-eqz v4, :cond_1
/* .line 235 */
(( java.util.ArrayList ) p0 ).add ( v3 ); // invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
/* .line 247 */
} // .end local v3 # "viewGroup":Landroid/view/ViewGroup;
} // :cond_0
} // :goto_0
return;
/* .line 237 */
/* .restart local v3 # "viewGroup":Landroid/view/ViewGroup; */
} // :cond_1
v1 = (( android.view.ViewGroup ) v3 ).getChildCount ( ); // invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I
/* .line 238 */
/* .local v1, "count":I */
int v2 = 0; // const/4 v2, 0x0
/* .local v2, "i":I */
} // :goto_1
/* if-ge v2, v1, :cond_0 */
/* .line 239 */
(( android.view.ViewGroup ) v3 ).getChildAt ( v2 ); // invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
/* .line 240 */
/* .local v0, "child":Landroid/view/View; */
android.support.v4.app.FragmentTransitionCompat21 .captureTransitioningViews ( p0,v0 );
/* .line 238 */
/* add-int/lit8 v2, v2, 0x1 */
/* .line 244 */
} // .end local v0 # "child":Landroid/view/View;
} // .end local v1 # "count":I
} // .end local v2 # "i":I
} // .end local v3 # "viewGroup":Landroid/view/ViewGroup;
} // :cond_2
(( java.util.ArrayList ) p0 ).add ( p1 ); // invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
} // .end method
public static void cleanupTransitions ( android.view.View p0, android.view.View p1, java.lang.Object p2, java.util.ArrayList p3, java.lang.Object p4, java.util.ArrayList p5, java.lang.Object p6, java.util.ArrayList p7, java.lang.Object p8, java.util.ArrayList p9, java.util.Map p10 ) {
/* .locals 13 */
/* .param p0, "sceneRoot" # Landroid/view/View; */
/* .param p1, "nonExistentView" # Landroid/view/View; */
/* .param p2, "enterTransitionObject" # Ljava/lang/Object; */
/* .param p4, "exitTransitionObject" # Ljava/lang/Object; */
/* .param p6, "sharedElementTransitionObject" # Ljava/lang/Object; */
/* .param p8, "overallTransitionObject" # Ljava/lang/Object; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Landroid/view/View;", */
/* "Landroid/view/View;", */
/* "Ljava/lang/Object;", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/view/View;", */
/* ">;", */
/* "Ljava/lang/Object;", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/view/View;", */
/* ">;", */
/* "Ljava/lang/Object;", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/view/View;", */
/* ">;", */
/* "Ljava/lang/Object;", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/view/View;", */
/* ">;", */
/* "Ljava/util/Map", */
/* "<", */
/* "Ljava/lang/String;", */
/* "Landroid/view/View;", */
/* ">;)V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 272 */
/* .local p3, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;" */
/* .local p5, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;" */
/* .local p7, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;" */
/* .local p9, "hiddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;" */
/* .local p10, "renamedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;" */
/* move-object v2, p2 */
/* check-cast v2, Landroid/transition/Transition; */
/* .local v2, "enterTransition":Landroid/transition/Transition; */
/* move-object/from16 v5, p4 */
/* .line 273 */
/* check-cast v5, Landroid/transition/Transition; */
/* .local v5, "exitTransition":Landroid/transition/Transition; */
/* move-object/from16 v7, p6 */
/* .line 274 */
/* check-cast v7, Landroid/transition/Transition; */
/* .local v7, "sharedElementTransition":Landroid/transition/Transition; */
/* move-object/from16 v11, p8 */
/* .line 275 */
/* check-cast v11, Landroid/transition/Transition; */
/* .line 276 */
/* .local v11, "overallTransition":Landroid/transition/Transition; */
if ( v11 != null) { // if-eqz v11, :cond_0
/* .line 277 */
(( android.view.View ) p0 ).getViewTreeObserver ( ); // invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
/* new-instance v0, Landroid/support/v4/app/FragmentTransitionCompat21$4; */
/* move-object v1, p0 */
/* move-object v3, p1 */
/* move-object/from16 v4, p3 */
/* move-object/from16 v6, p5 */
/* move-object/from16 v8, p7 */
/* move-object/from16 v9, p10 */
/* move-object/from16 v10, p9 */
/* invoke-direct/range {v0 ..v11}, Landroid/support/v4/app/FragmentTransitionCompat21$4;-><init>(Landroid/view/View;Landroid/transition/Transition;Landroid/view/View;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/ArrayList;Landroid/transition/Transition;)V */
(( android.view.ViewTreeObserver ) v12 ).addOnPreDrawListener ( v0 ); // invoke-virtual {v12, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
/* .line 305 */
} // :cond_0
return;
} // .end method
public static java.lang.Object cloneTransition ( java.lang.Object p0 ) {
/* .locals 0 */
/* .param p0, "transition" # Ljava/lang/Object; */
/* .prologue */
/* .line 40 */
if ( p0 != null) { // if-eqz p0, :cond_0
/* .line 41 */
/* check-cast p0, Landroid/transition/Transition; */
} // .end local p0 # "transition":Ljava/lang/Object;
(( android.transition.Transition ) p0 ).clone ( ); // invoke-virtual {p0}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;
/* .line 43 */
} // :cond_0
} // .end method
public static void excludeTarget ( java.lang.Object p0, android.view.View p1, Boolean p2 ) {
/* .locals 1 */
/* .param p0, "transitionObject" # Ljava/lang/Object; */
/* .param p1, "view" # Landroid/view/View; */
/* .param p2, "exclude" # Z */
/* .prologue */
/* .line 63 */
/* move-object v0, p0 */
/* check-cast v0, Landroid/transition/Transition; */
/* .line 64 */
/* .local v0, "transition":Landroid/transition/Transition; */
(( android.transition.Transition ) v0 ).excludeTarget ( p1, p2 ); // invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;
/* .line 65 */
return;
} // .end method
public static void findNamedViews ( java.util.Map p0, android.view.View p1 ) {
/* .locals 6 */
/* .param p1, "view" # Landroid/view/View; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Ljava/util/Map", */
/* "<", */
/* "Ljava/lang/String;", */
/* "Landroid/view/View;", */
/* ">;", */
/* "Landroid/view/View;", */
/* ")V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 250 */
/* .local p0, "namedViews":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;" */
v5 = (( android.view.View ) p1 ).getVisibility ( ); // invoke-virtual {p1}, Landroid/view/View;->getVisibility()I
/* if-nez v5, :cond_1 */
/* .line 251 */
(( android.view.View ) p1 ).getTransitionName ( ); // invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;
/* .line 252 */
/* .local v3, "transitionName":Ljava/lang/String; */
if ( v3 != null) { // if-eqz v3, :cond_0
/* .line 253 */
/* .line 255 */
} // :cond_0
/* instance-of v5, p1, Landroid/view/ViewGroup; */
if ( v5 != null) { // if-eqz v5, :cond_1
/* move-object v4, p1 */
/* .line 256 */
/* check-cast v4, Landroid/view/ViewGroup; */
/* .line 257 */
/* .local v4, "viewGroup":Landroid/view/ViewGroup; */
v1 = (( android.view.ViewGroup ) v4 ).getChildCount ( ); // invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I
/* .line 258 */
/* .local v1, "count":I */
int v2 = 0; // const/4 v2, 0x0
/* .local v2, "i":I */
} // :goto_0
/* if-ge v2, v1, :cond_1 */
/* .line 259 */
(( android.view.ViewGroup ) v4 ).getChildAt ( v2 ); // invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
/* .line 260 */
/* .local v0, "child":Landroid/view/View; */
android.support.v4.app.FragmentTransitionCompat21 .findNamedViews ( p0,v0 );
/* .line 258 */
/* add-int/lit8 v2, v2, 0x1 */
/* .line 264 */
} // .end local v0 # "child":Landroid/view/View;
} // .end local v1 # "count":I
} // .end local v2 # "i":I
} // .end local v3 # "transitionName":Ljava/lang/String;
} // .end local v4 # "viewGroup":Landroid/view/ViewGroup;
} // :cond_1
return;
} // .end method
private static android.graphics.Rect getBoundsOnScreen ( android.view.View p0 ) {
/* .locals 7 */
/* .param p0, "view" # Landroid/view/View; */
/* .prologue */
int v6 = 1; // const/4 v6, 0x1
int v4 = 0; // const/4 v4, 0x0
/* .line 222 */
/* new-instance v0, Landroid/graphics/Rect; */
/* invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V */
/* .line 223 */
/* .local v0, "epicenter":Landroid/graphics/Rect; */
int v2 = 2; // const/4 v2, 0x2
/* new-array v1, v2, [I */
/* .line 224 */
/* .local v1, "loc":[I */
(( android.view.View ) p0 ).getLocationOnScreen ( v1 ); // invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V
/* .line 226 */
/* aget v2, v1, v4 */
/* aget v3, v1, v6 */
/* aget v4, v1, v4 */
v5 = (( android.view.View ) p0 ).getWidth ( ); // invoke-virtual {p0}, Landroid/view/View;->getWidth()I
/* add-int/2addr v4, v5 */
/* aget v5, v1, v6 */
v6 = (( android.view.View ) p0 ).getHeight ( ); // invoke-virtual {p0}, Landroid/view/View;->getHeight()I
/* add-int/2addr v5, v6 */
(( android.graphics.Rect ) v0 ).set ( v2, v3, v4, v5 ); // invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V
/* .line 227 */
} // .end method
public static java.lang.String getTransitionName ( android.view.View p0 ) {
/* .locals 1 */
/* .param p0, "view" # Landroid/view/View; */
/* .prologue */
/* .line 36 */
(( android.view.View ) p0 ).getTransitionName ( ); // invoke-virtual {p0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;
} // .end method
public static java.lang.Object mergeTransitions ( java.lang.Object p0, java.lang.Object p1, java.lang.Object p2, Boolean p3 ) {
/* .locals 10 */
/* .param p0, "enterTransitionObject" # Ljava/lang/Object; */
/* .param p1, "exitTransitionObject" # Ljava/lang/Object; */
/* .param p2, "sharedElementTransitionObject" # Ljava/lang/Object; */
/* .param p3, "allowOverlap" # Z */
/* .prologue */
/* .line 147 */
int v2 = 1; // const/4 v2, 0x1
/* .local v2, "overlap":Z */
/* move-object v0, p0 */
/* .line 148 */
/* check-cast v0, Landroid/transition/Transition; */
/* .local v0, "enterTransition":Landroid/transition/Transition; */
/* move-object v1, p1 */
/* .line 149 */
/* check-cast v1, Landroid/transition/Transition; */
/* .local v1, "exitTransition":Landroid/transition/Transition; */
/* move-object v3, p2 */
/* .line 150 */
/* check-cast v3, Landroid/transition/Transition; */
/* .line 152 */
/* .local v3, "sharedElementTransition":Landroid/transition/Transition; */
if ( v0 != null) { // if-eqz v0, :cond_0
if ( v1 != null) { // if-eqz v1, :cond_0
/* .line 153 */
/* move v2, p3 */
/* .line 161 */
} // :cond_0
if ( v2 != null) { // if-eqz v2, :cond_4
/* .line 163 */
/* new-instance v7, Landroid/transition/TransitionSet; */
/* invoke-direct {v7}, Landroid/transition/TransitionSet;-><init>()V */
/* .line 164 */
/* .local v7, "transitionSet":Landroid/transition/TransitionSet; */
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 165 */
(( android.transition.TransitionSet ) v7 ).addTransition ( v0 ); // invoke-virtual {v7, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
/* .line 167 */
} // :cond_1
if ( v1 != null) { // if-eqz v1, :cond_2
/* .line 168 */
(( android.transition.TransitionSet ) v7 ).addTransition ( v1 ); // invoke-virtual {v7, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
/* .line 170 */
} // :cond_2
if ( v3 != null) { // if-eqz v3, :cond_3
/* .line 171 */
(( android.transition.TransitionSet ) v7 ).addTransition ( v3 ); // invoke-virtual {v7, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
/* .line 173 */
} // :cond_3
/* move-object v6, v7 */
/* .line 199 */
} // .end local v7 # "transitionSet":Landroid/transition/TransitionSet;
/* .local v6, "transition":Landroid/transition/Transition; */
} // :goto_0
/* .line 177 */
} // .end local v6 # "transition":Landroid/transition/Transition;
} // :cond_4
int v4 = 0; // const/4 v4, 0x0
/* .line 178 */
/* .local v4, "staggered":Landroid/transition/Transition; */
if ( v1 != null) { // if-eqz v1, :cond_7
if ( v0 != null) { // if-eqz v0, :cond_7
/* .line 179 */
/* new-instance v8, Landroid/transition/TransitionSet; */
/* invoke-direct {v8}, Landroid/transition/TransitionSet;-><init>()V */
(( android.transition.TransitionSet ) v8 ).addTransition ( v1 ); // invoke-virtual {v8, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
(( android.transition.TransitionSet ) v8 ).addTransition ( v0 ); // invoke-virtual {v8, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
int v9 = 1; // const/4 v9, 0x1
(( android.transition.TransitionSet ) v8 ).setOrdering ( v9 ); // invoke-virtual {v8, v9}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;
/* .line 188 */
} // :cond_5
} // :goto_1
if ( v3 != null) { // if-eqz v3, :cond_9
/* .line 189 */
/* new-instance v5, Landroid/transition/TransitionSet; */
/* invoke-direct {v5}, Landroid/transition/TransitionSet;-><init>()V */
/* .line 190 */
/* .local v5, "together":Landroid/transition/TransitionSet; */
if ( v4 != null) { // if-eqz v4, :cond_6
/* .line 191 */
(( android.transition.TransitionSet ) v5 ).addTransition ( v4 ); // invoke-virtual {v5, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
/* .line 193 */
} // :cond_6
(( android.transition.TransitionSet ) v5 ).addTransition ( v3 ); // invoke-virtual {v5, v3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;
/* .line 194 */
/* move-object v6, v5 */
/* .line 195 */
/* .restart local v6 # "transition":Landroid/transition/Transition; */
/* .line 183 */
} // .end local v5 # "together":Landroid/transition/TransitionSet;
} // .end local v6 # "transition":Landroid/transition/Transition;
} // :cond_7
if ( v1 != null) { // if-eqz v1, :cond_8
/* .line 184 */
/* move-object v4, v1 */
/* .line 185 */
} // :cond_8
if ( v0 != null) { // if-eqz v0, :cond_5
/* .line 186 */
/* move-object v4, v0 */
/* .line 196 */
} // :cond_9
/* move-object v6, v4 */
/* .restart local v6 # "transition":Landroid/transition/Transition; */
} // .end method
public static void removeTargets ( java.lang.Object p0, java.util.ArrayList p1 ) {
/* .locals 4 */
/* .param p0, "transitionObject" # Ljava/lang/Object; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Ljava/lang/Object;", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/view/View;", */
/* ">;)V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 308 */
/* .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;" */
/* move-object v2, p0 */
/* check-cast v2, Landroid/transition/Transition; */
/* .line 309 */
/* .local v2, "transition":Landroid/transition/Transition; */
v1 = (( java.util.ArrayList ) p1 ).size ( ); // invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
/* .line 310 */
/* .local v1, "numViews":I */
int v0 = 0; // const/4 v0, 0x0
/* .local v0, "i":I */
} // :goto_0
/* if-ge v0, v1, :cond_0 */
/* .line 311 */
(( java.util.ArrayList ) p1 ).get ( v0 ); // invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v3, Landroid/view/View; */
(( android.transition.Transition ) v2 ).removeTarget ( v3 ); // invoke-virtual {v2, v3}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;
/* .line 310 */
/* add-int/lit8 v0, v0, 0x1 */
/* .line 313 */
} // :cond_0
return;
} // .end method
public static void setEpicenter ( java.lang.Object p0, android.view.View p1 ) {
/* .locals 3 */
/* .param p0, "transitionObject" # Ljava/lang/Object; */
/* .param p1, "view" # Landroid/view/View; */
/* .prologue */
/* .line 73 */
/* move-object v1, p0 */
/* check-cast v1, Landroid/transition/Transition; */
/* .line 74 */
/* .local v1, "transition":Landroid/transition/Transition; */
android.support.v4.app.FragmentTransitionCompat21 .getBoundsOnScreen ( p1 );
/* .line 76 */
/* .local v0, "epicenter":Landroid/graphics/Rect; */
/* new-instance v2, Landroid/support/v4/app/FragmentTransitionCompat21$1; */
/* invoke-direct {v2, v0}, Landroid/support/v4/app/FragmentTransitionCompat21$1;-><init>(Landroid/graphics/Rect;)V */
(( android.transition.Transition ) v1 ).setEpicenterCallback ( v2 ); // invoke-virtual {v1, v2}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V
/* .line 82 */
return;
} // .end method
private static void setSharedElementEpicenter ( android.transition.Transition p0, android.support.v4.app.FragmentTransitionCompat21$EpicenterView p1 ) {
/* .locals 1 */
/* .param p0, "transition" # Landroid/transition/Transition; */
/* .param p1, "epicenterView" # Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView; */
/* .prologue */
/* .line 206 */
if ( p0 != null) { // if-eqz p0, :cond_0
/* .line 207 */
/* new-instance v0, Landroid/support/v4/app/FragmentTransitionCompat21$3; */
/* invoke-direct {v0, p1}, Landroid/support/v4/app/FragmentTransitionCompat21$3;-><init>(Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;)V */
(( android.transition.Transition ) p0 ).setEpicenterCallback ( v0 ); // invoke-virtual {p0, v0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V
/* .line 219 */
} // :cond_0
return;
} // .end method
