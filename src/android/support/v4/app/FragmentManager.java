public abstract class android.support.v4.app.FragmentManager {
	 /* .source "FragmentManager.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;, */
	 /* Landroid/support/v4/app/FragmentManager$BackStackEntry; */
	 /* } */
} // .end annotation
/* # static fields */
public static final Integer POP_BACK_STACK_INCLUSIVE;
/* # direct methods */
public android.support.v4.app.FragmentManager ( ) {
	 /* .locals 0 */
	 /* .prologue */
	 /* .line 67 */
	 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
	 /* .line 124 */
	 return;
} // .end method
public static void enableDebugLogging ( Boolean p0 ) {
	 /* .locals 0 */
	 /* .param p0, "enabled" # Z */
	 /* .prologue */
	 /* .line 358 */
	 android.support.v4.app.FragmentManagerImpl.DEBUG = (p0!= 0);
	 /* .line 359 */
	 return;
} // .end method
/* # virtual methods */
public abstract void addOnBackStackChangedListener ( android.support.v4.app.FragmentManager$OnBackStackChangedListener p0 ) {
} // .end method
public abstract android.support.v4.app.FragmentTransaction beginTransaction ( ) {
} // .end method
public abstract void dump ( java.lang.String p0, java.io.FileDescriptor p1, java.io.PrintWriter p2, java.lang.String[] p3 ) {
} // .end method
public abstract Boolean executePendingTransactions ( ) {
} // .end method
public abstract android.support.v4.app.Fragment findFragmentById ( Integer p0 ) {
} // .end method
public abstract android.support.v4.app.Fragment findFragmentByTag ( java.lang.String p0 ) {
} // .end method
public abstract android.support.v4.app.FragmentManager$BackStackEntry getBackStackEntryAt ( Integer p0 ) {
} // .end method
public abstract Integer getBackStackEntryCount ( ) {
} // .end method
public abstract android.support.v4.app.Fragment getFragment ( android.os.Bundle p0, java.lang.String p1 ) {
} // .end method
public abstract java.util.List getFragments ( ) {
	 /* .annotation system Ldalvik/annotation/Signature; */
	 /* value = { */
	 /* "()", */
	 /* "Ljava/util/List", */
	 /* "<", */
	 /* "Landroid/support/v4/app/Fragment;", */
	 /* ">;" */
	 /* } */
} // .end annotation
} // .end method
public abstract Boolean isDestroyed ( ) {
} // .end method
public android.support.v4.app.FragmentTransaction openTransaction ( ) {
/* .locals 1 */
/* .annotation runtime Ljava/lang/Deprecated; */
} // .end annotation
/* .prologue */
/* .line 149 */
(( android.support.v4.app.FragmentManager ) p0 ).beginTransaction ( ); // invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
} // .end method
public abstract void popBackStack ( ) {
} // .end method
public abstract void popBackStack ( Integer p0, Integer p1 ) {
} // .end method
public abstract void popBackStack ( java.lang.String p0, Integer p1 ) {
} // .end method
public abstract Boolean popBackStackImmediate ( ) {
} // .end method
public abstract Boolean popBackStackImmediate ( Integer p0, Integer p1 ) {
} // .end method
public abstract Boolean popBackStackImmediate ( java.lang.String p0, Integer p1 ) {
} // .end method
public abstract void putFragment ( android.os.Bundle p0, java.lang.String p1, android.support.v4.app.Fragment p2 ) {
} // .end method
public abstract void removeOnBackStackChangedListener ( android.support.v4.app.FragmentManager$OnBackStackChangedListener p0 ) {
} // .end method
public abstract android.support.v4.app.Fragment$SavedState saveFragmentInstanceState ( android.support.v4.app.Fragment p0 ) {
} // .end method
