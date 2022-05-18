public class android.support.v4.app.BackStackRecord$TransitionState {
	 /* .source "BackStackRecord.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/BackStackRecord; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x1 */
/* name = "TransitionState" */
} // .end annotation
/* # instance fields */
public android.support.v4.app.FragmentTransitionCompat21$EpicenterView enteringEpicenterView;
public java.util.ArrayList hiddenFragmentViews;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/view/View;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
public android.support.v4.util.ArrayMap nameOverrides;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Landroid/support/v4/util/ArrayMap", */
/* "<", */
/* "Ljava/lang/String;", */
/* "Ljava/lang/String;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
public android.view.View nonExistentView;
final android.support.v4.app.BackStackRecord this$0; //synthetic
/* # direct methods */
public android.support.v4.app.BackStackRecord$TransitionState ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1452 */
this.this$0 = p1;
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 1453 */
/* new-instance v0, Landroid/support/v4/util/ArrayMap; */
/* invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V */
this.nameOverrides = v0;
/* .line 1454 */
/* new-instance v0, Ljava/util/ArrayList; */
/* invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V */
this.hiddenFragmentViews = v0;
/* .line 1456 */
/* new-instance v0, Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView; */
/* invoke-direct {v0}, Landroid/support/v4/app/FragmentTransitionCompat21$EpicenterView;-><init>()V */
this.enteringEpicenterView = v0;
return;
} // .end method
