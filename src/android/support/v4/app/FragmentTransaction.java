public abstract class android.support.v4.app.FragmentTransaction {
	 /* .source "FragmentTransaction.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/FragmentTransaction$Transit; */
	 /* } */
} // .end annotation
/* # static fields */
public static final Integer TRANSIT_ENTER_MASK;
public static final Integer TRANSIT_EXIT_MASK;
public static final Integer TRANSIT_FRAGMENT_CLOSE;
public static final Integer TRANSIT_FRAGMENT_FADE;
public static final Integer TRANSIT_FRAGMENT_OPEN;
public static final Integer TRANSIT_NONE;
public static final Integer TRANSIT_UNSET;
/* # direct methods */
public android.support.v4.app.FragmentTransaction ( ) {
	 /* .locals 0 */
	 /* .prologue */
	 /* .line 38 */
	 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
	 /* .line 165 */
	 return;
} // .end method
/* # virtual methods */
public abstract android.support.v4.app.FragmentTransaction add ( Integer p0, android.support.v4.app.Fragment p1 ) {
} // .end method
public abstract android.support.v4.app.FragmentTransaction add ( Integer p0, android.support.v4.app.Fragment p1, java.lang.String p2 ) {
	 /* .param p3 # Ljava/lang/String; */
	 /* .annotation build Landroid/support/annotation/Nullable; */
} // .end annotation
} // .end param
} // .end method
public abstract android.support.v4.app.FragmentTransaction add ( android.support.v4.app.Fragment p0, java.lang.String p1 ) {
} // .end method
public abstract android.support.v4.app.FragmentTransaction addSharedElement ( android.view.View p0, java.lang.String p1 ) {
} // .end method
public abstract android.support.v4.app.FragmentTransaction addToBackStack ( java.lang.String p0 ) {
/* .param p1 # Ljava/lang/String; */
/* .annotation build Landroid/support/annotation/Nullable; */
} // .end annotation
} // .end param
} // .end method
public abstract android.support.v4.app.FragmentTransaction attach ( android.support.v4.app.Fragment p0 ) {
} // .end method
public abstract Integer commit ( ) {
} // .end method
public abstract Integer commitAllowingStateLoss ( ) {
} // .end method
public abstract android.support.v4.app.FragmentTransaction detach ( android.support.v4.app.Fragment p0 ) {
} // .end method
public abstract android.support.v4.app.FragmentTransaction disallowAddToBackStack ( ) {
} // .end method
public abstract android.support.v4.app.FragmentTransaction hide ( android.support.v4.app.Fragment p0 ) {
} // .end method
public abstract Boolean isAddToBackStackAllowed ( ) {
} // .end method
public abstract Boolean isEmpty ( ) {
} // .end method
public abstract android.support.v4.app.FragmentTransaction remove ( android.support.v4.app.Fragment p0 ) {
} // .end method
public abstract android.support.v4.app.FragmentTransaction replace ( Integer p0, android.support.v4.app.Fragment p1 ) {
} // .end method
public abstract android.support.v4.app.FragmentTransaction replace ( Integer p0, android.support.v4.app.Fragment p1, java.lang.String p2 ) {
/* .param p3 # Ljava/lang/String; */
/* .annotation build Landroid/support/annotation/Nullable; */
} // .end annotation
} // .end param
} // .end method
public abstract android.support.v4.app.FragmentTransaction setBreadCrumbShortTitle ( Integer p0 ) {
} // .end method
public abstract android.support.v4.app.FragmentTransaction setBreadCrumbShortTitle ( java.lang.CharSequence p0 ) {
} // .end method
public abstract android.support.v4.app.FragmentTransaction setBreadCrumbTitle ( Integer p0 ) {
} // .end method
public abstract android.support.v4.app.FragmentTransaction setBreadCrumbTitle ( java.lang.CharSequence p0 ) {
} // .end method
public abstract android.support.v4.app.FragmentTransaction setCustomAnimations ( Integer p0, Integer p1 ) {
} // .end method
public abstract android.support.v4.app.FragmentTransaction setCustomAnimations ( Integer p0, Integer p1, Integer p2, Integer p3 ) {
} // .end method
public abstract android.support.v4.app.FragmentTransaction setTransition ( Integer p0 ) {
} // .end method
public abstract android.support.v4.app.FragmentTransaction setTransitionStyle ( Integer p0 ) {
} // .end method
public abstract android.support.v4.app.FragmentTransaction show ( android.support.v4.app.Fragment p0 ) {
} // .end method
