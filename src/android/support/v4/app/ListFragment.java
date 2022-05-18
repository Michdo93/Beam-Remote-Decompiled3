public class android.support.v4.app.ListFragment extends android.support.v4.app.Fragment {
	 /* .source "ListFragment.java" */
	 /* # static fields */
	 static final Integer INTERNAL_EMPTY_ID;
	 static final Integer INTERNAL_LIST_CONTAINER_ID;
	 static final Integer INTERNAL_PROGRESS_CONTAINER_ID;
	 /* # instance fields */
	 android.widget.ListAdapter mAdapter;
	 java.lang.CharSequence mEmptyText;
	 android.view.View mEmptyView;
	 private final android.os.Handler mHandler;
	 android.widget.ListView mList;
	 android.view.View mListContainer;
	 Boolean mListShown;
	 private final android.widget.AdapterView$OnItemClickListener mOnClickListener;
	 android.view.View mProgressContainer;
	 private final java.lang.Runnable mRequestFocus;
	 android.widget.TextView mStandardEmptyView;
	 /* # direct methods */
	 public android.support.v4.app.ListFragment ( ) {
		 /* .locals 1 */
		 /* .prologue */
		 /* .line 71 */
		 /* invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V */
		 /* .line 47 */
		 /* new-instance v0, Landroid/os/Handler; */
		 /* invoke-direct {v0}, Landroid/os/Handler;-><init>()V */
		 this.mHandler = v0;
		 /* .line 49 */
		 /* new-instance v0, Landroid/support/v4/app/ListFragment$1; */
		 /* invoke-direct {v0, p0}, Landroid/support/v4/app/ListFragment$1;-><init>(Landroid/support/v4/app/ListFragment;)V */
		 this.mRequestFocus = v0;
		 /* .line 55 */
		 /* new-instance v0, Landroid/support/v4/app/ListFragment$2; */
		 /* invoke-direct {v0, p0}, Landroid/support/v4/app/ListFragment$2;-><init>(Landroid/support/v4/app/ListFragment;)V */
		 this.mOnClickListener = v0;
		 /* .line 72 */
		 return;
	 } // .end method
	 private void ensureList ( ) {
		 /* .locals 6 */
		 /* .prologue */
		 int v5 = 0; // const/4 v5, 0x0
		 /* .line 323 */
		 v3 = this.mList;
		 if ( v3 != null) { // if-eqz v3, :cond_0
			 /* .line 374 */
		 } // :goto_0
		 return;
		 /* .line 326 */
	 } // :cond_0
	 (( android.support.v4.app.ListFragment ) p0 ).getView ( ); // invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getView()Landroid/view/View;
	 /* .line 327 */
	 /* .local v2, "root":Landroid/view/View; */
	 /* if-nez v2, :cond_1 */
	 /* .line 328 */
	 /* new-instance v3, Ljava/lang/IllegalStateException; */
	 final String v4 = "Content view not yet created"; // const-string v4, "Content view not yet created"
	 /* invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
	 /* throw v3 */
	 /* .line 330 */
} // :cond_1
/* instance-of v3, v2, Landroid/widget/ListView; */
if ( v3 != null) { // if-eqz v3, :cond_4
	 /* .line 331 */
	 /* check-cast v2, Landroid/widget/ListView; */
} // .end local v2 # "root":Landroid/view/View;
this.mList = v2;
/* .line 360 */
} // :cond_2
} // :goto_1
int v3 = 1; // const/4 v3, 0x1
/* iput-boolean v3, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z */
/* .line 361 */
v3 = this.mList;
v4 = this.mOnClickListener;
(( android.widget.ListView ) v3 ).setOnItemClickListener ( v4 ); // invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
/* .line 362 */
v3 = this.mAdapter;
if ( v3 != null) { // if-eqz v3, :cond_9
/* .line 363 */
v0 = this.mAdapter;
/* .line 364 */
/* .local v0, "adapter":Landroid/widget/ListAdapter; */
int v3 = 0; // const/4 v3, 0x0
this.mAdapter = v3;
/* .line 365 */
(( android.support.v4.app.ListFragment ) p0 ).setListAdapter ( v0 ); // invoke-virtual {p0, v0}, Landroid/support/v4/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V
/* .line 373 */
} // .end local v0 # "adapter":Landroid/widget/ListAdapter;
} // :cond_3
} // :goto_2
v3 = this.mHandler;
v4 = this.mRequestFocus;
(( android.os.Handler ) v3 ).post ( v4 ); // invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
/* .line 333 */
/* .restart local v2 # "root":Landroid/view/View; */
} // :cond_4
/* const v3, 0xff0001 */
(( android.view.View ) v2 ).findViewById ( v3 ); // invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
/* check-cast v3, Landroid/widget/TextView; */
this.mStandardEmptyView = v3;
/* .line 334 */
v3 = this.mStandardEmptyView;
/* if-nez v3, :cond_5 */
/* .line 335 */
/* const v3, 0x1020004 */
(( android.view.View ) v2 ).findViewById ( v3 ); // invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
this.mEmptyView = v3;
/* .line 339 */
} // :goto_3
/* const v3, 0xff0002 */
(( android.view.View ) v2 ).findViewById ( v3 ); // invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
this.mProgressContainer = v3;
/* .line 340 */
/* const v3, 0xff0003 */
(( android.view.View ) v2 ).findViewById ( v3 ); // invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
this.mListContainer = v3;
/* .line 341 */
/* const v3, 0x102000a */
(( android.view.View ) v2 ).findViewById ( v3 ); // invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
/* .line 342 */
/* .local v1, "rawListView":Landroid/view/View; */
/* instance-of v3, v1, Landroid/widget/ListView; */
/* if-nez v3, :cond_7 */
/* .line 343 */
/* if-nez v1, :cond_6 */
/* .line 344 */
/* new-instance v3, Ljava/lang/RuntimeException; */
final String v4 = "Your content must have a ListView whose id attribute is \'android.R.id.list\'"; // const-string v4, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"
/* invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V */
/* throw v3 */
/* .line 337 */
} // .end local v1 # "rawListView":Landroid/view/View;
} // :cond_5
v3 = this.mStandardEmptyView;
/* const/16 v4, 0x8 */
(( android.widget.TextView ) v3 ).setVisibility ( v4 ); // invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V
/* .line 348 */
/* .restart local v1 # "rawListView":Landroid/view/View; */
} // :cond_6
/* new-instance v3, Ljava/lang/RuntimeException; */
final String v4 = "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"; // const-string v4, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"
/* invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V */
/* throw v3 */
/* .line 352 */
} // :cond_7
/* check-cast v1, Landroid/widget/ListView; */
} // .end local v1 # "rawListView":Landroid/view/View;
this.mList = v1;
/* .line 353 */
v3 = this.mEmptyView;
if ( v3 != null) { // if-eqz v3, :cond_8
/* .line 354 */
v3 = this.mList;
v4 = this.mEmptyView;
(( android.widget.ListView ) v3 ).setEmptyView ( v4 ); // invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
/* .line 355 */
} // :cond_8
v3 = this.mEmptyText;
if ( v3 != null) { // if-eqz v3, :cond_2
/* .line 356 */
v3 = this.mStandardEmptyView;
v4 = this.mEmptyText;
(( android.widget.TextView ) v3 ).setText ( v4 ); // invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
/* .line 357 */
v3 = this.mList;
v4 = this.mStandardEmptyView;
(( android.widget.ListView ) v3 ).setEmptyView ( v4 ); // invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
/* goto/16 :goto_1 */
/* .line 369 */
} // .end local v2 # "root":Landroid/view/View;
} // :cond_9
v3 = this.mProgressContainer;
if ( v3 != null) { // if-eqz v3, :cond_3
/* .line 370 */
/* invoke-direct {p0, v5, v5}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V */
/* goto/16 :goto_2 */
} // .end method
private void setListShown ( Boolean p0, Boolean p1 ) {
/* .locals 6 */
/* .param p1, "shown" # Z */
/* .param p2, "animate" # Z */
/* .prologue */
/* const v5, 0x10a0001 */
/* const/high16 v4, 0x10a0000 */
/* const/16 v3, 0x8 */
int v2 = 0; // const/4 v2, 0x0
/* .line 280 */
/* invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V */
/* .line 281 */
v0 = this.mProgressContainer;
/* if-nez v0, :cond_0 */
/* .line 282 */
/* new-instance v0, Ljava/lang/IllegalStateException; */
final String v1 = "Can\'t be used with a custom content view"; // const-string v1, "Can\'t be used with a custom content view"
/* invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 284 */
} // :cond_0
/* iget-boolean v0, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z */
/* if-ne v0, p1, :cond_1 */
/* .line 313 */
} // :goto_0
return;
/* .line 287 */
} // :cond_1
/* iput-boolean p1, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z */
/* .line 288 */
if ( p1 != null) { // if-eqz p1, :cond_3
/* .line 289 */
if ( p2 != null) { // if-eqz p2, :cond_2
/* .line 290 */
v0 = this.mProgressContainer;
(( android.support.v4.app.ListFragment ) p0 ).getActivity ( ); // invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
android.view.animation.AnimationUtils .loadAnimation ( v1,v5 );
(( android.view.View ) v0 ).startAnimation ( v1 ); // invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
/* .line 292 */
v0 = this.mListContainer;
(( android.support.v4.app.ListFragment ) p0 ).getActivity ( ); // invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
android.view.animation.AnimationUtils .loadAnimation ( v1,v4 );
(( android.view.View ) v0 ).startAnimation ( v1 ); // invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
/* .line 298 */
} // :goto_1
v0 = this.mProgressContainer;
(( android.view.View ) v0 ).setVisibility ( v3 ); // invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
/* .line 299 */
v0 = this.mListContainer;
(( android.view.View ) v0 ).setVisibility ( v2 ); // invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
/* .line 295 */
} // :cond_2
v0 = this.mProgressContainer;
(( android.view.View ) v0 ).clearAnimation ( ); // invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
/* .line 296 */
v0 = this.mListContainer;
(( android.view.View ) v0 ).clearAnimation ( ); // invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
/* .line 301 */
} // :cond_3
if ( p2 != null) { // if-eqz p2, :cond_4
/* .line 302 */
v0 = this.mProgressContainer;
(( android.support.v4.app.ListFragment ) p0 ).getActivity ( ); // invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
android.view.animation.AnimationUtils .loadAnimation ( v1,v4 );
(( android.view.View ) v0 ).startAnimation ( v1 ); // invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
/* .line 304 */
v0 = this.mListContainer;
(( android.support.v4.app.ListFragment ) p0 ).getActivity ( ); // invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
android.view.animation.AnimationUtils .loadAnimation ( v1,v5 );
(( android.view.View ) v0 ).startAnimation ( v1 ); // invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
/* .line 310 */
} // :goto_2
v0 = this.mProgressContainer;
(( android.view.View ) v0 ).setVisibility ( v2 ); // invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
/* .line 311 */
v0 = this.mListContainer;
(( android.view.View ) v0 ).setVisibility ( v3 ); // invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
/* .line 307 */
} // :cond_4
v0 = this.mProgressContainer;
(( android.view.View ) v0 ).clearAnimation ( ); // invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
/* .line 308 */
v0 = this.mListContainer;
(( android.view.View ) v0 ).clearAnimation ( ); // invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
} // .end method
/* # virtual methods */
public android.widget.ListAdapter getListAdapter ( ) {
/* .locals 1 */
/* .prologue */
/* .line 319 */
v0 = this.mAdapter;
} // .end method
public android.widget.ListView getListView ( ) {
/* .locals 1 */
/* .prologue */
/* .line 222 */
/* invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V */
/* .line 223 */
v0 = this.mList;
} // .end method
public Long getSelectedItemId ( ) {
/* .locals 2 */
/* .prologue */
/* .line 214 */
/* invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V */
/* .line 215 */
v0 = this.mList;
(( android.widget.ListView ) v0 ).getSelectedItemId ( ); // invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J
/* move-result-wide v0 */
/* return-wide v0 */
} // .end method
public Integer getSelectedItemPosition ( ) {
/* .locals 1 */
/* .prologue */
/* .line 206 */
/* invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V */
/* .line 207 */
v0 = this.mList;
v0 = (( android.widget.ListView ) v0 ).getSelectedItemPosition ( ); // invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I
} // .end method
public android.view.View onCreateView ( android.view.LayoutInflater p0, android.view.ViewGroup p1, android.os.Bundle p2 ) {
/* .locals 12 */
/* .param p1, "inflater" # Landroid/view/LayoutInflater; */
/* .param p2, "container" # Landroid/view/ViewGroup; */
/* .param p3, "savedInstanceState" # Landroid/os/Bundle; */
/* .prologue */
/* const/16 v11, 0x11 */
int v10 = -2; // const/4 v10, -0x2
int v9 = -1; // const/4 v9, -0x1
/* .line 91 */
(( android.support.v4.app.ListFragment ) p0 ).getActivity ( ); // invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
/* .line 93 */
/* .local v0, "context":Landroid/content/Context; */
/* new-instance v5, Landroid/widget/FrameLayout; */
/* invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V */
/* .line 97 */
/* .local v5, "root":Landroid/widget/FrameLayout; */
/* new-instance v3, Landroid/widget/LinearLayout; */
/* invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V */
/* .line 98 */
/* .local v3, "pframe":Landroid/widget/LinearLayout; */
/* const v7, 0xff0002 */
(( android.widget.LinearLayout ) v3 ).setId ( v7 ); // invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setId(I)V
/* .line 99 */
int v7 = 1; // const/4 v7, 0x1
(( android.widget.LinearLayout ) v3 ).setOrientation ( v7 ); // invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V
/* .line 100 */
/* const/16 v7, 0x8 */
(( android.widget.LinearLayout ) v3 ).setVisibility ( v7 ); // invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V
/* .line 101 */
(( android.widget.LinearLayout ) v3 ).setGravity ( v11 ); // invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setGravity(I)V
/* .line 103 */
/* new-instance v4, Landroid/widget/ProgressBar; */
int v7 = 0; // const/4 v7, 0x0
/* const v8, 0x101007a */
/* invoke-direct {v4, v0, v7, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V */
/* .line 105 */
/* .local v4, "progress":Landroid/widget/ProgressBar; */
/* new-instance v7, Landroid/widget/FrameLayout$LayoutParams; */
/* invoke-direct {v7, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V */
(( android.widget.LinearLayout ) v3 ).addView ( v4, v7 ); // invoke-virtual {v3, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
/* .line 108 */
/* new-instance v7, Landroid/widget/FrameLayout$LayoutParams; */
/* invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V */
(( android.widget.FrameLayout ) v5 ).addView ( v3, v7 ); // invoke-virtual {v5, v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
/* .line 113 */
/* new-instance v1, Landroid/widget/FrameLayout; */
/* invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V */
/* .line 114 */
/* .local v1, "lframe":Landroid/widget/FrameLayout; */
/* const v7, 0xff0003 */
(( android.widget.FrameLayout ) v1 ).setId ( v7 ); // invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setId(I)V
/* .line 116 */
/* new-instance v6, Landroid/widget/TextView; */
(( android.support.v4.app.ListFragment ) p0 ).getActivity ( ); // invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
/* invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V */
/* .line 117 */
/* .local v6, "tv":Landroid/widget/TextView; */
/* const v7, 0xff0001 */
(( android.widget.TextView ) v6 ).setId ( v7 ); // invoke-virtual {v6, v7}, Landroid/widget/TextView;->setId(I)V
/* .line 118 */
(( android.widget.TextView ) v6 ).setGravity ( v11 ); // invoke-virtual {v6, v11}, Landroid/widget/TextView;->setGravity(I)V
/* .line 119 */
/* new-instance v7, Landroid/widget/FrameLayout$LayoutParams; */
/* invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V */
(( android.widget.FrameLayout ) v1 ).addView ( v6, v7 ); // invoke-virtual {v1, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
/* .line 122 */
/* new-instance v2, Landroid/widget/ListView; */
(( android.support.v4.app.ListFragment ) p0 ).getActivity ( ); // invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
/* invoke-direct {v2, v7}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V */
/* .line 123 */
/* .local v2, "lv":Landroid/widget/ListView; */
/* const v7, 0x102000a */
(( android.widget.ListView ) v2 ).setId ( v7 ); // invoke-virtual {v2, v7}, Landroid/widget/ListView;->setId(I)V
/* .line 124 */
int v7 = 0; // const/4 v7, 0x0
(( android.widget.ListView ) v2 ).setDrawSelectorOnTop ( v7 ); // invoke-virtual {v2, v7}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V
/* .line 125 */
/* new-instance v7, Landroid/widget/FrameLayout$LayoutParams; */
/* invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V */
(( android.widget.FrameLayout ) v1 ).addView ( v2, v7 ); // invoke-virtual {v1, v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
/* .line 128 */
/* new-instance v7, Landroid/widget/FrameLayout$LayoutParams; */
/* invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V */
(( android.widget.FrameLayout ) v5 ).addView ( v1, v7 ); // invoke-virtual {v5, v1, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
/* .line 133 */
/* new-instance v7, Landroid/widget/FrameLayout$LayoutParams; */
/* invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V */
(( android.widget.FrameLayout ) v5 ).setLayoutParams ( v7 ); // invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
/* .line 136 */
} // .end method
public void onDestroyView ( ) {
/* .locals 3 */
/* .prologue */
int v2 = 0; // const/4 v2, 0x0
/* .line 153 */
v0 = this.mHandler;
v1 = this.mRequestFocus;
(( android.os.Handler ) v0 ).removeCallbacks ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
/* .line 154 */
this.mList = v2;
/* .line 155 */
int v0 = 0; // const/4 v0, 0x0
/* iput-boolean v0, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z */
/* .line 156 */
this.mListContainer = v2;
this.mProgressContainer = v2;
this.mEmptyView = v2;
/* .line 157 */
this.mStandardEmptyView = v2;
/* .line 158 */
/* invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V */
/* .line 159 */
return;
} // .end method
public void onListItemClick ( android.widget.ListView p0, android.view.View p1, Integer p2, Long p3 ) {
/* .locals 0 */
/* .param p1, "l" # Landroid/widget/ListView; */
/* .param p2, "v" # Landroid/view/View; */
/* .param p3, "position" # I */
/* .param p4, "id" # J */
/* .prologue */
/* .line 173 */
return;
} // .end method
public void onViewCreated ( android.view.View p0, android.os.Bundle p1 ) {
/* .locals 0 */
/* .param p1, "view" # Landroid/view/View; */
/* .param p2, "savedInstanceState" # Landroid/os/Bundle; */
/* .prologue */
/* .line 144 */
/* invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V */
/* .line 145 */
/* invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V */
/* .line 146 */
return;
} // .end method
public void setEmptyText ( java.lang.CharSequence p0 ) {
/* .locals 2 */
/* .param p1, "text" # Ljava/lang/CharSequence; */
/* .prologue */
/* .line 232 */
/* invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V */
/* .line 233 */
v0 = this.mStandardEmptyView;
/* if-nez v0, :cond_0 */
/* .line 234 */
/* new-instance v0, Ljava/lang/IllegalStateException; */
final String v1 = "Can\'t be used with a custom content view"; // const-string v1, "Can\'t be used with a custom content view"
/* invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 236 */
} // :cond_0
v0 = this.mStandardEmptyView;
(( android.widget.TextView ) v0 ).setText ( p1 ); // invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
/* .line 237 */
v0 = this.mEmptyText;
/* if-nez v0, :cond_1 */
/* .line 238 */
v0 = this.mList;
v1 = this.mStandardEmptyView;
(( android.widget.ListView ) v0 ).setEmptyView ( v1 ); // invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
/* .line 240 */
} // :cond_1
this.mEmptyText = p1;
/* .line 241 */
return;
} // .end method
public void setListAdapter ( android.widget.ListAdapter p0 ) {
/* .locals 4 */
/* .param p1, "adapter" # Landroid/widget/ListAdapter; */
/* .prologue */
int v2 = 0; // const/4 v2, 0x0
int v1 = 1; // const/4 v1, 0x1
/* .line 179 */
v3 = this.mAdapter;
if ( v3 != null) { // if-eqz v3, :cond_2
/* move v0, v1 */
/* .line 180 */
/* .local v0, "hadAdapter":Z */
} // :goto_0
this.mAdapter = p1;
/* .line 181 */
v3 = this.mList;
if ( v3 != null) { // if-eqz v3, :cond_1
/* .line 182 */
v3 = this.mList;
(( android.widget.ListView ) v3 ).setAdapter ( p1 ); // invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
/* .line 183 */
/* iget-boolean v3, p0, Landroid/support/v4/app/ListFragment;->mListShown:Z */
/* if-nez v3, :cond_1 */
/* if-nez v0, :cond_1 */
/* .line 186 */
(( android.support.v4.app.ListFragment ) p0 ).getView ( ); // invoke-virtual {p0}, Landroid/support/v4/app/ListFragment;->getView()Landroid/view/View;
(( android.view.View ) v3 ).getWindowToken ( ); // invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
if ( v3 != null) { // if-eqz v3, :cond_0
/* move v2, v1 */
} // :cond_0
/* invoke-direct {p0, v1, v2}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V */
/* .line 189 */
} // :cond_1
return;
} // .end local v0 # "hadAdapter":Z
} // :cond_2
/* move v0, v2 */
/* .line 179 */
} // .end method
public void setListShown ( Boolean p0 ) {
/* .locals 1 */
/* .param p1, "shown" # Z */
/* .prologue */
/* .line 258 */
int v0 = 1; // const/4 v0, 0x1
/* invoke-direct {p0, p1, v0}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V */
/* .line 259 */
return;
} // .end method
public void setListShownNoAnimation ( Boolean p0 ) {
/* .locals 1 */
/* .param p1, "shown" # Z */
/* .prologue */
/* .line 266 */
int v0 = 0; // const/4 v0, 0x0
/* invoke-direct {p0, p1, v0}, Landroid/support/v4/app/ListFragment;->setListShown(ZZ)V */
/* .line 267 */
return;
} // .end method
public void setSelection ( Integer p0 ) {
/* .locals 1 */
/* .param p1, "position" # I */
/* .prologue */
/* .line 198 */
/* invoke-direct {p0}, Landroid/support/v4/app/ListFragment;->ensureList()V */
/* .line 199 */
v0 = this.mList;
(( android.widget.ListView ) v0 ).setSelection ( p1 ); // invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V
/* .line 200 */
return;
} // .end method
