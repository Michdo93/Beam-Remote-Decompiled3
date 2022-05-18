public abstract class android.support.v4.app.FragmentStatePagerAdapter extends android.support.v4.view.PagerAdapter {
	 /* .source "FragmentStatePagerAdapter.java" */
	 /* # static fields */
	 private static final Boolean DEBUG;
	 private static final java.lang.String TAG;
	 /* # instance fields */
	 private android.support.v4.app.FragmentTransaction mCurTransaction;
	 private android.support.v4.app.Fragment mCurrentPrimaryItem;
	 private final android.support.v4.app.FragmentManager mFragmentManager;
	 private java.util.ArrayList mFragments;
	 /* .annotation system Ldalvik/annotation/Signature; */
	 /* value = { */
	 /* "Ljava/util/ArrayList", */
	 /* "<", */
	 /* "Landroid/support/v4/app/Fragment;", */
	 /* ">;" */
	 /* } */
} // .end annotation
} // .end field
private java.util.ArrayList mSavedState;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/support/v4/app/Fragment$SavedState;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
/* # direct methods */
public android.support.v4.app.FragmentStatePagerAdapter ( ) {
/* .locals 2 */
/* .param p1, "fm" # Landroid/support/v4/app/FragmentManager; */
/* .prologue */
int v1 = 0; // const/4 v1, 0x0
/* .line 75 */
/* invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V */
/* .line 69 */
this.mCurTransaction = v1;
/* .line 71 */
/* new-instance v0, Ljava/util/ArrayList; */
/* invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V */
this.mSavedState = v0;
/* .line 72 */
/* new-instance v0, Ljava/util/ArrayList; */
/* invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V */
this.mFragments = v0;
/* .line 73 */
this.mCurrentPrimaryItem = v1;
/* .line 76 */
this.mFragmentManager = p1;
/* .line 77 */
return;
} // .end method
/* # virtual methods */
public void destroyItem ( android.view.ViewGroup p0, Integer p1, java.lang.Object p2 ) {
/* .locals 4 */
/* .param p1, "container" # Landroid/view/ViewGroup; */
/* .param p2, "position" # I */
/* .param p3, "object" # Ljava/lang/Object; */
/* .prologue */
int v3 = 0; // const/4 v3, 0x0
/* .line 126 */
/* move-object v0, p3 */
/* check-cast v0, Landroid/support/v4/app/Fragment; */
/* .line 128 */
/* .local v0, "fragment":Landroid/support/v4/app/Fragment; */
v1 = this.mCurTransaction;
/* if-nez v1, :cond_0 */
/* .line 129 */
v1 = this.mFragmentManager;
(( android.support.v4.app.FragmentManager ) v1 ).beginTransaction ( ); // invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
this.mCurTransaction = v1;
/* .line 133 */
} // :cond_0
} // :goto_0
v1 = this.mSavedState;
v1 = (( java.util.ArrayList ) v1 ).size ( ); // invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
/* if-gt v1, p2, :cond_1 */
/* .line 134 */
v1 = this.mSavedState;
(( java.util.ArrayList ) v1 ).add ( v3 ); // invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
/* .line 136 */
} // :cond_1
v1 = this.mSavedState;
v2 = this.mFragmentManager;
(( android.support.v4.app.FragmentManager ) v2 ).saveFragmentInstanceState ( v0 ); // invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentManager;->saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
(( java.util.ArrayList ) v1 ).set ( p2, v2 ); // invoke-virtual {v1, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
/* .line 137 */
v1 = this.mFragments;
(( java.util.ArrayList ) v1 ).set ( p2, v3 ); // invoke-virtual {v1, p2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
/* .line 139 */
v1 = this.mCurTransaction;
(( android.support.v4.app.FragmentTransaction ) v1 ).remove ( v0 ); // invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
/* .line 140 */
return;
} // .end method
public void finishUpdate ( android.view.ViewGroup p0 ) {
/* .locals 1 */
/* .param p1, "container" # Landroid/view/ViewGroup; */
/* .prologue */
/* .line 160 */
v0 = this.mCurTransaction;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 161 */
v0 = this.mCurTransaction;
(( android.support.v4.app.FragmentTransaction ) v0 ).commitAllowingStateLoss ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
/* .line 162 */
int v0 = 0; // const/4 v0, 0x0
this.mCurTransaction = v0;
/* .line 163 */
v0 = this.mFragmentManager;
(( android.support.v4.app.FragmentManager ) v0 ).executePendingTransactions ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z
/* .line 165 */
} // :cond_0
return;
} // .end method
public abstract android.support.v4.app.Fragment getItem ( Integer p0 ) {
} // .end method
public java.lang.Object instantiateItem ( android.view.ViewGroup p0, Integer p1 ) {
/* .locals 6 */
/* .param p1, "container" # Landroid/view/ViewGroup; */
/* .param p2, "position" # I */
/* .prologue */
int v5 = 0; // const/4 v5, 0x0
/* .line 94 */
v3 = this.mFragments;
v3 = (( java.util.ArrayList ) v3 ).size ( ); // invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
/* if-le v3, p2, :cond_0 */
/* .line 95 */
v3 = this.mFragments;
(( java.util.ArrayList ) v3 ).get ( p2 ); // invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v0, Landroid/support/v4/app/Fragment; */
/* .line 96 */
/* .local v0, "f":Landroid/support/v4/app/Fragment; */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 121 */
} // .end local v0 # "f":Landroid/support/v4/app/Fragment;
} // :goto_0
/* .line 101 */
} // :cond_0
v3 = this.mCurTransaction;
/* if-nez v3, :cond_1 */
/* .line 102 */
v3 = this.mFragmentManager;
(( android.support.v4.app.FragmentManager ) v3 ).beginTransaction ( ); // invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
this.mCurTransaction = v3;
/* .line 105 */
} // :cond_1
(( android.support.v4.app.FragmentStatePagerAdapter ) p0 ).getItem ( p2 ); // invoke-virtual {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;
/* .line 107 */
/* .local v1, "fragment":Landroid/support/v4/app/Fragment; */
v3 = this.mSavedState;
v3 = (( java.util.ArrayList ) v3 ).size ( ); // invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
/* if-le v3, p2, :cond_2 */
/* .line 108 */
v3 = this.mSavedState;
(( java.util.ArrayList ) v3 ).get ( p2 ); // invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v2, Landroid/support/v4/app/Fragment$SavedState; */
/* .line 109 */
/* .local v2, "fss":Landroid/support/v4/app/Fragment$SavedState; */
if ( v2 != null) { // if-eqz v2, :cond_2
/* .line 110 */
(( android.support.v4.app.Fragment ) v1 ).setInitialSavedState ( v2 ); // invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V
/* .line 113 */
} // .end local v2 # "fss":Landroid/support/v4/app/Fragment$SavedState;
} // :cond_2
} // :goto_1
v3 = this.mFragments;
v3 = (( java.util.ArrayList ) v3 ).size ( ); // invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
/* if-gt v3, p2, :cond_3 */
/* .line 114 */
v3 = this.mFragments;
int v4 = 0; // const/4 v4, 0x0
(( java.util.ArrayList ) v3 ).add ( v4 ); // invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
/* .line 116 */
} // :cond_3
(( android.support.v4.app.Fragment ) v1 ).setMenuVisibility ( v5 ); // invoke-virtual {v1, v5}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V
/* .line 117 */
(( android.support.v4.app.Fragment ) v1 ).setUserVisibleHint ( v5 ); // invoke-virtual {v1, v5}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V
/* .line 118 */
v3 = this.mFragments;
(( java.util.ArrayList ) v3 ).set ( p2, v1 ); // invoke-virtual {v3, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
/* .line 119 */
v3 = this.mCurTransaction;
v4 = (( android.view.ViewGroup ) p1 ).getId ( ); // invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I
(( android.support.v4.app.FragmentTransaction ) v3 ).add ( v4, v1 ); // invoke-virtual {v3, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
/* move-object v0, v1 */
/* .line 121 */
} // .end method
public Boolean isViewFromObject ( android.view.View p0, java.lang.Object p1 ) {
/* .locals 1 */
/* .param p1, "view" # Landroid/view/View; */
/* .param p2, "object" # Ljava/lang/Object; */
/* .prologue */
/* .line 169 */
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
/* .locals 11 */
/* .param p1, "state" # Landroid/os/Parcelable; */
/* .param p2, "loader" # Ljava/lang/ClassLoader; */
/* .prologue */
/* .line 196 */
if ( p1 != null) { // if-eqz p1, :cond_4
/* move-object v0, p1 */
/* .line 197 */
/* check-cast v0, Landroid/os/Bundle; */
/* .line 198 */
/* .local v0, "bundle":Landroid/os/Bundle; */
(( android.os.Bundle ) v0 ).setClassLoader ( p2 ); // invoke-virtual {v0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
/* .line 199 */
final String v8 = "states"; // const-string v8, "states"
(( android.os.Bundle ) v0 ).getParcelableArray ( v8 ); // invoke-virtual {v0, v8}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
/* .line 200 */
/* .local v2, "fss":[Landroid/os/Parcelable; */
v8 = this.mSavedState;
(( java.util.ArrayList ) v8 ).clear ( ); // invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V
/* .line 201 */
v8 = this.mFragments;
(( java.util.ArrayList ) v8 ).clear ( ); // invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V
/* .line 202 */
if ( v2 != null) { // if-eqz v2, :cond_0
/* .line 203 */
int v3 = 0; // const/4 v3, 0x0
/* .local v3, "i":I */
} // :goto_0
/* array-length v8, v2 */
/* if-ge v3, v8, :cond_0 */
/* .line 204 */
v9 = this.mSavedState;
/* aget-object v8, v2, v3 */
/* check-cast v8, Landroid/support/v4/app/Fragment$SavedState; */
(( java.util.ArrayList ) v9 ).add ( v8 ); // invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
/* .line 203 */
/* add-int/lit8 v3, v3, 0x1 */
/* .line 207 */
} // .end local v3 # "i":I
} // :cond_0
(( android.os.Bundle ) v0 ).keySet ( ); // invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
/* .line 208 */
/* .local v7, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;" */
/* .local v4, "i$":Ljava/util/Iterator; */
} // :cond_1
v8 = } // :goto_1
if ( v8 != null) { // if-eqz v8, :cond_4
/* check-cast v6, Ljava/lang/String; */
/* .line 209 */
/* .local v6, "key":Ljava/lang/String; */
final String v8 = "f"; // const-string v8, "f"
v8 = (( java.lang.String ) v6 ).startsWith ( v8 ); // invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
if ( v8 != null) { // if-eqz v8, :cond_1
/* .line 210 */
int v8 = 1; // const/4 v8, 0x1
(( java.lang.String ) v6 ).substring ( v8 ); // invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;
v5 = java.lang.Integer .parseInt ( v8 );
/* .line 211 */
/* .local v5, "index":I */
v8 = this.mFragmentManager;
(( android.support.v4.app.FragmentManager ) v8 ).getFragment ( v0, v6 ); // invoke-virtual {v8, v0, v6}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
/* .line 212 */
/* .local v1, "f":Landroid/support/v4/app/Fragment; */
if ( v1 != null) { // if-eqz v1, :cond_3
/* .line 213 */
} // :goto_2
v8 = this.mFragments;
v8 = (( java.util.ArrayList ) v8 ).size ( ); // invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
/* if-gt v8, v5, :cond_2 */
/* .line 214 */
v8 = this.mFragments;
int v9 = 0; // const/4 v9, 0x0
(( java.util.ArrayList ) v8 ).add ( v9 ); // invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
/* .line 216 */
} // :cond_2
int v8 = 0; // const/4 v8, 0x0
(( android.support.v4.app.Fragment ) v1 ).setMenuVisibility ( v8 ); // invoke-virtual {v1, v8}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V
/* .line 217 */
v8 = this.mFragments;
(( java.util.ArrayList ) v8 ).set ( v5, v1 ); // invoke-virtual {v8, v5, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
/* .line 219 */
} // :cond_3
final String v8 = "FragmentStatePagerAdapter"; // const-string v8, "FragmentStatePagerAdapter"
/* new-instance v9, Ljava/lang/StringBuilder; */
/* invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V */
final String v10 = "Bad fragment at key "; // const-string v10, "Bad fragment at key "
(( java.lang.StringBuilder ) v9 ).append ( v10 ); // invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v9 ).append ( v6 ); // invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v9 ).toString ( ); // invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .w ( v8,v9 );
/* .line 224 */
} // .end local v0 # "bundle":Landroid/os/Bundle;
} // .end local v1 # "f":Landroid/support/v4/app/Fragment;
} // .end local v2 # "fss":[Landroid/os/Parcelable;
} // .end local v4 # "i$":Ljava/util/Iterator;
} // .end local v5 # "index":I
} // .end local v6 # "key":Ljava/lang/String;
} // .end local v7 # "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
} // :cond_4
return;
} // .end method
public android.os.Parcelable saveState ( ) {
/* .locals 7 */
/* .prologue */
/* .line 174 */
int v4 = 0; // const/4 v4, 0x0
/* .line 175 */
/* .local v4, "state":Landroid/os/Bundle; */
v5 = this.mSavedState;
v5 = (( java.util.ArrayList ) v5 ).size ( ); // invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
/* if-lez v5, :cond_0 */
/* .line 176 */
/* new-instance v4, Landroid/os/Bundle; */
} // .end local v4 # "state":Landroid/os/Bundle;
/* invoke-direct {v4}, Landroid/os/Bundle;-><init>()V */
/* .line 177 */
/* .restart local v4 # "state":Landroid/os/Bundle; */
v5 = this.mSavedState;
v5 = (( java.util.ArrayList ) v5 ).size ( ); // invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
/* new-array v1, v5, [Landroid/support/v4/app/Fragment$SavedState; */
/* .line 178 */
/* .local v1, "fss":[Landroid/support/v4/app/Fragment$SavedState; */
v5 = this.mSavedState;
(( java.util.ArrayList ) v5 ).toArray ( v1 ); // invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
/* .line 179 */
final String v5 = "states"; // const-string v5, "states"
(( android.os.Bundle ) v4 ).putParcelableArray ( v5, v1 ); // invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
/* .line 181 */
} // .end local v1 # "fss":[Landroid/support/v4/app/Fragment$SavedState;
} // :cond_0
int v2 = 0; // const/4 v2, 0x0
/* .local v2, "i":I */
} // :goto_0
v5 = this.mFragments;
v5 = (( java.util.ArrayList ) v5 ).size ( ); // invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
/* if-ge v2, v5, :cond_3 */
/* .line 182 */
v5 = this.mFragments;
(( java.util.ArrayList ) v5 ).get ( v2 ); // invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v0, Landroid/support/v4/app/Fragment; */
/* .line 183 */
/* .local v0, "f":Landroid/support/v4/app/Fragment; */
if ( v0 != null) { // if-eqz v0, :cond_2
/* .line 184 */
/* if-nez v4, :cond_1 */
/* .line 185 */
/* new-instance v4, Landroid/os/Bundle; */
} // .end local v4 # "state":Landroid/os/Bundle;
/* invoke-direct {v4}, Landroid/os/Bundle;-><init>()V */
/* .line 187 */
/* .restart local v4 # "state":Landroid/os/Bundle; */
} // :cond_1
/* new-instance v5, Ljava/lang/StringBuilder; */
/* invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V */
final String v6 = "f"; // const-string v6, "f"
(( java.lang.StringBuilder ) v5 ).append ( v6 ); // invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v5 ).append ( v2 ); // invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v5 ).toString ( ); // invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* .line 188 */
/* .local v3, "key":Ljava/lang/String; */
v5 = this.mFragmentManager;
(( android.support.v4.app.FragmentManager ) v5 ).putFragment ( v4, v3, v0 ); // invoke-virtual {v5, v4, v3, v0}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
/* .line 181 */
} // .end local v3 # "key":Ljava/lang/String;
} // :cond_2
/* add-int/lit8 v2, v2, 0x1 */
/* .line 191 */
} // .end local v0 # "f":Landroid/support/v4/app/Fragment;
} // :cond_3
} // .end method
public void setPrimaryItem ( android.view.ViewGroup p0, Integer p1, java.lang.Object p2 ) {
/* .locals 4 */
/* .param p1, "container" # Landroid/view/ViewGroup; */
/* .param p2, "position" # I */
/* .param p3, "object" # Ljava/lang/Object; */
/* .prologue */
int v3 = 1; // const/4 v3, 0x1
int v2 = 0; // const/4 v2, 0x0
/* .line 144 */
/* move-object v0, p3 */
/* check-cast v0, Landroid/support/v4/app/Fragment; */
/* .line 145 */
/* .local v0, "fragment":Landroid/support/v4/app/Fragment; */
v1 = this.mCurrentPrimaryItem;
/* if-eq v0, v1, :cond_2 */
/* .line 146 */
v1 = this.mCurrentPrimaryItem;
if ( v1 != null) { // if-eqz v1, :cond_0
/* .line 147 */
v1 = this.mCurrentPrimaryItem;
(( android.support.v4.app.Fragment ) v1 ).setMenuVisibility ( v2 ); // invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V
/* .line 148 */
v1 = this.mCurrentPrimaryItem;
(( android.support.v4.app.Fragment ) v1 ).setUserVisibleHint ( v2 ); // invoke-virtual {v1, v2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V
/* .line 150 */
} // :cond_0
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 151 */
(( android.support.v4.app.Fragment ) v0 ).setMenuVisibility ( v3 ); // invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V
/* .line 152 */
(( android.support.v4.app.Fragment ) v0 ).setUserVisibleHint ( v3 ); // invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V
/* .line 154 */
} // :cond_1
this.mCurrentPrimaryItem = v0;
/* .line 156 */
} // :cond_2
return;
} // .end method
public void startUpdate ( android.view.ViewGroup p0 ) {
/* .locals 0 */
/* .param p1, "container" # Landroid/view/ViewGroup; */
/* .prologue */
/* .line 86 */
return;
} // .end method
