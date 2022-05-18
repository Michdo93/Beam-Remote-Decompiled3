public class android.support.v4.app.Fragment implements android.content.ComponentCallbacks implements android.view.View$OnCreateContextMenuListener {
	 /* .source "Fragment.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/Fragment$InstantiationException;, */
	 /* Landroid/support/v4/app/Fragment$SavedState; */
	 /* } */
} // .end annotation
/* # static fields */
static final Integer ACTIVITY_CREATED;
static final Integer CREATED;
static final Integer INITIALIZING;
static final Integer RESUMED;
static final Integer STARTED;
static final Integer STOPPED;
static final java.lang.Object USE_DEFAULT_TRANSITION;
private static final android.support.v4.util.SimpleArrayMap sClassMap;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Landroid/support/v4/util/SimpleArrayMap", */
/* "<", */
/* "Ljava/lang/String;", */
/* "Ljava/lang/Class", */
/* "<*>;>;" */
/* } */
} // .end annotation
} // .end field
/* # instance fields */
android.support.v4.app.FragmentActivity mActivity;
Boolean mAdded;
java.lang.Boolean mAllowEnterTransitionOverlap;
java.lang.Boolean mAllowReturnTransitionOverlap;
android.view.View mAnimatingAway;
android.os.Bundle mArguments;
Integer mBackStackNesting;
Boolean mCalled;
Boolean mCheckedForLoaderManager;
android.support.v4.app.FragmentManagerImpl mChildFragmentManager;
android.view.ViewGroup mContainer;
Integer mContainerId;
Boolean mDeferStart;
Boolean mDetached;
java.lang.Object mEnterTransition;
android.support.v4.app.SharedElementCallback mEnterTransitionCallback;
java.lang.Object mExitTransition;
android.support.v4.app.SharedElementCallback mExitTransitionCallback;
Integer mFragmentId;
android.support.v4.app.FragmentManagerImpl mFragmentManager;
Boolean mFromLayout;
Boolean mHasMenu;
Boolean mHidden;
Boolean mInLayout;
Integer mIndex;
android.view.View mInnerView;
android.support.v4.app.LoaderManagerImpl mLoaderManager;
Boolean mLoadersStarted;
Boolean mMenuVisible;
Integer mNextAnim;
android.support.v4.app.Fragment mParentFragment;
java.lang.Object mReenterTransition;
Boolean mRemoving;
Boolean mRestored;
Boolean mResumed;
Boolean mRetainInstance;
Boolean mRetaining;
java.lang.Object mReturnTransition;
android.os.Bundle mSavedFragmentState;
android.util.SparseArray mSavedViewState;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Landroid/util/SparseArray", */
/* "<", */
/* "Landroid/os/Parcelable;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
java.lang.Object mSharedElementEnterTransition;
java.lang.Object mSharedElementReturnTransition;
Integer mState;
Integer mStateAfterAnimating;
java.lang.String mTag;
android.support.v4.app.Fragment mTarget;
Integer mTargetIndex;
Integer mTargetRequestCode;
Boolean mUserVisibleHint;
android.view.View mView;
java.lang.String mWho;
/* # direct methods */
static android.support.v4.app.Fragment ( ) {
/* .locals 1 */
/* .prologue */
/* .line 168 */
/* new-instance v0, Landroid/support/v4/util/SimpleArrayMap; */
/* invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V */
/* .line 171 */
/* new-instance v0, Ljava/lang/Object; */
/* invoke-direct {v0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
public android.support.v4.app.Fragment ( ) {
/* .locals 4 */
/* .prologue */
int v3 = 1; // const/4 v3, 0x1
int v2 = -1; // const/4 v2, -0x1
int v1 = 0; // const/4 v1, 0x0
/* .line 387 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 180 */
int v0 = 0; // const/4 v0, 0x0
/* iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I */
/* .line 196 */
/* iput v2, p0, Landroid/support/v4/app/Fragment;->mIndex:I */
/* .line 208 */
/* iput v2, p0, Landroid/support/v4/app/Fragment;->mTargetIndex:I */
/* .line 279 */
/* iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z */
/* .line 301 */
/* iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z */
/* .line 307 */
this.mEnterTransition = v1;
/* .line 308 */
v0 = android.support.v4.app.Fragment.USE_DEFAULT_TRANSITION;
this.mReturnTransition = v0;
/* .line 309 */
this.mExitTransition = v1;
/* .line 310 */
v0 = android.support.v4.app.Fragment.USE_DEFAULT_TRANSITION;
this.mReenterTransition = v0;
/* .line 311 */
this.mSharedElementEnterTransition = v1;
/* .line 312 */
v0 = android.support.v4.app.Fragment.USE_DEFAULT_TRANSITION;
this.mSharedElementReturnTransition = v0;
/* .line 316 */
this.mEnterTransitionCallback = v1;
/* .line 317 */
this.mExitTransitionCallback = v1;
/* .line 388 */
return;
} // .end method
public static android.support.v4.app.Fragment instantiate ( android.content.Context p0, java.lang.String p1 ) {
/* .locals 1 */
/* .param p0, "context" # Landroid/content/Context; */
/* .param p1, "fname" # Ljava/lang/String; */
/* .prologue */
/* .line 395 */
int v0 = 0; // const/4 v0, 0x0
android.support.v4.app.Fragment .instantiate ( p0,p1,v0 );
} // .end method
public static android.support.v4.app.Fragment instantiate ( android.content.Context p0, java.lang.String p1, android.os.Bundle p2 ) {
/* .locals 6 */
/* .param p0, "context" # Landroid/content/Context; */
/* .param p1, "fname" # Ljava/lang/String; */
/* .param p2, "args" # Landroid/os/Bundle; */
/* .prologue */
/* .line 414 */
try { // :try_start_0
v3 = android.support.v4.app.Fragment.sClassMap;
(( android.support.v4.util.SimpleArrayMap ) v3 ).get ( p1 ); // invoke-virtual {v3, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
/* check-cast v0, Ljava/lang/Class; */
/* .line 415 */
/* .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;" */
/* if-nez v0, :cond_0 */
/* .line 417 */
(( android.content.Context ) p0 ).getClassLoader ( ); // invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
(( java.lang.ClassLoader ) v3 ).loadClass ( p1 ); // invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
/* .line 418 */
v3 = android.support.v4.app.Fragment.sClassMap;
(( android.support.v4.util.SimpleArrayMap ) v3 ).put ( p1, v0 ); // invoke-virtual {v3, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
/* .line 420 */
} // :cond_0
(( java.lang.Class ) v0 ).newInstance ( ); // invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
/* check-cast v2, Landroid/support/v4/app/Fragment; */
/* .line 421 */
/* .local v2, "f":Landroid/support/v4/app/Fragment; */
if ( p2 != null) { // if-eqz p2, :cond_1
/* .line 422 */
(( java.lang.Object ) v2 ).getClass ( ); // invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
(( java.lang.Class ) v3 ).getClassLoader ( ); // invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
(( android.os.Bundle ) p2 ).setClassLoader ( v3 ); // invoke-virtual {p2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
/* .line 423 */
this.mArguments = p2;
/* :try_end_0 */
/* .catch Ljava/lang/ClassNotFoundException; {:try_start_0 ..:try_end_0} :catch_0 */
/* .catch Ljava/lang/InstantiationException; {:try_start_0 ..:try_end_0} :catch_1 */
/* .catch Ljava/lang/IllegalAccessException; {:try_start_0 ..:try_end_0} :catch_2 */
/* .line 425 */
} // :cond_1
/* .line 426 */
} // .end local v0 # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
} // .end local v2 # "f":Landroid/support/v4/app/Fragment;
/* :catch_0 */
/* move-exception v1 */
/* .line 427 */
/* .local v1, "e":Ljava/lang/ClassNotFoundException; */
/* new-instance v3, Landroid/support/v4/app/Fragment$InstantiationException; */
/* new-instance v4, Ljava/lang/StringBuilder; */
/* invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V */
final String v5 = "Unable to instantiate fragment "; // const-string v5, "Unable to instantiate fragment "
(( java.lang.StringBuilder ) v4 ).append ( v5 ); // invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v4 ).append ( p1 ); // invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v5 = ": make sure class name exists, is public, and has an"; // const-string v5, ": make sure class name exists, is public, and has an"
(( java.lang.StringBuilder ) v4 ).append ( v5 ); // invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v5 = " empty constructor that is public"; // const-string v5, " empty constructor that is public"
(( java.lang.StringBuilder ) v4 ).append ( v5 ); // invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v4 ).toString ( ); // invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v3, v4, v1}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V */
/* throw v3 */
/* .line 430 */
} // .end local v1 # "e":Ljava/lang/ClassNotFoundException;
/* :catch_1 */
/* move-exception v1 */
/* .line 431 */
/* .local v1, "e":Ljava/lang/InstantiationException; */
/* new-instance v3, Landroid/support/v4/app/Fragment$InstantiationException; */
/* new-instance v4, Ljava/lang/StringBuilder; */
/* invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V */
final String v5 = "Unable to instantiate fragment "; // const-string v5, "Unable to instantiate fragment "
(( java.lang.StringBuilder ) v4 ).append ( v5 ); // invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v4 ).append ( p1 ); // invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v5 = ": make sure class name exists, is public, and has an"; // const-string v5, ": make sure class name exists, is public, and has an"
(( java.lang.StringBuilder ) v4 ).append ( v5 ); // invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v5 = " empty constructor that is public"; // const-string v5, " empty constructor that is public"
(( java.lang.StringBuilder ) v4 ).append ( v5 ); // invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v4 ).toString ( ); // invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v3, v4, v1}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V */
/* throw v3 */
/* .line 434 */
} // .end local v1 # "e":Ljava/lang/InstantiationException;
/* :catch_2 */
/* move-exception v1 */
/* .line 435 */
/* .local v1, "e":Ljava/lang/IllegalAccessException; */
/* new-instance v3, Landroid/support/v4/app/Fragment$InstantiationException; */
/* new-instance v4, Ljava/lang/StringBuilder; */
/* invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V */
final String v5 = "Unable to instantiate fragment "; // const-string v5, "Unable to instantiate fragment "
(( java.lang.StringBuilder ) v4 ).append ( v5 ); // invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v4 ).append ( p1 ); // invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v5 = ": make sure class name exists, is public, and has an"; // const-string v5, ": make sure class name exists, is public, and has an"
(( java.lang.StringBuilder ) v4 ).append ( v5 ); // invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v5 = " empty constructor that is public"; // const-string v5, " empty constructor that is public"
(( java.lang.StringBuilder ) v4 ).append ( v5 ); // invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v4 ).toString ( ); // invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v3, v4, v1}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V */
/* throw v3 */
} // .end method
static Boolean isSupportFragmentClass ( android.content.Context p0, java.lang.String p1 ) {
/* .locals 3 */
/* .param p0, "context" # Landroid/content/Context; */
/* .param p1, "fname" # Ljava/lang/String; */
/* .prologue */
/* .line 451 */
try { // :try_start_0
v2 = android.support.v4.app.Fragment.sClassMap;
(( android.support.v4.util.SimpleArrayMap ) v2 ).get ( p1 ); // invoke-virtual {v2, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
/* check-cast v0, Ljava/lang/Class; */
/* .line 452 */
/* .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;" */
/* if-nez v0, :cond_0 */
/* .line 454 */
(( android.content.Context ) p0 ).getClassLoader ( ); // invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
(( java.lang.ClassLoader ) v2 ).loadClass ( p1 ); // invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
/* .line 455 */
v2 = android.support.v4.app.Fragment.sClassMap;
(( android.support.v4.util.SimpleArrayMap ) v2 ).put ( p1, v0 ); // invoke-virtual {v2, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
/* .line 457 */
} // :cond_0
/* const-class v2, Landroid/support/v4/app/Fragment; */
(( java.lang.Class ) v2 ).isAssignableFrom ( v0 ); // invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
/* :try_end_0 */
v2 = /* .catch Ljava/lang/ClassNotFoundException; {:try_start_0 ..:try_end_0} :catch_0 */
/* .line 459 */
} // .end local v0 # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
} // :goto_0
/* .line 458 */
/* :catch_0 */
/* move-exception v1 */
/* .line 459 */
/* .local v1, "e":Ljava/lang/ClassNotFoundException; */
int v2 = 0; // const/4 v2, 0x0
} // .end method
/* # virtual methods */
public void dump ( java.lang.String p0, java.io.FileDescriptor p1, java.io.PrintWriter p2, java.lang.String[] p3 ) {
/* .locals 3 */
/* .param p1, "prefix" # Ljava/lang/String; */
/* .param p2, "fd" # Ljava/io/FileDescriptor; */
/* .param p3, "writer" # Ljava/io/PrintWriter; */
/* .param p4, "args" # [Ljava/lang/String; */
/* .prologue */
/* .line 1654 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mFragmentId=#"; // const-string v0, "mFragmentId=#"
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 1655 */
/* iget v0, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I */
java.lang.Integer .toHexString ( v0 );
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 1656 */
final String v0 = " mContainerId=#"; // const-string v0, " mContainerId=#"
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 1657 */
/* iget v0, p0, Landroid/support/v4/app/Fragment;->mContainerId:I */
java.lang.Integer .toHexString ( v0 );
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 1658 */
final String v0 = " mTag="; // const-string v0, " mTag="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
v0 = this.mTag;
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
/* .line 1659 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mState="; // const-string v0, "mState="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I */
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V
/* .line 1660 */
final String v0 = " mIndex="; // const-string v0, " mIndex="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I */
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V
/* .line 1661 */
final String v0 = " mWho="; // const-string v0, " mWho="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
v0 = this.mWho;
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 1662 */
final String v0 = " mBackStackNesting="; // const-string v0, " mBackStackNesting="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget v0, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I */
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V
/* .line 1663 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mAdded="; // const-string v0, "mAdded="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mAdded:Z */
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
/* .line 1664 */
final String v0 = " mRemoving="; // const-string v0, " mRemoving="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z */
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
/* .line 1665 */
final String v0 = " mResumed="; // const-string v0, " mResumed="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mResumed:Z */
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
/* .line 1666 */
final String v0 = " mFromLayout="; // const-string v0, " mFromLayout="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mFromLayout:Z */
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
/* .line 1667 */
final String v0 = " mInLayout="; // const-string v0, " mInLayout="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z */
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
/* .line 1668 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mHidden="; // const-string v0, "mHidden="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z */
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
/* .line 1669 */
final String v0 = " mDetached="; // const-string v0, " mDetached="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDetached:Z */
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
/* .line 1670 */
final String v0 = " mMenuVisible="; // const-string v0, " mMenuVisible="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z */
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
/* .line 1671 */
final String v0 = " mHasMenu="; // const-string v0, " mHasMenu="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z */
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
/* .line 1672 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mRetainInstance="; // const-string v0, "mRetainInstance="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z */
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
/* .line 1673 */
final String v0 = " mRetaining="; // const-string v0, " mRetaining="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetaining:Z */
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
/* .line 1674 */
final String v0 = " mUserVisibleHint="; // const-string v0, " mUserVisibleHint="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z */
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
/* .line 1675 */
v0 = this.mFragmentManager;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 1676 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mFragmentManager="; // const-string v0, "mFragmentManager="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 1677 */
v0 = this.mFragmentManager;
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
/* .line 1679 */
} // :cond_0
v0 = this.mActivity;
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 1680 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mActivity="; // const-string v0, "mActivity="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 1681 */
v0 = this.mActivity;
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
/* .line 1683 */
} // :cond_1
v0 = this.mParentFragment;
if ( v0 != null) { // if-eqz v0, :cond_2
/* .line 1684 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mParentFragment="; // const-string v0, "mParentFragment="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 1685 */
v0 = this.mParentFragment;
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
/* .line 1687 */
} // :cond_2
v0 = this.mArguments;
if ( v0 != null) { // if-eqz v0, :cond_3
/* .line 1688 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mArguments="; // const-string v0, "mArguments="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
v0 = this.mArguments;
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
/* .line 1690 */
} // :cond_3
v0 = this.mSavedFragmentState;
if ( v0 != null) { // if-eqz v0, :cond_4
/* .line 1691 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mSavedFragmentState="; // const-string v0, "mSavedFragmentState="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 1692 */
v0 = this.mSavedFragmentState;
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
/* .line 1694 */
} // :cond_4
v0 = this.mSavedViewState;
if ( v0 != null) { // if-eqz v0, :cond_5
/* .line 1695 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mSavedViewState="; // const-string v0, "mSavedViewState="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 1696 */
v0 = this.mSavedViewState;
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
/* .line 1698 */
} // :cond_5
v0 = this.mTarget;
if ( v0 != null) { // if-eqz v0, :cond_6
/* .line 1699 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mTarget="; // const-string v0, "mTarget="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
v0 = this.mTarget;
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
/* .line 1700 */
final String v0 = " mTargetRequestCode="; // const-string v0, " mTargetRequestCode="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 1701 */
/* iget v0, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I */
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V
/* .line 1703 */
} // :cond_6
/* iget v0, p0, Landroid/support/v4/app/Fragment;->mNextAnim:I */
if ( v0 != null) { // if-eqz v0, :cond_7
/* .line 1704 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mNextAnim="; // const-string v0, "mNextAnim="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget v0, p0, Landroid/support/v4/app/Fragment;->mNextAnim:I */
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V
/* .line 1706 */
} // :cond_7
v0 = this.mContainer;
if ( v0 != null) { // if-eqz v0, :cond_8
/* .line 1707 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mContainer="; // const-string v0, "mContainer="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
v0 = this.mContainer;
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
/* .line 1709 */
} // :cond_8
v0 = this.mView;
if ( v0 != null) { // if-eqz v0, :cond_9
/* .line 1710 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mView="; // const-string v0, "mView="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
v0 = this.mView;
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
/* .line 1712 */
} // :cond_9
v0 = this.mInnerView;
if ( v0 != null) { // if-eqz v0, :cond_a
/* .line 1713 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mInnerView="; // const-string v0, "mInnerView="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
v0 = this.mView;
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
/* .line 1715 */
} // :cond_a
v0 = this.mAnimatingAway;
if ( v0 != null) { // if-eqz v0, :cond_b
/* .line 1716 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mAnimatingAway="; // const-string v0, "mAnimatingAway="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
v0 = this.mAnimatingAway;
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
/* .line 1717 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mStateAfterAnimating="; // const-string v0, "mStateAfterAnimating="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 1718 */
/* iget v0, p0, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I */
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V
/* .line 1720 */
} // :cond_b
v0 = this.mLoaderManager;
if ( v0 != null) { // if-eqz v0, :cond_c
/* .line 1721 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "Loader Manager:"; // const-string v0, "Loader Manager:"
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
/* .line 1722 */
v0 = this.mLoaderManager;
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
(( java.lang.StringBuilder ) v1 ).append ( p1 ); // invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v2 = " "; // const-string v2, " "
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
(( android.support.v4.app.LoaderManagerImpl ) v0 ).dump ( v1, p2, p3, p4 ); // invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
/* .line 1724 */
} // :cond_c
v0 = this.mChildFragmentManager;
if ( v0 != null) { // if-eqz v0, :cond_d
/* .line 1725 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* new-instance v0, Ljava/lang/StringBuilder; */
/* invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V */
final String v1 = "Child "; // const-string v1, "Child "
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
v1 = this.mChildFragmentManager;
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
final String v1 = ":"; // const-string v1, ":"
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v0 ).toString ( ); // invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
/* .line 1726 */
v0 = this.mChildFragmentManager;
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
(( java.lang.StringBuilder ) v1 ).append ( p1 ); // invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v2 = " "; // const-string v2, " "
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dump ( v1, p2, p3, p4 ); // invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
/* .line 1728 */
} // :cond_d
return;
} // .end method
public final Boolean equals ( java.lang.Object p0 ) {
/* .locals 1 */
/* .param p1, "o" # Ljava/lang/Object; */
/* .prologue */
/* .line 493 */
v0 = /* invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z */
} // .end method
android.support.v4.app.Fragment findFragmentByWho ( java.lang.String p0 ) {
/* .locals 1 */
/* .param p1, "who" # Ljava/lang/String; */
/* .prologue */
/* .line 1731 */
v0 = this.mWho;
v0 = (( java.lang.String ) p1 ).equals ( v0 ); // invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 1737 */
} // .end local p0 # "this":Landroid/support/v4/app/Fragment;
} // :goto_0
/* .line 1734 */
/* .restart local p0 # "this":Landroid/support/v4/app/Fragment; */
} // :cond_0
v0 = this.mChildFragmentManager;
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 1735 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).findFragmentByWho ( p1 ); // invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
/* .line 1737 */
} // :cond_1
int p0 = 0; // const/4 p0, 0x0
} // .end method
public final android.support.v4.app.FragmentActivity getActivity ( ) {
/* .locals 1 */
/* .prologue */
/* .line 611 */
v0 = this.mActivity;
} // .end method
public Boolean getAllowEnterTransitionOverlap ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1617 */
v0 = this.mAllowEnterTransitionOverlap;
/* if-nez v0, :cond_0 */
int v0 = 1; // const/4 v0, 0x1
} // :goto_0
} // :cond_0
v0 = this.mAllowEnterTransitionOverlap;
v0 = (( java.lang.Boolean ) v0 ).booleanValue ( ); // invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
} // .end method
public Boolean getAllowReturnTransitionOverlap ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1641 */
v0 = this.mAllowReturnTransitionOverlap;
/* if-nez v0, :cond_0 */
int v0 = 1; // const/4 v0, 0x1
} // :goto_0
} // :cond_0
v0 = this.mAllowReturnTransitionOverlap;
v0 = (( java.lang.Boolean ) v0 ).booleanValue ( ); // invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
} // .end method
public final android.os.Bundle getArguments ( ) {
/* .locals 1 */
/* .prologue */
/* .line 558 */
v0 = this.mArguments;
} // .end method
public final android.support.v4.app.FragmentManager getChildFragmentManager ( ) {
/* .locals 2 */
/* .prologue */
/* .line 676 */
v0 = this.mChildFragmentManager;
/* if-nez v0, :cond_0 */
/* .line 677 */
(( android.support.v4.app.Fragment ) p0 ).instantiateChildFragmentManager ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->instantiateChildFragmentManager()V
/* .line 678 */
/* iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I */
int v1 = 5; // const/4 v1, 0x5
/* if-lt v0, v1, :cond_1 */
/* .line 679 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchResume ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V
/* .line 688 */
} // :cond_0
} // :goto_0
v0 = this.mChildFragmentManager;
/* .line 680 */
} // :cond_1
/* iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I */
int v1 = 4; // const/4 v1, 0x4
/* if-lt v0, v1, :cond_2 */
/* .line 681 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchStart ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V
/* .line 682 */
} // :cond_2
/* iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I */
int v1 = 2; // const/4 v1, 0x2
/* if-lt v0, v1, :cond_3 */
/* .line 683 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchActivityCreated ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V
/* .line 684 */
} // :cond_3
/* iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I */
int v1 = 1; // const/4 v1, 0x1
/* if-lt v0, v1, :cond_0 */
/* .line 685 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchCreate ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V
} // .end method
public java.lang.Object getEnterTransition ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1432 */
v0 = this.mEnterTransition;
} // .end method
public java.lang.Object getExitTransition ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1500 */
v0 = this.mExitTransition;
} // .end method
public final android.support.v4.app.FragmentManager getFragmentManager ( ) {
/* .locals 1 */
/* .prologue */
/* .line 668 */
v0 = this.mFragmentManager;
} // .end method
public final Integer getId ( ) {
/* .locals 1 */
/* .prologue */
/* .line 529 */
/* iget v0, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I */
} // .end method
public android.view.LayoutInflater getLayoutInflater ( android.os.Bundle p0 ) {
/* .locals 3 */
/* .param p1, "savedInstanceState" # Landroid/os/Bundle; */
/* .prologue */
/* .line 933 */
v1 = this.mActivity;
(( android.support.v4.app.FragmentActivity ) v1 ).getLayoutInflater ( ); // invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;
v2 = this.mActivity;
(( android.view.LayoutInflater ) v1 ).cloneInContext ( v2 ); // invoke-virtual {v1, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
/* .line 934 */
/* .local v0, "result":Landroid/view/LayoutInflater; */
(( android.support.v4.app.Fragment ) p0 ).getChildFragmentManager ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;
/* .line 935 */
v1 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v1 ).getLayoutInflaterFactory ( ); // invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory;
(( android.view.LayoutInflater ) v0 ).setFactory ( v1 ); // invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V
/* .line 936 */
} // .end method
public android.support.v4.app.LoaderManager getLoaderManager ( ) {
/* .locals 4 */
/* .prologue */
int v3 = 1; // const/4 v3, 0x1
/* .line 877 */
v0 = this.mLoaderManager;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 878 */
v0 = this.mLoaderManager;
/* .line 885 */
} // :goto_0
/* .line 880 */
} // :cond_0
v0 = this.mActivity;
/* if-nez v0, :cond_1 */
/* .line 881 */
/* new-instance v0, Ljava/lang/IllegalStateException; */
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
final String v2 = "Fragment "; // const-string v2, "Fragment "
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).append ( p0 ); // invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
final String v2 = " not attached to Activity"; // const-string v2, " not attached to Activity"
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 883 */
} // :cond_1
/* iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z */
/* .line 884 */
v0 = this.mActivity;
v1 = this.mWho;
/* iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z */
(( android.support.v4.app.FragmentActivity ) v0 ).getLoaderManager ( v1, v2, v3 ); // invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
this.mLoaderManager = v0;
/* .line 885 */
v0 = this.mLoaderManager;
} // .end method
public final android.support.v4.app.Fragment getParentFragment ( ) {
/* .locals 1 */
/* .prologue */
/* .line 696 */
v0 = this.mParentFragment;
} // .end method
public java.lang.Object getReenterTransition ( ) {
/* .locals 2 */
/* .prologue */
/* .line 1533 */
v0 = this.mReenterTransition;
v1 = android.support.v4.app.Fragment.USE_DEFAULT_TRANSITION;
/* if-ne v0, v1, :cond_0 */
(( android.support.v4.app.Fragment ) p0 ).getExitTransition ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;
} // :goto_0
} // :cond_0
v0 = this.mReenterTransition;
} // .end method
public final android.content.res.Resources getResources ( ) {
/* .locals 3 */
/* .prologue */
/* .line 618 */
v0 = this.mActivity;
/* if-nez v0, :cond_0 */
/* .line 619 */
/* new-instance v0, Ljava/lang/IllegalStateException; */
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
final String v2 = "Fragment "; // const-string v2, "Fragment "
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).append ( p0 ); // invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
final String v2 = " not attached to Activity"; // const-string v2, " not attached to Activity"
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 621 */
} // :cond_0
v0 = this.mActivity;
(( android.support.v4.app.FragmentActivity ) v0 ).getResources ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;
} // .end method
public final Boolean getRetainInstance ( ) {
/* .locals 1 */
/* .prologue */
/* .line 807 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z */
} // .end method
public java.lang.Object getReturnTransition ( ) {
/* .locals 2 */
/* .prologue */
/* .line 1466 */
v0 = this.mReturnTransition;
v1 = android.support.v4.app.Fragment.USE_DEFAULT_TRANSITION;
/* if-ne v0, v1, :cond_0 */
(( android.support.v4.app.Fragment ) p0 ).getEnterTransition ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;
} // :goto_0
} // :cond_0
v0 = this.mReturnTransition;
} // .end method
public java.lang.Object getSharedElementEnterTransition ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1560 */
v0 = this.mSharedElementEnterTransition;
} // .end method
public java.lang.Object getSharedElementReturnTransition ( ) {
/* .locals 2 */
/* .prologue */
/* .line 1592 */
v0 = this.mSharedElementReturnTransition;
v1 = android.support.v4.app.Fragment.USE_DEFAULT_TRANSITION;
/* if-ne v0, v1, :cond_0 */
(( android.support.v4.app.Fragment ) p0 ).getSharedElementEnterTransition ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;
} // :goto_0
} // :cond_0
v0 = this.mSharedElementReturnTransition;
} // .end method
public final java.lang.String getString ( Integer p0 ) {
/* .locals 1 */
/* .param p1, "resId" # I */
/* .prologue */
/* .line 641 */
(( android.support.v4.app.Fragment ) p0 ).getResources ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;
(( android.content.res.Resources ) v0 ).getString ( p1 ); // invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
} // .end method
public final java.lang.String getString ( Integer p0, java.lang.Object...p1 ) {
/* .locals 1 */
/* .param p1, "resId" # I */
/* .param p2, "formatArgs" # [Ljava/lang/Object; */
/* .prologue */
/* .line 654 */
(( android.support.v4.app.Fragment ) p0 ).getResources ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;
(( android.content.res.Resources ) v0 ).getString ( p1, p2 ); // invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
} // .end method
public final java.lang.String getTag ( ) {
/* .locals 1 */
/* .prologue */
/* .line 536 */
v0 = this.mTag;
} // .end method
public final android.support.v4.app.Fragment getTargetFragment ( ) {
/* .locals 1 */
/* .prologue */
/* .line 597 */
v0 = this.mTarget;
} // .end method
public final Integer getTargetRequestCode ( ) {
/* .locals 1 */
/* .prologue */
/* .line 604 */
/* iget v0, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I */
} // .end method
public final java.lang.CharSequence getText ( Integer p0 ) {
/* .locals 1 */
/* .param p1, "resId" # I */
/* .prologue */
/* .line 631 */
(( android.support.v4.app.Fragment ) p0 ).getResources ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;
(( android.content.res.Resources ) v0 ).getText ( p1 ); // invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
} // .end method
public Boolean getUserVisibleHint ( ) {
/* .locals 1 */
/* .prologue */
/* .line 870 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z */
} // .end method
public android.view.View getView ( ) {
/* .locals 1 */
/* .annotation build Landroid/support/annotation/Nullable; */
} // .end annotation
/* .prologue */
/* .line 1063 */
v0 = this.mView;
} // .end method
public final Boolean hasOptionsMenu ( ) {
/* .locals 1 */
/* .prologue */
/* .line 766 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z */
} // .end method
public final Integer hashCode ( ) {
/* .locals 1 */
/* .prologue */
/* .line 500 */
v0 = /* invoke-super {p0}, Ljava/lang/Object;->hashCode()I */
} // .end method
void initState ( ) {
/* .locals 3 */
/* .prologue */
int v2 = 0; // const/4 v2, 0x0
int v1 = 0; // const/4 v1, 0x0
/* .line 1213 */
int v0 = -1; // const/4 v0, -0x1
/* iput v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I */
/* .line 1214 */
this.mWho = v2;
/* .line 1215 */
/* iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mAdded:Z */
/* .line 1216 */
/* iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z */
/* .line 1217 */
/* iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mResumed:Z */
/* .line 1218 */
/* iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mFromLayout:Z */
/* .line 1219 */
/* iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z */
/* .line 1220 */
/* iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mRestored:Z */
/* .line 1221 */
/* iput v1, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I */
/* .line 1222 */
this.mFragmentManager = v2;
/* .line 1223 */
this.mChildFragmentManager = v2;
/* .line 1224 */
this.mActivity = v2;
/* .line 1225 */
/* iput v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I */
/* .line 1226 */
/* iput v1, p0, Landroid/support/v4/app/Fragment;->mContainerId:I */
/* .line 1227 */
this.mTag = v2;
/* .line 1228 */
/* iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z */
/* .line 1229 */
/* iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mDetached:Z */
/* .line 1230 */
/* iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mRetaining:Z */
/* .line 1231 */
this.mLoaderManager = v2;
/* .line 1232 */
/* iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z */
/* .line 1233 */
/* iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z */
/* .line 1234 */
return;
} // .end method
void instantiateChildFragmentManager ( ) {
/* .locals 3 */
/* .prologue */
/* .line 1741 */
/* new-instance v0, Landroid/support/v4/app/FragmentManagerImpl; */
/* invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V */
this.mChildFragmentManager = v0;
/* .line 1742 */
v0 = this.mChildFragmentManager;
v1 = this.mActivity;
/* new-instance v2, Landroid/support/v4/app/Fragment$1; */
/* invoke-direct {v2, p0}, Landroid/support/v4/app/Fragment$1;-><init>(Landroid/support/v4/app/Fragment;)V */
(( android.support.v4.app.FragmentManagerImpl ) v0 ).attachActivity ( v1, v2, p0 ); // invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/FragmentManagerImpl;->attachActivity(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V
/* .line 1756 */
return;
} // .end method
public final Boolean isAdded ( ) {
/* .locals 1 */
/* .prologue */
/* .line 703 */
v0 = this.mActivity;
if ( v0 != null) { // if-eqz v0, :cond_0
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mAdded:Z */
if ( v0 != null) { // if-eqz v0, :cond_0
int v0 = 1; // const/4 v0, 0x1
} // :goto_0
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
} // .end method
public final Boolean isDetached ( ) {
/* .locals 1 */
/* .prologue */
/* .line 712 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDetached:Z */
} // .end method
public final Boolean isHidden ( ) {
/* .locals 1 */
/* .prologue */
/* .line 761 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z */
} // .end method
final Boolean isInBackStack ( ) {
/* .locals 1 */
/* .prologue */
/* .line 486 */
/* iget v0, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I */
/* if-lez v0, :cond_0 */
int v0 = 1; // const/4 v0, 0x1
} // :goto_0
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
} // .end method
public final Boolean isInLayout ( ) {
/* .locals 1 */
/* .prologue */
/* .line 732 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z */
} // .end method
public final Boolean isMenuVisible ( ) {
/* .locals 1 */
/* .prologue */
/* .line 771 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z */
} // .end method
public final Boolean isRemoving ( ) {
/* .locals 1 */
/* .prologue */
/* .line 721 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z */
} // .end method
public final Boolean isResumed ( ) {
/* .locals 1 */
/* .prologue */
/* .line 740 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mResumed:Z */
} // .end method
public final Boolean isVisible ( ) {
/* .locals 1 */
/* .prologue */
/* .line 749 */
v0 = (( android.support.v4.app.Fragment ) p0 ).isAdded ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z
if ( v0 != null) { // if-eqz v0, :cond_0
v0 = (( android.support.v4.app.Fragment ) p0 ).isHidden ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z
/* if-nez v0, :cond_0 */
v0 = this.mView;
if ( v0 != null) { // if-eqz v0, :cond_0
v0 = this.mView;
(( android.view.View ) v0 ).getWindowToken ( ); // invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
if ( v0 != null) { // if-eqz v0, :cond_0
v0 = this.mView;
v0 = (( android.view.View ) v0 ).getVisibility ( ); // invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
/* if-nez v0, :cond_0 */
int v0 = 1; // const/4 v0, 0x1
} // :goto_0
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
} // .end method
public void onActivityCreated ( android.os.Bundle p0 ) {
/* .locals 1 */
/* .param p1, "savedInstanceState" # Landroid/os/Bundle; */
/* .annotation build Landroid/support/annotation/Nullable; */
} // .end annotation
} // .end param
/* .prologue */
/* .line 1080 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 1081 */
return;
} // .end method
public void onActivityResult ( Integer p0, Integer p1, android.content.Intent p2 ) {
/* .locals 0 */
/* .param p1, "requestCode" # I */
/* .param p2, "resultCode" # I */
/* .param p3, "data" # Landroid/content/Intent; */
/* .prologue */
/* .line 925 */
return;
} // .end method
public void onAttach ( android.app.Activity p0 ) {
/* .locals 1 */
/* .param p1, "activity" # Landroid/app/Activity; */
/* .prologue */
/* .line 990 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 991 */
return;
} // .end method
public void onConfigurationChanged ( android.content.res.Configuration p0 ) {
/* .locals 1 */
/* .param p1, "newConfig" # Landroid/content/res/Configuration; */
/* .prologue */
/* .line 1151 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 1152 */
return;
} // .end method
public Boolean onContextItemSelected ( android.view.MenuItem p0 ) {
/* .locals 1 */
/* .param p1, "item" # Landroid/view/MenuItem; */
/* .prologue */
/* .line 1383 */
int v0 = 0; // const/4 v0, 0x0
} // .end method
public void onCreate ( android.os.Bundle p0 ) {
/* .locals 1 */
/* .param p1, "savedInstanceState" # Landroid/os/Bundle; */
/* .prologue */
/* .line 1015 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 1016 */
return;
} // .end method
public android.view.animation.Animation onCreateAnimation ( Integer p0, Boolean p1, Integer p2 ) {
/* .locals 1 */
/* .param p1, "transit" # I */
/* .param p2, "enter" # Z */
/* .param p3, "nextAnim" # I */
/* .prologue */
/* .line 997 */
int v0 = 0; // const/4 v0, 0x0
} // .end method
public void onCreateContextMenu ( android.view.ContextMenu p0, android.view.View p1, android.view.ContextMenu$ContextMenuInfo p2 ) {
/* .locals 1 */
/* .param p1, "menu" # Landroid/view/ContextMenu; */
/* .param p2, "v" # Landroid/view/View; */
/* .param p3, "menuInfo" # Landroid/view/ContextMenu$ContextMenuInfo; */
/* .prologue */
/* .line 1337 */
(( android.support.v4.app.Fragment ) p0 ).getActivity ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
(( android.support.v4.app.FragmentActivity ) v0 ).onCreateContextMenu ( p1, p2, p3 ); // invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
/* .line 1338 */
return;
} // .end method
public void onCreateOptionsMenu ( android.view.Menu p0, android.view.MenuInflater p1 ) {
/* .locals 0 */
/* .param p1, "menu" # Landroid/view/Menu; */
/* .param p2, "inflater" # Landroid/view/MenuInflater; */
/* .prologue */
/* .line 1258 */
return;
} // .end method
public android.view.View onCreateView ( android.view.LayoutInflater p0, android.view.ViewGroup p1, android.os.Bundle p2 ) {
/* .locals 1 */
/* .param p1, "inflater" # Landroid/view/LayoutInflater; */
/* .param p2, "container" # Landroid/view/ViewGroup; */
/* .annotation build Landroid/support/annotation/Nullable; */
} // .end annotation
} // .end param
/* .param p3, "savedInstanceState" # Landroid/os/Bundle; */
/* .annotation build Landroid/support/annotation/Nullable; */
} // .end annotation
} // .end param
/* .prologue */
/* .line 1039 */
int v0 = 0; // const/4 v0, 0x0
} // .end method
public void onDestroy ( ) {
/* .locals 4 */
/* .prologue */
int v1 = 1; // const/4 v1, 0x1
/* .line 1194 */
/* iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 1197 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z */
/* if-nez v0, :cond_0 */
/* .line 1198 */
/* iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z */
/* .line 1199 */
v0 = this.mActivity;
v1 = this.mWho;
/* iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z */
int v3 = 0; // const/4 v3, 0x0
(( android.support.v4.app.FragmentActivity ) v0 ).getLoaderManager ( v1, v2, v3 ); // invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
this.mLoaderManager = v0;
/* .line 1201 */
} // :cond_0
v0 = this.mLoaderManager;
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 1202 */
v0 = this.mLoaderManager;
(( android.support.v4.app.LoaderManagerImpl ) v0 ).doDestroy ( ); // invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V
/* .line 1204 */
} // :cond_1
return;
} // .end method
public void onDestroyOptionsMenu ( ) {
/* .locals 0 */
/* .prologue */
/* .line 1285 */
return;
} // .end method
public void onDestroyView ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1186 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 1187 */
return;
} // .end method
public void onDetach ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1241 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 1242 */
return;
} // .end method
public void onHiddenChanged ( Boolean p0 ) {
/* .locals 0 */
/* .param p1, "hidden" # Z */
/* .prologue */
/* .line 782 */
return;
} // .end method
public void onInflate ( android.app.Activity p0, android.util.AttributeSet p1, android.os.Bundle p2 ) {
/* .locals 1 */
/* .param p1, "activity" # Landroid/app/Activity; */
/* .param p2, "attrs" # Landroid/util/AttributeSet; */
/* .param p3, "savedInstanceState" # Landroid/os/Bundle; */
/* .prologue */
/* .line 982 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 983 */
return;
} // .end method
public void onLowMemory ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1173 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 1174 */
return;
} // .end method
public Boolean onOptionsItemSelected ( android.view.MenuItem p0 ) {
/* .locals 1 */
/* .param p1, "item" # Landroid/view/MenuItem; */
/* .prologue */
/* .line 1306 */
int v0 = 0; // const/4 v0, 0x0
} // .end method
public void onOptionsMenuClosed ( android.view.Menu p0 ) {
/* .locals 0 */
/* .param p1, "menu" # Landroid/view/Menu; */
/* .prologue */
/* .line 1317 */
return;
} // .end method
public void onPause ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1160 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 1161 */
return;
} // .end method
public void onPrepareOptionsMenu ( android.view.Menu p0 ) {
/* .locals 0 */
/* .param p1, "menu" # Landroid/view/Menu; */
/* .prologue */
/* .line 1275 */
return;
} // .end method
public void onResume ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1125 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 1126 */
return;
} // .end method
public void onSaveInstanceState ( android.os.Bundle p0 ) {
/* .locals 0 */
/* .param p1, "outState" # Landroid/os/Bundle; */
/* .prologue */
/* .line 1148 */
return;
} // .end method
public void onStart ( ) {
/* .locals 4 */
/* .prologue */
int v1 = 1; // const/4 v1, 0x1
/* .line 1104 */
/* iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 1106 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z */
/* if-nez v0, :cond_1 */
/* .line 1107 */
/* iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z */
/* .line 1108 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z */
/* if-nez v0, :cond_0 */
/* .line 1109 */
/* iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z */
/* .line 1110 */
v0 = this.mActivity;
v1 = this.mWho;
/* iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z */
int v3 = 0; // const/4 v3, 0x0
(( android.support.v4.app.FragmentActivity ) v0 ).getLoaderManager ( v1, v2, v3 ); // invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
this.mLoaderManager = v0;
/* .line 1112 */
} // :cond_0
v0 = this.mLoaderManager;
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 1113 */
v0 = this.mLoaderManager;
(( android.support.v4.app.LoaderManagerImpl ) v0 ).doStart ( ); // invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V
/* .line 1116 */
} // :cond_1
return;
} // .end method
public void onStop ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1169 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 1170 */
return;
} // .end method
public void onViewCreated ( android.view.View p0, android.os.Bundle p1 ) {
/* .locals 0 */
/* .param p1, "view" # Landroid/view/View; */
/* .param p2, "savedInstanceState" # Landroid/os/Bundle; */
/* .annotation build Landroid/support/annotation/Nullable; */
} // .end annotation
} // .end param
/* .prologue */
/* .line 1053 */
return;
} // .end method
public void onViewStateRestored ( android.os.Bundle p0 ) {
/* .locals 1 */
/* .param p1, "savedInstanceState" # Landroid/os/Bundle; */
/* .annotation build Landroid/support/annotation/Nullable; */
} // .end annotation
} // .end param
/* .prologue */
/* .line 1095 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 1096 */
return;
} // .end method
void performActivityCreated ( android.os.Bundle p0 ) {
/* .locals 3 */
/* .param p1, "savedInstanceState" # Landroid/os/Bundle; */
/* .prologue */
/* .line 1790 */
v0 = this.mChildFragmentManager;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 1791 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).noteStateNotSaved ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V
/* .line 1793 */
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
/* iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 1794 */
(( android.support.v4.app.Fragment ) p0 ).onActivityCreated ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V
/* .line 1795 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* if-nez v0, :cond_1 */
/* .line 1796 */
/* new-instance v0, Landroid/support/v4/app/SuperNotCalledException; */
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
final String v2 = "Fragment "; // const-string v2, "Fragment "
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).append ( p0 ); // invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
final String v2 = " did not call through to super.onActivityCreated()"; // const-string v2, " did not call through to super.onActivityCreated()"
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 1799 */
} // :cond_1
v0 = this.mChildFragmentManager;
if ( v0 != null) { // if-eqz v0, :cond_2
/* .line 1800 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchActivityCreated ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V
/* .line 1802 */
} // :cond_2
return;
} // .end method
void performConfigurationChanged ( android.content.res.Configuration p0 ) {
/* .locals 1 */
/* .param p1, "newConfig" # Landroid/content/res/Configuration; */
/* .prologue */
/* .line 1841 */
(( android.support.v4.app.Fragment ) p0 ).onConfigurationChanged ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V
/* .line 1842 */
v0 = this.mChildFragmentManager;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 1843 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchConfigurationChanged ( p1 ); // invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
/* .line 1845 */
} // :cond_0
return;
} // .end method
Boolean performContextItemSelected ( android.view.MenuItem p0 ) {
/* .locals 2 */
/* .param p1, "item" # Landroid/view/MenuItem; */
/* .prologue */
int v0 = 1; // const/4 v0, 0x1
/* .line 1908 */
/* iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z */
/* if-nez v1, :cond_2 */
/* .line 1909 */
v1 = (( android.support.v4.app.Fragment ) p0 ).onContextItemSelected ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z
if ( v1 != null) { // if-eqz v1, :cond_1
/* .line 1918 */
} // :cond_0
} // :goto_0
/* .line 1912 */
} // :cond_1
v1 = this.mChildFragmentManager;
if ( v1 != null) { // if-eqz v1, :cond_2
/* .line 1913 */
v1 = this.mChildFragmentManager;
v1 = (( android.support.v4.app.FragmentManagerImpl ) v1 ).dispatchContextItemSelected ( p1 ); // invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z
/* if-nez v1, :cond_0 */
/* .line 1918 */
} // :cond_2
int v0 = 0; // const/4 v0, 0x0
} // .end method
void performCreate ( android.os.Bundle p0 ) {
/* .locals 4 */
/* .param p1, "savedInstanceState" # Landroid/os/Bundle; */
/* .prologue */
/* .line 1759 */
v1 = this.mChildFragmentManager;
if ( v1 != null) { // if-eqz v1, :cond_0
/* .line 1760 */
v1 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v1 ).noteStateNotSaved ( ); // invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V
/* .line 1762 */
} // :cond_0
int v1 = 0; // const/4 v1, 0x0
/* iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 1763 */
(( android.support.v4.app.Fragment ) p0 ).onCreate ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V
/* .line 1764 */
/* iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* if-nez v1, :cond_1 */
/* .line 1765 */
/* new-instance v1, Landroid/support/v4/app/SuperNotCalledException; */
/* new-instance v2, Ljava/lang/StringBuilder; */
/* invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V */
final String v3 = "Fragment "; // const-string v3, "Fragment "
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).append ( p0 ); // invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
final String v3 = " did not call through to super.onCreate()"; // const-string v3, " did not call through to super.onCreate()"
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).toString ( ); // invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v1, v2}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V */
/* throw v1 */
/* .line 1768 */
} // :cond_1
if ( p1 != null) { // if-eqz p1, :cond_3
/* .line 1769 */
final String v1 = "android:support:fragments"; // const-string v1, "android:support:fragments"
(( android.os.Bundle ) p1 ).getParcelable ( v1 ); // invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
/* .line 1771 */
/* .local v0, "p":Landroid/os/Parcelable; */
if ( v0 != null) { // if-eqz v0, :cond_3
/* .line 1772 */
v1 = this.mChildFragmentManager;
/* if-nez v1, :cond_2 */
/* .line 1773 */
(( android.support.v4.app.Fragment ) p0 ).instantiateChildFragmentManager ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->instantiateChildFragmentManager()V
/* .line 1775 */
} // :cond_2
v1 = this.mChildFragmentManager;
int v2 = 0; // const/4 v2, 0x0
(( android.support.v4.app.FragmentManagerImpl ) v1 ).restoreAllState ( v0, v2 ); // invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
/* .line 1776 */
v1 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v1 ).dispatchCreate ( ); // invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V
/* .line 1779 */
} // .end local v0 # "p":Landroid/os/Parcelable;
} // :cond_3
return;
} // .end method
Boolean performCreateOptionsMenu ( android.view.Menu p0, android.view.MenuInflater p1 ) {
/* .locals 2 */
/* .param p1, "menu" # Landroid/view/Menu; */
/* .param p2, "inflater" # Landroid/view/MenuInflater; */
/* .prologue */
/* .line 1864 */
int v0 = 0; // const/4 v0, 0x0
/* .line 1865 */
/* .local v0, "show":Z */
/* iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z */
/* if-nez v1, :cond_1 */
/* .line 1866 */
/* iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z */
if ( v1 != null) { // if-eqz v1, :cond_0
/* iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z */
if ( v1 != null) { // if-eqz v1, :cond_0
/* .line 1867 */
int v0 = 1; // const/4 v0, 0x1
/* .line 1868 */
(( android.support.v4.app.Fragment ) p0 ).onCreateOptionsMenu ( p1, p2 ); // invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
/* .line 1870 */
} // :cond_0
v1 = this.mChildFragmentManager;
if ( v1 != null) { // if-eqz v1, :cond_1
/* .line 1871 */
v1 = this.mChildFragmentManager;
v1 = (( android.support.v4.app.FragmentManagerImpl ) v1 ).dispatchCreateOptionsMenu ( p1, p2 ); // invoke-virtual {v1, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
/* or-int/2addr v0, v1 */
/* .line 1874 */
} // :cond_1
} // .end method
android.view.View performCreateView ( android.view.LayoutInflater p0, android.view.ViewGroup p1, android.os.Bundle p2 ) {
/* .locals 1 */
/* .param p1, "inflater" # Landroid/view/LayoutInflater; */
/* .param p2, "container" # Landroid/view/ViewGroup; */
/* .param p3, "savedInstanceState" # Landroid/os/Bundle; */
/* .prologue */
/* .line 1783 */
v0 = this.mChildFragmentManager;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 1784 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).noteStateNotSaved ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V
/* .line 1786 */
} // :cond_0
(( android.support.v4.app.Fragment ) p0 ).onCreateView ( p1, p2, p3 ); // invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
} // .end method
void performDestroy ( ) {
/* .locals 3 */
/* .prologue */
/* .line 2002 */
v0 = this.mChildFragmentManager;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 2003 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchDestroy ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V
/* .line 2005 */
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
/* iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 2006 */
(( android.support.v4.app.Fragment ) p0 ).onDestroy ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V
/* .line 2007 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* if-nez v0, :cond_1 */
/* .line 2008 */
/* new-instance v0, Landroid/support/v4/app/SuperNotCalledException; */
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
final String v2 = "Fragment "; // const-string v2, "Fragment "
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).append ( p0 ); // invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
final String v2 = " did not call through to super.onDestroy()"; // const-string v2, " did not call through to super.onDestroy()"
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 2011 */
} // :cond_1
return;
} // .end method
void performDestroyView ( ) {
/* .locals 3 */
/* .prologue */
/* .line 1987 */
v0 = this.mChildFragmentManager;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 1988 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchDestroyView ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroyView()V
/* .line 1990 */
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
/* iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 1991 */
(( android.support.v4.app.Fragment ) p0 ).onDestroyView ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V
/* .line 1992 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* if-nez v0, :cond_1 */
/* .line 1993 */
/* new-instance v0, Landroid/support/v4/app/SuperNotCalledException; */
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
final String v2 = "Fragment "; // const-string v2, "Fragment "
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).append ( p0 ); // invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
final String v2 = " did not call through to super.onDestroyView()"; // const-string v2, " did not call through to super.onDestroyView()"
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 1996 */
} // :cond_1
v0 = this.mLoaderManager;
if ( v0 != null) { // if-eqz v0, :cond_2
/* .line 1997 */
v0 = this.mLoaderManager;
(( android.support.v4.app.LoaderManagerImpl ) v0 ).doReportNextStart ( ); // invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doReportNextStart()V
/* .line 1999 */
} // :cond_2
return;
} // .end method
void performLowMemory ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1848 */
(( android.support.v4.app.Fragment ) p0 ).onLowMemory ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V
/* .line 1849 */
v0 = this.mChildFragmentManager;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 1850 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchLowMemory ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchLowMemory()V
/* .line 1852 */
} // :cond_0
return;
} // .end method
Boolean performOptionsItemSelected ( android.view.MenuItem p0 ) {
/* .locals 2 */
/* .param p1, "item" # Landroid/view/MenuItem; */
/* .prologue */
int v0 = 1; // const/4 v0, 0x1
/* .line 1892 */
/* iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z */
/* if-nez v1, :cond_2 */
/* .line 1893 */
/* iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z */
if ( v1 != null) { // if-eqz v1, :cond_1
/* iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z */
if ( v1 != null) { // if-eqz v1, :cond_1
/* .line 1894 */
v1 = (( android.support.v4.app.Fragment ) p0 ).onOptionsItemSelected ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
if ( v1 != null) { // if-eqz v1, :cond_1
/* .line 1904 */
} // :cond_0
} // :goto_0
/* .line 1898 */
} // :cond_1
v1 = this.mChildFragmentManager;
if ( v1 != null) { // if-eqz v1, :cond_2
/* .line 1899 */
v1 = this.mChildFragmentManager;
v1 = (( android.support.v4.app.FragmentManagerImpl ) v1 ).dispatchOptionsItemSelected ( p1 ); // invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
/* if-nez v1, :cond_0 */
/* .line 1904 */
} // :cond_2
int v0 = 0; // const/4 v0, 0x0
} // .end method
void performOptionsMenuClosed ( android.view.Menu p0 ) {
/* .locals 1 */
/* .param p1, "menu" # Landroid/view/Menu; */
/* .prologue */
/* .line 1922 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z */
/* if-nez v0, :cond_1 */
/* .line 1923 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z */
if ( v0 != null) { // if-eqz v0, :cond_0
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 1924 */
(( android.support.v4.app.Fragment ) p0 ).onOptionsMenuClosed ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V
/* .line 1926 */
} // :cond_0
v0 = this.mChildFragmentManager;
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 1927 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchOptionsMenuClosed ( p1 ); // invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V
/* .line 1930 */
} // :cond_1
return;
} // .end method
void performPause ( ) {
/* .locals 3 */
/* .prologue */
/* .line 1943 */
v0 = this.mChildFragmentManager;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 1944 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchPause ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPause()V
/* .line 1946 */
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
/* iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 1947 */
(( android.support.v4.app.Fragment ) p0 ).onPause ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onPause()V
/* .line 1948 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* if-nez v0, :cond_1 */
/* .line 1949 */
/* new-instance v0, Landroid/support/v4/app/SuperNotCalledException; */
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
final String v2 = "Fragment "; // const-string v2, "Fragment "
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).append ( p0 ); // invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
final String v2 = " did not call through to super.onPause()"; // const-string v2, " did not call through to super.onPause()"
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 1952 */
} // :cond_1
return;
} // .end method
Boolean performPrepareOptionsMenu ( android.view.Menu p0 ) {
/* .locals 2 */
/* .param p1, "menu" # Landroid/view/Menu; */
/* .prologue */
/* .line 1878 */
int v0 = 0; // const/4 v0, 0x0
/* .line 1879 */
/* .local v0, "show":Z */
/* iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z */
/* if-nez v1, :cond_1 */
/* .line 1880 */
/* iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z */
if ( v1 != null) { // if-eqz v1, :cond_0
/* iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z */
if ( v1 != null) { // if-eqz v1, :cond_0
/* .line 1881 */
int v0 = 1; // const/4 v0, 0x1
/* .line 1882 */
(( android.support.v4.app.Fragment ) p0 ).onPrepareOptionsMenu ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V
/* .line 1884 */
} // :cond_0
v1 = this.mChildFragmentManager;
if ( v1 != null) { // if-eqz v1, :cond_1
/* .line 1885 */
v1 = this.mChildFragmentManager;
v1 = (( android.support.v4.app.FragmentManagerImpl ) v1 ).dispatchPrepareOptionsMenu ( p1 ); // invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
/* or-int/2addr v0, v1 */
/* .line 1888 */
} // :cond_1
} // .end method
void performReallyStop ( ) {
/* .locals 4 */
/* .prologue */
int v3 = 0; // const/4 v3, 0x0
/* .line 1967 */
v0 = this.mChildFragmentManager;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 1968 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchReallyStop ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchReallyStop()V
/* .line 1970 */
} // :cond_0
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z */
if ( v0 != null) { // if-eqz v0, :cond_2
/* .line 1971 */
/* iput-boolean v3, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z */
/* .line 1972 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z */
/* if-nez v0, :cond_1 */
/* .line 1973 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z */
/* .line 1974 */
v0 = this.mActivity;
v1 = this.mWho;
/* iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z */
(( android.support.v4.app.FragmentActivity ) v0 ).getLoaderManager ( v1, v2, v3 ); // invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
this.mLoaderManager = v0;
/* .line 1976 */
} // :cond_1
v0 = this.mLoaderManager;
if ( v0 != null) { // if-eqz v0, :cond_2
/* .line 1977 */
v0 = this.mActivity;
/* iget-boolean v0, v0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z */
/* if-nez v0, :cond_3 */
/* .line 1978 */
v0 = this.mLoaderManager;
(( android.support.v4.app.LoaderManagerImpl ) v0 ).doStop ( ); // invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStop()V
/* .line 1984 */
} // :cond_2
} // :goto_0
return;
/* .line 1980 */
} // :cond_3
v0 = this.mLoaderManager;
(( android.support.v4.app.LoaderManagerImpl ) v0 ).doRetain ( ); // invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V
} // .end method
void performResume ( ) {
/* .locals 3 */
/* .prologue */
/* .line 1824 */
v0 = this.mChildFragmentManager;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 1825 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).noteStateNotSaved ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V
/* .line 1826 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).execPendingActions ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z
/* .line 1828 */
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
/* iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 1829 */
(( android.support.v4.app.Fragment ) p0 ).onResume ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onResume()V
/* .line 1830 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* if-nez v0, :cond_1 */
/* .line 1831 */
/* new-instance v0, Landroid/support/v4/app/SuperNotCalledException; */
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
final String v2 = "Fragment "; // const-string v2, "Fragment "
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).append ( p0 ); // invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
final String v2 = " did not call through to super.onResume()"; // const-string v2, " did not call through to super.onResume()"
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 1834 */
} // :cond_1
v0 = this.mChildFragmentManager;
if ( v0 != null) { // if-eqz v0, :cond_2
/* .line 1835 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchResume ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V
/* .line 1836 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).execPendingActions ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z
/* .line 1838 */
} // :cond_2
return;
} // .end method
void performSaveInstanceState ( android.os.Bundle p0 ) {
/* .locals 2 */
/* .param p1, "outState" # Landroid/os/Bundle; */
/* .prologue */
/* .line 1933 */
(( android.support.v4.app.Fragment ) p0 ).onSaveInstanceState ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V
/* .line 1934 */
v1 = this.mChildFragmentManager;
if ( v1 != null) { // if-eqz v1, :cond_0
/* .line 1935 */
v1 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v1 ).saveAllState ( ); // invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;
/* .line 1936 */
/* .local v0, "p":Landroid/os/Parcelable; */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 1937 */
final String v1 = "android:support:fragments"; // const-string v1, "android:support:fragments"
(( android.os.Bundle ) p1 ).putParcelable ( v1, v0 ); // invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
/* .line 1940 */
} // .end local v0 # "p":Landroid/os/Parcelable;
} // :cond_0
return;
} // .end method
void performStart ( ) {
/* .locals 3 */
/* .prologue */
/* .line 1805 */
v0 = this.mChildFragmentManager;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 1806 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).noteStateNotSaved ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V
/* .line 1807 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).execPendingActions ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z
/* .line 1809 */
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
/* iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 1810 */
(( android.support.v4.app.Fragment ) p0 ).onStart ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onStart()V
/* .line 1811 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* if-nez v0, :cond_1 */
/* .line 1812 */
/* new-instance v0, Landroid/support/v4/app/SuperNotCalledException; */
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
final String v2 = "Fragment "; // const-string v2, "Fragment "
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).append ( p0 ); // invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
final String v2 = " did not call through to super.onStart()"; // const-string v2, " did not call through to super.onStart()"
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 1815 */
} // :cond_1
v0 = this.mChildFragmentManager;
if ( v0 != null) { // if-eqz v0, :cond_2
/* .line 1816 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchStart ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V
/* .line 1818 */
} // :cond_2
v0 = this.mLoaderManager;
if ( v0 != null) { // if-eqz v0, :cond_3
/* .line 1819 */
v0 = this.mLoaderManager;
(( android.support.v4.app.LoaderManagerImpl ) v0 ).doReportStart ( ); // invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doReportStart()V
/* .line 1821 */
} // :cond_3
return;
} // .end method
void performStop ( ) {
/* .locals 3 */
/* .prologue */
/* .line 1955 */
v0 = this.mChildFragmentManager;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 1956 */
v0 = this.mChildFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchStop ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStop()V
/* .line 1958 */
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
/* iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 1959 */
(( android.support.v4.app.Fragment ) p0 ).onStop ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onStop()V
/* .line 1960 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* if-nez v0, :cond_1 */
/* .line 1961 */
/* new-instance v0, Landroid/support/v4/app/SuperNotCalledException; */
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
final String v2 = "Fragment "; // const-string v2, "Fragment "
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).append ( p0 ); // invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
final String v2 = " did not call through to super.onStop()"; // const-string v2, " did not call through to super.onStop()"
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 1964 */
} // :cond_1
return;
} // .end method
public void registerForContextMenu ( android.view.View p0 ) {
/* .locals 0 */
/* .param p1, "view" # Landroid/view/View; */
/* .prologue */
/* .line 1351 */
(( android.view.View ) p1 ).setOnCreateContextMenuListener ( p0 ); // invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
/* .line 1352 */
return;
} // .end method
final void restoreViewState ( android.os.Bundle p0 ) {
/* .locals 3 */
/* .param p1, "savedInstanceState" # Landroid/os/Bundle; */
/* .prologue */
/* .line 464 */
v0 = this.mSavedViewState;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 465 */
v0 = this.mInnerView;
v1 = this.mSavedViewState;
(( android.view.View ) v0 ).restoreHierarchyState ( v1 ); // invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V
/* .line 466 */
int v0 = 0; // const/4 v0, 0x0
this.mSavedViewState = v0;
/* .line 468 */
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
/* iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* .line 469 */
(( android.support.v4.app.Fragment ) p0 ).onViewStateRestored ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V
/* .line 470 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z */
/* if-nez v0, :cond_1 */
/* .line 471 */
/* new-instance v0, Landroid/support/v4/app/SuperNotCalledException; */
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
final String v2 = "Fragment "; // const-string v2, "Fragment "
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).append ( p0 ); // invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
final String v2 = " did not call through to super.onViewStateRestored()"; // const-string v2, " did not call through to super.onViewStateRestored()"
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 474 */
} // :cond_1
return;
} // .end method
public void setAllowEnterTransitionOverlap ( Boolean p0 ) {
/* .locals 1 */
/* .param p1, "allow" # Z */
/* .prologue */
/* .line 1605 */
java.lang.Boolean .valueOf ( p1 );
this.mAllowEnterTransitionOverlap = v0;
/* .line 1606 */
return;
} // .end method
public void setAllowReturnTransitionOverlap ( Boolean p0 ) {
/* .locals 1 */
/* .param p1, "allow" # Z */
/* .prologue */
/* .line 1629 */
java.lang.Boolean .valueOf ( p1 );
this.mAllowReturnTransitionOverlap = v0;
/* .line 1630 */
return;
} // .end method
public void setArguments ( android.os.Bundle p0 ) {
/* .locals 2 */
/* .param p1, "args" # Landroid/os/Bundle; */
/* .prologue */
/* .line 547 */
/* iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I */
/* if-ltz v0, :cond_0 */
/* .line 548 */
/* new-instance v0, Ljava/lang/IllegalStateException; */
final String v1 = "Fragment already active"; // const-string v1, "Fragment already active"
/* invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 550 */
} // :cond_0
this.mArguments = p1;
/* .line 551 */
return;
} // .end method
public void setEnterSharedElementCallback ( android.support.v4.app.SharedElementCallback p0 ) {
/* .locals 0 */
/* .param p1, "callback" # Landroid/support/v4/app/SharedElementCallback; */
/* .prologue */
/* .line 1394 */
this.mEnterTransitionCallback = p1;
/* .line 1395 */
return;
} // .end method
public void setEnterTransition ( java.lang.Object p0 ) {
/* .locals 0 */
/* .param p1, "transition" # Ljava/lang/Object; */
/* .prologue */
/* .line 1419 */
this.mEnterTransition = p1;
/* .line 1420 */
return;
} // .end method
public void setExitSharedElementCallback ( android.support.v4.app.SharedElementCallback p0 ) {
/* .locals 0 */
/* .param p1, "callback" # Landroid/support/v4/app/SharedElementCallback; */
/* .prologue */
/* .line 1405 */
this.mExitTransitionCallback = p1;
/* .line 1406 */
return;
} // .end method
public void setExitTransition ( java.lang.Object p0 ) {
/* .locals 0 */
/* .param p1, "transition" # Ljava/lang/Object; */
/* .prologue */
/* .line 1484 */
this.mExitTransition = p1;
/* .line 1485 */
return;
} // .end method
public void setHasOptionsMenu ( Boolean p0 ) {
/* .locals 1 */
/* .param p1, "hasMenu" # Z */
/* .prologue */
/* .line 818 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z */
/* if-eq v0, p1, :cond_0 */
/* .line 819 */
/* iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z */
/* .line 820 */
v0 = (( android.support.v4.app.Fragment ) p0 ).isAdded ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z
if ( v0 != null) { // if-eqz v0, :cond_0
v0 = (( android.support.v4.app.Fragment ) p0 ).isHidden ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z
/* if-nez v0, :cond_0 */
/* .line 821 */
v0 = this.mActivity;
(( android.support.v4.app.FragmentActivity ) v0 ).supportInvalidateOptionsMenu ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V
/* .line 824 */
} // :cond_0
return;
} // .end method
final void setIndex ( Integer p0, android.support.v4.app.Fragment p1 ) {
/* .locals 2 */
/* .param p1, "index" # I */
/* .param p2, "parent" # Landroid/support/v4/app/Fragment; */
/* .prologue */
/* .line 477 */
/* iput p1, p0, Landroid/support/v4/app/Fragment;->mIndex:I */
/* .line 478 */
if ( p2 != null) { // if-eqz p2, :cond_0
/* .line 479 */
/* new-instance v0, Ljava/lang/StringBuilder; */
/* invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V */
v1 = this.mWho;
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v1 = ":"; // const-string v1, ":"
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I */
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v0 ).toString ( ); // invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
this.mWho = v0;
/* .line 483 */
} // :goto_0
return;
/* .line 481 */
} // :cond_0
/* new-instance v0, Ljava/lang/StringBuilder; */
/* invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V */
final String v1 = "android:fragment:"; // const-string v1, "android:fragment:"
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I */
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v0 ).toString ( ); // invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
this.mWho = v0;
} // .end method
public void setInitialSavedState ( android.support.v4.app.Fragment$SavedState p0 ) {
/* .locals 2 */
/* .param p1, "state" # Landroid/support/v4/app/Fragment$SavedState; */
/* .prologue */
/* .line 570 */
/* iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I */
/* if-ltz v0, :cond_0 */
/* .line 571 */
/* new-instance v0, Ljava/lang/IllegalStateException; */
final String v1 = "Fragment already active"; // const-string v1, "Fragment already active"
/* invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 573 */
} // :cond_0
if ( p1 != null) { // if-eqz p1, :cond_1
v0 = this.mState;
if ( v0 != null) { // if-eqz v0, :cond_1
v0 = this.mState;
} // :goto_0
this.mSavedFragmentState = v0;
/* .line 575 */
return;
/* .line 573 */
} // :cond_1
int v0 = 0; // const/4 v0, 0x0
} // .end method
public void setMenuVisibility ( Boolean p0 ) {
/* .locals 1 */
/* .param p1, "menuVisible" # Z */
/* .prologue */
/* .line 836 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z */
/* if-eq v0, p1, :cond_0 */
/* .line 837 */
/* iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z */
/* .line 838 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z */
if ( v0 != null) { // if-eqz v0, :cond_0
v0 = (( android.support.v4.app.Fragment ) p0 ).isAdded ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z
if ( v0 != null) { // if-eqz v0, :cond_0
v0 = (( android.support.v4.app.Fragment ) p0 ).isHidden ( ); // invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z
/* if-nez v0, :cond_0 */
/* .line 839 */
v0 = this.mActivity;
(( android.support.v4.app.FragmentActivity ) v0 ).supportInvalidateOptionsMenu ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V
/* .line 842 */
} // :cond_0
return;
} // .end method
public void setReenterTransition ( java.lang.Object p0 ) {
/* .locals 0 */
/* .param p1, "transition" # Ljava/lang/Object; */
/* .prologue */
/* .line 1517 */
this.mReenterTransition = p1;
/* .line 1518 */
return;
} // .end method
public void setRetainInstance ( Boolean p0 ) {
/* .locals 2 */
/* .param p1, "retain" # Z */
/* .prologue */
/* .line 799 */
if ( p1 != null) { // if-eqz p1, :cond_0
v0 = this.mParentFragment;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 800 */
/* new-instance v0, Ljava/lang/IllegalStateException; */
final String v1 = "Can\'t retain fragements that are nested in other fragments"; // const-string v1, "Can\'t retain fragements that are nested in other fragments"
/* invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 803 */
} // :cond_0
/* iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z */
/* .line 804 */
return;
} // .end method
public void setReturnTransition ( java.lang.Object p0 ) {
/* .locals 0 */
/* .param p1, "transition" # Ljava/lang/Object; */
/* .prologue */
/* .line 1450 */
this.mReturnTransition = p1;
/* .line 1451 */
return;
} // .end method
public void setSharedElementEnterTransition ( java.lang.Object p0 ) {
/* .locals 0 */
/* .param p1, "transition" # Ljava/lang/Object; */
/* .prologue */
/* .line 1547 */
this.mSharedElementEnterTransition = p1;
/* .line 1548 */
return;
} // .end method
public void setSharedElementReturnTransition ( java.lang.Object p0 ) {
/* .locals 0 */
/* .param p1, "transition" # Ljava/lang/Object; */
/* .prologue */
/* .line 1576 */
this.mSharedElementReturnTransition = p1;
/* .line 1577 */
return;
} // .end method
public void setTargetFragment ( android.support.v4.app.Fragment p0, Integer p1 ) {
/* .locals 0 */
/* .param p1, "fragment" # Landroid/support/v4/app/Fragment; */
/* .param p2, "requestCode" # I */
/* .prologue */
/* .line 589 */
this.mTarget = p1;
/* .line 590 */
/* iput p2, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I */
/* .line 591 */
return;
} // .end method
public void setUserVisibleHint ( Boolean p0 ) {
/* .locals 2 */
/* .param p1, "isVisibleToUser" # Z */
/* .prologue */
/* .line 858 */
/* iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z */
/* if-nez v0, :cond_0 */
if ( p1 != null) { // if-eqz p1, :cond_0
/* iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I */
int v1 = 4; // const/4 v1, 0x4
/* if-ge v0, v1, :cond_0 */
/* .line 859 */
v0 = this.mFragmentManager;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).performPendingDeferredStart ( p0 ); // invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V
/* .line 861 */
} // :cond_0
/* iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z */
/* .line 862 */
/* if-nez p1, :cond_1 */
int v0 = 1; // const/4 v0, 0x1
} // :goto_0
/* iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDeferStart:Z */
/* .line 863 */
return;
/* .line 862 */
} // :cond_1
int v0 = 0; // const/4 v0, 0x0
} // .end method
public void startActivity ( android.content.Intent p0 ) {
/* .locals 3 */
/* .param p1, "intent" # Landroid/content/Intent; */
/* .prologue */
/* .line 893 */
v0 = this.mActivity;
/* if-nez v0, :cond_0 */
/* .line 894 */
/* new-instance v0, Ljava/lang/IllegalStateException; */
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
final String v2 = "Fragment "; // const-string v2, "Fragment "
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).append ( p0 ); // invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
final String v2 = " not attached to Activity"; // const-string v2, " not attached to Activity"
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 896 */
} // :cond_0
v0 = this.mActivity;
int v1 = -1; // const/4 v1, -0x1
(( android.support.v4.app.FragmentActivity ) v0 ).startActivityFromFragment ( p0, p1, v1 ); // invoke-virtual {v0, p0, p1, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
/* .line 897 */
return;
} // .end method
public void startActivityForResult ( android.content.Intent p0, Integer p1 ) {
/* .locals 3 */
/* .param p1, "intent" # Landroid/content/Intent; */
/* .param p2, "requestCode" # I */
/* .prologue */
/* .line 904 */
v0 = this.mActivity;
/* if-nez v0, :cond_0 */
/* .line 905 */
/* new-instance v0, Ljava/lang/IllegalStateException; */
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
final String v2 = "Fragment "; // const-string v2, "Fragment "
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).append ( p0 ); // invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
final String v2 = " not attached to Activity"; // const-string v2, " not attached to Activity"
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 907 */
} // :cond_0
v0 = this.mActivity;
(( android.support.v4.app.FragmentActivity ) v0 ).startActivityFromFragment ( p0, p1, p2 ); // invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
/* .line 908 */
return;
} // .end method
public java.lang.String toString ( ) {
/* .locals 2 */
/* .prologue */
/* .line 505 */
/* new-instance v0, Ljava/lang/StringBuilder; */
/* const/16 v1, 0x80 */
/* invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V */
/* .line 506 */
/* .local v0, "sb":Ljava/lang/StringBuilder; */
android.support.v4.util.DebugUtils .buildShortClassTag ( p0,v0 );
/* .line 507 */
/* iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I */
/* if-ltz v1, :cond_0 */
/* .line 508 */
final String v1 = " #"; // const-string v1, " #"
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 509 */
/* iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I */
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
/* .line 511 */
} // :cond_0
/* iget v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I */
if ( v1 != null) { // if-eqz v1, :cond_1
/* .line 512 */
final String v1 = " id=0x"; // const-string v1, " id=0x"
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 513 */
/* iget v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I */
java.lang.Integer .toHexString ( v1 );
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 515 */
} // :cond_1
v1 = this.mTag;
if ( v1 != null) { // if-eqz v1, :cond_2
/* .line 516 */
final String v1 = " "; // const-string v1, " "
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 517 */
v1 = this.mTag;
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 519 */
} // :cond_2
/* const/16 v1, 0x7d */
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 520 */
(( java.lang.StringBuilder ) v0 ).toString ( ); // invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
} // .end method
public void unregisterForContextMenu ( android.view.View p0 ) {
/* .locals 1 */
/* .param p1, "view" # Landroid/view/View; */
/* .prologue */
/* .line 1362 */
int v0 = 0; // const/4 v0, 0x0
(( android.view.View ) p1 ).setOnCreateContextMenuListener ( v0 ); // invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
/* .line 1363 */
return;
} // .end method
