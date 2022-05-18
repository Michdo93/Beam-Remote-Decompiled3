class android.support.v4.app.BackStackRecord$2 implements android.view.ViewTreeObserver$OnPreDrawListener {
	 /* .source "BackStackRecord.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingMethod; */
	 /* value = Landroid/support/v4/app/BackStackRecord;->prepareSharedElementTransition(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;)V */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x0 */
/* name = null */
} // .end annotation
/* # instance fields */
final android.support.v4.app.BackStackRecord this$0; //synthetic
final android.support.v4.app.Fragment val$inFragment; //synthetic
final Boolean val$isBack; //synthetic
final android.support.v4.app.Fragment val$outFragment; //synthetic
final android.view.View val$sceneRoot; //synthetic
final java.util.ArrayList val$sharedElementTargets; //synthetic
final java.lang.Object val$sharedElementTransition; //synthetic
final android.support.v4.app.BackStackRecord$TransitionState val$state; //synthetic
/* # direct methods */
 android.support.v4.app.BackStackRecord$2 ( ) {
/* .locals 0 */
/* .prologue */
/* .line 1234 */
this.this$0 = p1;
this.val$sceneRoot = p2;
this.val$sharedElementTransition = p3;
this.val$sharedElementTargets = p4;
this.val$state = p5;
/* iput-boolean p6, p0, Landroid/support/v4/app/BackStackRecord$2;->val$isBack:Z */
this.val$inFragment = p7;
this.val$outFragment = p8;
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
/* # virtual methods */
public Boolean onPreDraw ( ) {
/* .locals 6 */
/* .prologue */
/* .line 1237 */
v0 = this.val$sceneRoot;
(( android.view.View ) v0 ).getViewTreeObserver ( ); // invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
(( android.view.ViewTreeObserver ) v0 ).removeOnPreDrawListener ( p0 ); // invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
/* .line 1239 */
v0 = this.val$sharedElementTransition;
if ( v0 != null) { // if-eqz v0, :cond_0
	 /* .line 1240 */
	 v0 = this.val$sharedElementTransition;
	 v1 = this.val$sharedElementTargets;
	 android.support.v4.app.FragmentTransitionCompat21 .removeTargets ( v0,v1 );
	 /* .line 1242 */
	 v0 = this.val$sharedElementTargets;
	 (( java.util.ArrayList ) v0 ).clear ( ); // invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
	 /* .line 1244 */
	 v0 = this.this$0;
	 v1 = this.val$state;
	 /* iget-boolean v2, p0, Landroid/support/v4/app/BackStackRecord$2;->val$isBack:Z */
	 v3 = this.val$inFragment;
	 android.support.v4.app.BackStackRecord .access$000 ( v0,v1,v2,v3 );
	 /* .line 1246 */
	 /* .local v5, "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;" */
	 v0 = 	 (( android.support.v4.util.ArrayMap ) v5 ).isEmpty ( ); // invoke-virtual {v5}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z
	 if ( v0 != null) { // if-eqz v0, :cond_1
		 /* .line 1247 */
		 v0 = this.val$sharedElementTargets;
		 v1 = this.val$state;
		 v1 = this.nonExistentView;
		 (( java.util.ArrayList ) v0 ).add ( v1 ); // invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
		 /* .line 1251 */
	 } // :goto_0
	 v0 = this.val$sharedElementTransition;
	 v1 = this.val$sharedElementTargets;
	 android.support.v4.app.FragmentTransitionCompat21 .addTargets ( v0,v1 );
	 /* .line 1254 */
	 v0 = this.this$0;
	 v1 = this.val$state;
	 android.support.v4.app.BackStackRecord .access$100 ( v0,v5,v1 );
	 /* .line 1256 */
	 v0 = this.this$0;
	 v1 = this.val$state;
	 v2 = this.val$inFragment;
	 v3 = this.val$outFragment;
	 /* iget-boolean v4, p0, Landroid/support/v4/app/BackStackRecord$2;->val$isBack:Z */
	 /* invoke-static/range {v0 ..v5}, Landroid/support/v4/app/BackStackRecord;->access$200(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V */
	 /* .line 1260 */
} // .end local v5 # "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
} // :cond_0
int v0 = 1; // const/4 v0, 0x1
/* .line 1249 */
/* .restart local v5 # "namedViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;" */
} // :cond_1
v0 = this.val$sharedElementTargets;
(( android.support.v4.util.ArrayMap ) v5 ).values ( ); // invoke-virtual {v5}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;
(( java.util.ArrayList ) v0 ).addAll ( v1 ); // invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
} // .end method
