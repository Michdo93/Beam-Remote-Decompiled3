public abstract class android.support.v4.app.FragmentPagerAdapter extends android.support.v4.view.PagerAdapter {
	 /* .source "FragmentPagerAdapter.java" */
	 /* # static fields */
	 private static final Boolean DEBUG;
	 private static final java.lang.String TAG;
	 /* # instance fields */
	 private android.support.v4.app.FragmentTransaction mCurTransaction;
	 private android.support.v4.app.Fragment mCurrentPrimaryItem;
	 private final android.support.v4.app.FragmentManager mFragmentManager;
	 /* # direct methods */
	 public android.support.v4.app.FragmentPagerAdapter ( ) {
		 /* .locals 1 */
		 /* .param p1, "fm" # Landroid/support/v4/app/FragmentManager; */
		 /* .prologue */
		 int v0 = 0; // const/4 v0, 0x0
		 /* .line 69 */
		 /* invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V */
		 /* .line 66 */
		 this.mCurTransaction = v0;
		 /* .line 67 */
		 this.mCurrentPrimaryItem = v0;
		 /* .line 70 */
		 this.mFragmentManager = p1;
		 /* .line 71 */
		 return;
	 } // .end method
	 private static java.lang.String makeFragmentName ( Integer p0, Long p1 ) {
		 /* .locals 3 */
		 /* .param p0, "viewId" # I */
		 /* .param p1, "id" # J */
		 /* .prologue */
		 /* .line 173 */
		 /* new-instance v0, Ljava/lang/StringBuilder; */
		 /* invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V */
		 final String v1 = "android:switcher:"; // const-string v1, "android:switcher:"
		 (( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
		 (( java.lang.StringBuilder ) v0 ).append ( p0 ); // invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
		 final String v1 = ":"; // const-string v1, ":"
		 (( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
		 (( java.lang.StringBuilder ) v0 ).append ( p1, p2 ); // invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
		 (( java.lang.StringBuilder ) v0 ).toString ( ); // invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
	 } // .end method
	 /* # virtual methods */
	 public void destroyItem ( android.view.ViewGroup p0, Integer p1, java.lang.Object p2 ) {
		 /* .locals 1 */
		 /* .param p1, "container" # Landroid/view/ViewGroup; */
		 /* .param p2, "position" # I */
		 /* .param p3, "object" # Ljava/lang/Object; */
		 /* .prologue */
		 /* .line 112 */
		 v0 = this.mCurTransaction;
		 /* if-nez v0, :cond_0 */
		 /* .line 113 */
		 v0 = this.mFragmentManager;
		 (( android.support.v4.app.FragmentManager ) v0 ).beginTransaction ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
		 this.mCurTransaction = v0;
		 /* .line 117 */
	 } // :cond_0
	 v0 = this.mCurTransaction;
	 /* check-cast p3, Landroid/support/v4/app/Fragment; */
} // .end local p3 # "object":Ljava/lang/Object;
(( android.support.v4.app.FragmentTransaction ) v0 ).detach ( p3 ); // invoke-virtual {v0, p3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
/* .line 118 */
return;
} // .end method
public void finishUpdate ( android.view.ViewGroup p0 ) {
/* .locals 1 */
/* .param p1, "container" # Landroid/view/ViewGroup; */
/* .prologue */
/* .line 138 */
v0 = this.mCurTransaction;
if ( v0 != null) { // if-eqz v0, :cond_0
	 /* .line 139 */
	 v0 = this.mCurTransaction;
	 (( android.support.v4.app.FragmentTransaction ) v0 ).commitAllowingStateLoss ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
	 /* .line 140 */
	 int v0 = 0; // const/4 v0, 0x0
	 this.mCurTransaction = v0;
	 /* .line 141 */
	 v0 = this.mFragmentManager;
	 (( android.support.v4.app.FragmentManager ) v0 ).executePendingTransactions ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z
	 /* .line 143 */
} // :cond_0
return;
} // .end method
public abstract android.support.v4.app.Fragment getItem ( Integer p0 ) {
} // .end method
public Long getItemId ( Integer p0 ) {
/* .locals 2 */
/* .param p1, "position" # I */
/* .prologue */
/* .line 169 */
/* int-to-long v0, p1 */
/* return-wide v0 */
} // .end method
public java.lang.Object instantiateItem ( android.view.ViewGroup p0, Integer p1 ) {
/* .locals 8 */
/* .param p1, "container" # Landroid/view/ViewGroup; */
/* .param p2, "position" # I */
/* .prologue */
int v7 = 0; // const/4 v7, 0x0
/* .line 84 */
v4 = this.mCurTransaction;
/* if-nez v4, :cond_0 */
/* .line 85 */
v4 = this.mFragmentManager;
(( android.support.v4.app.FragmentManager ) v4 ).beginTransaction ( ); // invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
this.mCurTransaction = v4;
/* .line 88 */
} // :cond_0
(( android.support.v4.app.FragmentPagerAdapter ) p0 ).getItemId ( p2 ); // invoke-virtual {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->getItemId(I)J
/* move-result-wide v2 */
/* .line 91 */
/* .local v2, "itemId":J */
v4 = (( android.view.ViewGroup ) p1 ).getId ( ); // invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I
android.support.v4.app.FragmentPagerAdapter .makeFragmentName ( v4,v2,v3 );
/* .line 92 */
/* .local v1, "name":Ljava/lang/String; */
v4 = this.mFragmentManager;
(( android.support.v4.app.FragmentManager ) v4 ).findFragmentByTag ( v1 ); // invoke-virtual {v4, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
/* .line 93 */
/* .local v0, "fragment":Landroid/support/v4/app/Fragment; */
if ( v0 != null) { // if-eqz v0, :cond_2
/* .line 95 */
v4 = this.mCurTransaction;
(( android.support.v4.app.FragmentTransaction ) v4 ).attach ( v0 ); // invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
/* .line 102 */
} // :goto_0
v4 = this.mCurrentPrimaryItem;
/* if-eq v0, v4, :cond_1 */
/* .line 103 */
(( android.support.v4.app.Fragment ) v0 ).setMenuVisibility ( v7 ); // invoke-virtual {v0, v7}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V
/* .line 104 */
(( android.support.v4.app.Fragment ) v0 ).setUserVisibleHint ( v7 ); // invoke-virtual {v0, v7}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V
/* .line 107 */
} // :cond_1
/* .line 97 */
} // :cond_2
(( android.support.v4.app.FragmentPagerAdapter ) p0 ).getItem ( p2 ); // invoke-virtual {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;
/* .line 99 */
v4 = this.mCurTransaction;
v5 = (( android.view.ViewGroup ) p1 ).getId ( ); // invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I
v6 = (( android.view.ViewGroup ) p1 ).getId ( ); // invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I
android.support.v4.app.FragmentPagerAdapter .makeFragmentName ( v6,v2,v3 );
(( android.support.v4.app.FragmentTransaction ) v4 ).add ( v5, v0, v6 ); // invoke-virtual {v4, v5, v0, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
} // .end method
public Boolean isViewFromObject ( android.view.View p0, java.lang.Object p1 ) {
/* .locals 1 */
/* .param p1, "view" # Landroid/view/View; */
/* .param p2, "object" # Ljava/lang/Object; */
/* .prologue */
/* .line 147 */
/* check-cast p2, Landroid/support/v4/app/Fragment; */
} // .end local p2 # "object":Ljava/lang/Object;
(( android.support.v4.app.Fragment ) p2 ).getView ( ); // invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;
/* if-ne v0, p1, :cond_0 */
int v0 = 1; // const/4 v0, 0x1
} // :goto_0
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
} // .end method
public void restoreState ( android.os.Parcelable p0, java.lang.ClassLoader p1 ) {
/* .locals 0 */
/* .param p1, "state" # Landroid/os/Parcelable; */
/* .param p2, "loader" # Ljava/lang/ClassLoader; */
/* .prologue */
/* .line 157 */
return;
} // .end method
public android.os.Parcelable saveState ( ) {
/* .locals 1 */
/* .prologue */
/* .line 152 */
int v0 = 0; // const/4 v0, 0x0
} // .end method
public void setPrimaryItem ( android.view.ViewGroup p0, Integer p1, java.lang.Object p2 ) {
/* .locals 4 */
/* .param p1, "container" # Landroid/view/ViewGroup; */
/* .param p2, "position" # I */
/* .param p3, "object" # Ljava/lang/Object; */
/* .prologue */
int v3 = 1; // const/4 v3, 0x1
int v2 = 0; // const/4 v2, 0x0
/* .line 122 */
/* move-object v0, p3 */
/* check-cast v0, Landroid/support/v4/app/Fragment; */
/* .line 123 */
/* .local v0, "fragment":Landroid/support/v4/app/Fragment; */
v1 = this.mCurrentPrimaryItem;
/* if-eq v0, v1, :cond_2 */
/* .line 124 */
v1 = this.mCurrentPrimaryItem;
if ( v1 != null) { // if-eqz v1, :cond_0
/* .line 125 */
v1 = this.mCurrentPrimaryItem;
(( android.support.v4.app.Fragment ) v1 ).setMenuVisibility ( v2 ); // invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V
/* .line 126 */
v1 = this.mCurrentPrimaryItem;
(( android.support.v4.app.Fragment ) v1 ).setUserVisibleHint ( v2 ); // invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V
/* .line 128 */
} // :cond_0
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 129 */
(( android.support.v4.app.Fragment ) v0 ).setMenuVisibility ( v3 ); // invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V
/* .line 130 */
(( android.support.v4.app.Fragment ) v0 ).setUserVisibleHint ( v3 ); // invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V
/* .line 132 */
} // :cond_1
this.mCurrentPrimaryItem = v0;
/* .line 134 */
} // :cond_2
return;
} // .end method
public void startUpdate ( android.view.ViewGroup p0 ) {
/* .locals 0 */
/* .param p1, "container" # Landroid/view/ViewGroup; */
/* .prologue */
/* .line 80 */
return;
} // .end method
