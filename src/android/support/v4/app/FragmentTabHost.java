public class android.support.v4.app.FragmentTabHost extends android.widget.TabHost implements android.widget.TabHost$OnTabChangeListener {
	 /* .source "FragmentTabHost.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/FragmentTabHost$1;, */
	 /* Landroid/support/v4/app/FragmentTabHost$SavedState;, */
	 /* Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;, */
	 /* Landroid/support/v4/app/FragmentTabHost$TabInfo; */
	 /* } */
} // .end annotation
/* # instance fields */
private Boolean mAttached;
private Integer mContainerId;
private android.content.Context mContext;
private android.support.v4.app.FragmentManager mFragmentManager;
private android.support.v4.app.FragmentTabHost$TabInfo mLastTab;
private android.widget.TabHost$OnTabChangeListener mOnTabChangeListener;
private android.widget.FrameLayout mRealTabContent;
private final java.util.ArrayList mTabs;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/support/v4/app/FragmentTabHost$TabInfo;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
/* # direct methods */
public android.support.v4.app.FragmentTabHost ( ) {
/* .locals 2 */
/* .param p1, "context" # Landroid/content/Context; */
/* .prologue */
int v1 = 0; // const/4 v1, 0x0
/* .line 130 */
/* invoke-direct {p0, p1, v1}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V */
/* .line 52 */
/* new-instance v0, Ljava/util/ArrayList; */
/* invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V */
this.mTabs = v0;
/* .line 131 */
/* invoke-direct {p0, p1, v1}, Landroid/support/v4/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V */
/* .line 132 */
return;
} // .end method
public android.support.v4.app.FragmentTabHost ( ) {
/* .locals 1 */
/* .param p1, "context" # Landroid/content/Context; */
/* .param p2, "attrs" # Landroid/util/AttributeSet; */
/* .prologue */
/* .line 135 */
/* invoke-direct {p0, p1, p2}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V */
/* .line 52 */
/* new-instance v0, Ljava/util/ArrayList; */
/* invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V */
this.mTabs = v0;
/* .line 136 */
/* invoke-direct {p0, p1, p2}, Landroid/support/v4/app/FragmentTabHost;->initFragmentTabHost(Landroid/content/Context;Landroid/util/AttributeSet;)V */
/* .line 137 */
return;
} // .end method
private android.support.v4.app.FragmentTransaction doTabChanged ( java.lang.String p0, android.support.v4.app.FragmentTransaction p1 ) {
/* .locals 6 */
/* .param p1, "tabId" # Ljava/lang/String; */
/* .param p2, "ft" # Landroid/support/v4/app/FragmentTransaction; */
/* .prologue */
/* .line 322 */
int v1 = 0; // const/4 v1, 0x0
/* .line 323 */
/* .local v1, "newTab":Landroid/support/v4/app/FragmentTabHost$TabInfo; */
int v0 = 0; // const/4 v0, 0x0
/* .local v0, "i":I */
} // :goto_0
v3 = this.mTabs;
v3 = (( java.util.ArrayList ) v3 ).size ( ); // invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
/* if-ge v0, v3, :cond_1 */
/* .line 324 */
v3 = this.mTabs;
(( java.util.ArrayList ) v3 ).get ( v0 ); // invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v2, Landroid/support/v4/app/FragmentTabHost$TabInfo; */
/* .line 325 */
/* .local v2, "tab":Landroid/support/v4/app/FragmentTabHost$TabInfo; */
android.support.v4.app.FragmentTabHost$TabInfo .access$200 ( v2 );
v3 = (( java.lang.String ) v3 ).equals ( p1 ); // invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
if ( v3 != null) { // if-eqz v3, :cond_0
/* .line 326 */
/* move-object v1, v2 */
/* .line 323 */
} // :cond_0
/* add-int/lit8 v0, v0, 0x1 */
/* .line 329 */
} // .end local v2 # "tab":Landroid/support/v4/app/FragmentTabHost$TabInfo;
} // :cond_1
/* if-nez v1, :cond_2 */
/* .line 330 */
/* new-instance v3, Ljava/lang/IllegalStateException; */
/* new-instance v4, Ljava/lang/StringBuilder; */
/* invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V */
final String v5 = "No tab known for tag "; // const-string v5, "No tab known for tag "
(( java.lang.StringBuilder ) v4 ).append ( v5 ); // invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v4 ).append ( p1 ); // invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v4 ).toString ( ); // invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
/* throw v3 */
/* .line 332 */
} // :cond_2
v3 = this.mLastTab;
/* if-eq v3, v1, :cond_6 */
/* .line 333 */
/* if-nez p2, :cond_3 */
/* .line 334 */
v3 = this.mFragmentManager;
(( android.support.v4.app.FragmentManager ) v3 ).beginTransaction ( ); // invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
/* .line 336 */
} // :cond_3
v3 = this.mLastTab;
if ( v3 != null) { // if-eqz v3, :cond_4
/* .line 337 */
v3 = this.mLastTab;
android.support.v4.app.FragmentTabHost$TabInfo .access$100 ( v3 );
if ( v3 != null) { // if-eqz v3, :cond_4
/* .line 338 */
v3 = this.mLastTab;
android.support.v4.app.FragmentTabHost$TabInfo .access$100 ( v3 );
(( android.support.v4.app.FragmentTransaction ) p2 ).detach ( v3 ); // invoke-virtual {p2, v3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
/* .line 341 */
} // :cond_4
if ( v1 != null) { // if-eqz v1, :cond_5
/* .line 342 */
android.support.v4.app.FragmentTabHost$TabInfo .access$100 ( v1 );
/* if-nez v3, :cond_7 */
/* .line 343 */
v3 = this.mContext;
android.support.v4.app.FragmentTabHost$TabInfo .access$300 ( v1 );
(( java.lang.Class ) v4 ).getName ( ); // invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;
android.support.v4.app.FragmentTabHost$TabInfo .access$400 ( v1 );
android.support.v4.app.Fragment .instantiate ( v3,v4,v5 );
android.support.v4.app.FragmentTabHost$TabInfo .access$102 ( v1,v3 );
/* .line 345 */
/* iget v3, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I */
android.support.v4.app.FragmentTabHost$TabInfo .access$100 ( v1 );
android.support.v4.app.FragmentTabHost$TabInfo .access$200 ( v1 );
(( android.support.v4.app.FragmentTransaction ) p2 ).add ( v3, v4, v5 ); // invoke-virtual {p2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
/* .line 351 */
} // :cond_5
} // :goto_1
this.mLastTab = v1;
/* .line 353 */
} // :cond_6
/* .line 347 */
} // :cond_7
android.support.v4.app.FragmentTabHost$TabInfo .access$100 ( v1 );
(( android.support.v4.app.FragmentTransaction ) p2 ).attach ( v3 ); // invoke-virtual {p2, v3}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
} // .end method
private void ensureContent ( ) {
/* .locals 3 */
/* .prologue */
/* .line 212 */
v0 = this.mRealTabContent;
/* if-nez v0, :cond_0 */
/* .line 213 */
/* iget v0, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I */
(( android.support.v4.app.FragmentTabHost ) p0 ).findViewById ( v0 ); // invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTabHost;->findViewById(I)Landroid/view/View;
/* check-cast v0, Landroid/widget/FrameLayout; */
this.mRealTabContent = v0;
/* .line 214 */
v0 = this.mRealTabContent;
/* if-nez v0, :cond_0 */
/* .line 215 */
/* new-instance v0, Ljava/lang/IllegalStateException; */
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
final String v2 = "No tab content FrameLayout found for id "; // const-string v2, "No tab content FrameLayout found for id "
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* iget v2, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I */
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 219 */
} // :cond_0
return;
} // .end method
private void ensureHierarchy ( android.content.Context p0 ) {
/* .locals 8 */
/* .param p1, "context" # Landroid/content/Context; */
/* .prologue */
/* const v4, 0x1020013 */
int v7 = 0; // const/4 v7, 0x0
int v6 = 0; // const/4 v6, 0x0
int v5 = -1; // const/4 v5, -0x1
/* .line 151 */
(( android.support.v4.app.FragmentTabHost ) p0 ).findViewById ( v4 ); // invoke-virtual {p0, v4}, Landroid/support/v4/app/FragmentTabHost;->findViewById(I)Landroid/view/View;
/* if-nez v3, :cond_0 */
/* .line 152 */
/* new-instance v1, Landroid/widget/LinearLayout; */
/* invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V */
/* .line 153 */
/* .local v1, "ll":Landroid/widget/LinearLayout; */
int v3 = 1; // const/4 v3, 0x1
(( android.widget.LinearLayout ) v1 ).setOrientation ( v3 ); // invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V
/* .line 154 */
/* new-instance v3, Landroid/widget/FrameLayout$LayoutParams; */
/* invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V */
(( android.support.v4.app.FragmentTabHost ) p0 ).addView ( v1, v3 ); // invoke-virtual {p0, v1, v3}, Landroid/support/v4/app/FragmentTabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
/* .line 158 */
/* new-instance v2, Landroid/widget/TabWidget; */
/* invoke-direct {v2, p1}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V */
/* .line 159 */
/* .local v2, "tw":Landroid/widget/TabWidget; */
(( android.widget.TabWidget ) v2 ).setId ( v4 ); // invoke-virtual {v2, v4}, Landroid/widget/TabWidget;->setId(I)V
/* .line 160 */
(( android.widget.TabWidget ) v2 ).setOrientation ( v6 ); // invoke-virtual {v2, v6}, Landroid/widget/TabWidget;->setOrientation(I)V
/* .line 161 */
/* new-instance v3, Landroid/widget/LinearLayout$LayoutParams; */
int v4 = -2; // const/4 v4, -0x2
/* invoke-direct {v3, v5, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V */
(( android.widget.LinearLayout ) v1 ).addView ( v2, v3 ); // invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
/* .line 165 */
/* new-instance v0, Landroid/widget/FrameLayout; */
/* invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V */
/* .line 166 */
/* .local v0, "fl":Landroid/widget/FrameLayout; */
/* const v3, 0x1020011 */
(( android.widget.FrameLayout ) v0 ).setId ( v3 ); // invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setId(I)V
/* .line 167 */
/* new-instance v3, Landroid/widget/LinearLayout$LayoutParams; */
/* invoke-direct {v3, v6, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V */
(( android.widget.LinearLayout ) v1 ).addView ( v0, v3 ); // invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
/* .line 169 */
/* new-instance v0, Landroid/widget/FrameLayout; */
} // .end local v0 # "fl":Landroid/widget/FrameLayout;
/* invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V */
/* .restart local v0 # "fl":Landroid/widget/FrameLayout; */
this.mRealTabContent = v0;
/* .line 170 */
v3 = this.mRealTabContent;
/* iget v4, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I */
(( android.widget.FrameLayout ) v3 ).setId ( v4 ); // invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setId(I)V
/* .line 171 */
/* new-instance v3, Landroid/widget/LinearLayout$LayoutParams; */
/* const/high16 v4, 0x3f800000 # 1.0f */
/* invoke-direct {v3, v5, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V */
(( android.widget.LinearLayout ) v1 ).addView ( v0, v3 ); // invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
/* .line 174 */
} // .end local v0 # "fl":Landroid/widget/FrameLayout;
} // .end local v1 # "ll":Landroid/widget/LinearLayout;
} // .end local v2 # "tw":Landroid/widget/TabWidget;
} // :cond_0
return;
} // .end method
private void initFragmentTabHost ( android.content.Context p0, android.util.AttributeSet p1 ) {
/* .locals 4 */
/* .param p1, "context" # Landroid/content/Context; */
/* .param p2, "attrs" # Landroid/util/AttributeSet; */
/* .prologue */
int v3 = 0; // const/4 v3, 0x0
/* .line 140 */
int v1 = 1; // const/4 v1, 0x1
/* new-array v1, v1, [I */
/* const v2, 0x10100f3 */
/* aput v2, v1, v3 */
(( android.content.Context ) p1 ).obtainStyledAttributes ( p2, v1, v3, v3 ); // invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
/* .line 142 */
/* .local v0, "a":Landroid/content/res/TypedArray; */
v1 = (( android.content.res.TypedArray ) v0 ).getResourceId ( v3, v3 ); // invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
/* iput v1, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I */
/* .line 143 */
(( android.content.res.TypedArray ) v0 ).recycle ( ); // invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
/* .line 145 */
/* invoke-super {p0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V */
/* .line 146 */
return;
} // .end method
/* # virtual methods */
public void addTab ( android.widget.TabHost$TabSpec p0, java.lang.Class p1, android.os.Bundle p2 ) {
/* .locals 5 */
/* .param p1, "tabSpec" # Landroid/widget/TabHost$TabSpec; */
/* .param p3, "args" # Landroid/os/Bundle; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Landroid/widget/TabHost$TabSpec;", */
/* "Ljava/lang/Class", */
/* "<*>;", */
/* "Landroid/os/Bundle;", */
/* ")V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 227 */
/* .local p2, "clss":Ljava/lang/Class;, "Ljava/lang/Class<*>;" */
/* new-instance v3, Landroid/support/v4/app/FragmentTabHost$DummyTabFactory; */
v4 = this.mContext;
/* invoke-direct {v3, v4}, Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;-><init>(Landroid/content/Context;)V */
(( android.widget.TabHost$TabSpec ) p1 ).setContent ( v3 ); // invoke-virtual {p1, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;
/* .line 228 */
(( android.widget.TabHost$TabSpec ) p1 ).getTag ( ); // invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;
/* .line 230 */
/* .local v2, "tag":Ljava/lang/String; */
/* new-instance v1, Landroid/support/v4/app/FragmentTabHost$TabInfo; */
/* invoke-direct {v1, v2, p2, p3}, Landroid/support/v4/app/FragmentTabHost$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V */
/* .line 232 */
/* .local v1, "info":Landroid/support/v4/app/FragmentTabHost$TabInfo; */
/* iget-boolean v3, p0, Landroid/support/v4/app/FragmentTabHost;->mAttached:Z */
if ( v3 != null) { // if-eqz v3, :cond_0
/* .line 236 */
v3 = this.mFragmentManager;
(( android.support.v4.app.FragmentManager ) v3 ).findFragmentByTag ( v2 ); // invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
android.support.v4.app.FragmentTabHost$TabInfo .access$102 ( v1,v3 );
/* .line 237 */
android.support.v4.app.FragmentTabHost$TabInfo .access$100 ( v1 );
if ( v3 != null) { // if-eqz v3, :cond_0
android.support.v4.app.FragmentTabHost$TabInfo .access$100 ( v1 );
v3 = (( android.support.v4.app.Fragment ) v3 ).isDetached ( ); // invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->isDetached()Z
/* if-nez v3, :cond_0 */
/* .line 238 */
v3 = this.mFragmentManager;
(( android.support.v4.app.FragmentManager ) v3 ).beginTransaction ( ); // invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
/* .line 239 */
/* .local v0, "ft":Landroid/support/v4/app/FragmentTransaction; */
android.support.v4.app.FragmentTabHost$TabInfo .access$100 ( v1 );
(( android.support.v4.app.FragmentTransaction ) v0 ).detach ( v3 ); // invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
/* .line 240 */
(( android.support.v4.app.FragmentTransaction ) v0 ).commit ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
/* .line 244 */
} // .end local v0 # "ft":Landroid/support/v4/app/FragmentTransaction;
} // :cond_0
v3 = this.mTabs;
(( java.util.ArrayList ) v3 ).add ( v1 ); // invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
/* .line 245 */
(( android.support.v4.app.FragmentTabHost ) p0 ).addTab ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V
/* .line 246 */
return;
} // .end method
protected void onAttachedToWindow ( ) {
/* .locals 6 */
/* .prologue */
/* .line 250 */
/* invoke-super {p0}, Landroid/widget/TabHost;->onAttachedToWindow()V */
/* .line 252 */
(( android.support.v4.app.FragmentTabHost ) p0 ).getCurrentTabTag ( ); // invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;
/* .line 256 */
/* .local v0, "currentTab":Ljava/lang/String; */
int v1 = 0; // const/4 v1, 0x0
/* .line 257 */
/* .local v1, "ft":Landroid/support/v4/app/FragmentTransaction; */
int v2 = 0; // const/4 v2, 0x0
/* .local v2, "i":I */
} // :goto_0
v4 = this.mTabs;
v4 = (( java.util.ArrayList ) v4 ).size ( ); // invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
/* if-ge v2, v4, :cond_3 */
/* .line 258 */
v4 = this.mTabs;
(( java.util.ArrayList ) v4 ).get ( v2 ); // invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v3, Landroid/support/v4/app/FragmentTabHost$TabInfo; */
/* .line 259 */
/* .local v3, "tab":Landroid/support/v4/app/FragmentTabHost$TabInfo; */
v4 = this.mFragmentManager;
android.support.v4.app.FragmentTabHost$TabInfo .access$200 ( v3 );
(( android.support.v4.app.FragmentManager ) v4 ).findFragmentByTag ( v5 ); // invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
android.support.v4.app.FragmentTabHost$TabInfo .access$102 ( v3,v4 );
/* .line 260 */
android.support.v4.app.FragmentTabHost$TabInfo .access$100 ( v3 );
if ( v4 != null) { // if-eqz v4, :cond_0
android.support.v4.app.FragmentTabHost$TabInfo .access$100 ( v3 );
v4 = (( android.support.v4.app.Fragment ) v4 ).isDetached ( ); // invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->isDetached()Z
/* if-nez v4, :cond_0 */
/* .line 261 */
android.support.v4.app.FragmentTabHost$TabInfo .access$200 ( v3 );
v4 = (( java.lang.String ) v4 ).equals ( v0 ); // invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
if ( v4 != null) { // if-eqz v4, :cond_1
/* .line 265 */
this.mLastTab = v3;
/* .line 257 */
} // :cond_0
} // :goto_1
/* add-int/lit8 v2, v2, 0x1 */
/* .line 269 */
} // :cond_1
/* if-nez v1, :cond_2 */
/* .line 270 */
v4 = this.mFragmentManager;
(( android.support.v4.app.FragmentManager ) v4 ).beginTransaction ( ); // invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
/* .line 272 */
} // :cond_2
android.support.v4.app.FragmentTabHost$TabInfo .access$100 ( v3 );
(( android.support.v4.app.FragmentTransaction ) v1 ).detach ( v4 ); // invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
/* .line 279 */
} // .end local v3 # "tab":Landroid/support/v4/app/FragmentTabHost$TabInfo;
} // :cond_3
int v4 = 1; // const/4 v4, 0x1
/* iput-boolean v4, p0, Landroid/support/v4/app/FragmentTabHost;->mAttached:Z */
/* .line 280 */
/* invoke-direct {p0, v0, v1}, Landroid/support/v4/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction; */
/* .line 281 */
if ( v1 != null) { // if-eqz v1, :cond_4
/* .line 282 */
(( android.support.v4.app.FragmentTransaction ) v1 ).commit ( ); // invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
/* .line 283 */
v4 = this.mFragmentManager;
(( android.support.v4.app.FragmentManager ) v4 ).executePendingTransactions ( ); // invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z
/* .line 285 */
} // :cond_4
return;
} // .end method
protected void onDetachedFromWindow ( ) {
/* .locals 1 */
/* .prologue */
/* .line 289 */
/* invoke-super {p0}, Landroid/widget/TabHost;->onDetachedFromWindow()V */
/* .line 290 */
int v0 = 0; // const/4 v0, 0x0
/* iput-boolean v0, p0, Landroid/support/v4/app/FragmentTabHost;->mAttached:Z */
/* .line 291 */
return;
} // .end method
protected void onRestoreInstanceState ( android.os.Parcelable p0 ) {
/* .locals 2 */
/* .param p1, "state" # Landroid/os/Parcelable; */
/* .prologue */
/* .line 303 */
/* move-object v0, p1 */
/* check-cast v0, Landroid/support/v4/app/FragmentTabHost$SavedState; */
/* .line 304 */
/* .local v0, "ss":Landroid/support/v4/app/FragmentTabHost$SavedState; */
(( android.support.v4.app.FragmentTabHost$SavedState ) v0 ).getSuperState ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentTabHost$SavedState;->getSuperState()Landroid/os/Parcelable;
/* invoke-super {p0, v1}, Landroid/widget/TabHost;->onRestoreInstanceState(Landroid/os/Parcelable;)V */
/* .line 305 */
v1 = this.curTab;
(( android.support.v4.app.FragmentTabHost ) p0 ).setCurrentTabByTag ( v1 ); // invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTabByTag(Ljava/lang/String;)V
/* .line 306 */
return;
} // .end method
protected android.os.Parcelable onSaveInstanceState ( ) {
/* .locals 3 */
/* .prologue */
/* .line 295 */
/* invoke-super {p0}, Landroid/widget/TabHost;->onSaveInstanceState()Landroid/os/Parcelable; */
/* .line 296 */
/* .local v1, "superState":Landroid/os/Parcelable; */
/* new-instance v0, Landroid/support/v4/app/FragmentTabHost$SavedState; */
/* invoke-direct {v0, v1}, Landroid/support/v4/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcelable;)V */
/* .line 297 */
/* .local v0, "ss":Landroid/support/v4/app/FragmentTabHost$SavedState; */
(( android.support.v4.app.FragmentTabHost ) p0 ).getCurrentTabTag ( ); // invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTabTag()Ljava/lang/String;
this.curTab = v2;
/* .line 298 */
} // .end method
public void onTabChanged ( java.lang.String p0 ) {
/* .locals 2 */
/* .param p1, "tabId" # Ljava/lang/String; */
/* .prologue */
/* .line 310 */
/* iget-boolean v1, p0, Landroid/support/v4/app/FragmentTabHost;->mAttached:Z */
if ( v1 != null) { // if-eqz v1, :cond_0
/* .line 311 */
int v1 = 0; // const/4 v1, 0x0
/* invoke-direct {p0, p1, v1}, Landroid/support/v4/app/FragmentTabHost;->doTabChanged(Ljava/lang/String;Landroid/support/v4/app/FragmentTransaction;)Landroid/support/v4/app/FragmentTransaction; */
/* .line 312 */
/* .local v0, "ft":Landroid/support/v4/app/FragmentTransaction; */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 313 */
(( android.support.v4.app.FragmentTransaction ) v0 ).commit ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
/* .line 316 */
} // .end local v0 # "ft":Landroid/support/v4/app/FragmentTransaction;
} // :cond_0
v1 = this.mOnTabChangeListener;
if ( v1 != null) { // if-eqz v1, :cond_1
/* .line 317 */
v1 = this.mOnTabChangeListener;
/* .line 319 */
} // :cond_1
return;
} // .end method
public void setOnTabChangedListener ( android.widget.TabHost$OnTabChangeListener p0 ) {
/* .locals 0 */
/* .param p1, "l" # Landroid/widget/TabHost$OnTabChangeListener; */
/* .prologue */
/* .line 223 */
this.mOnTabChangeListener = p1;
/* .line 224 */
return;
} // .end method
public void setup ( ) {
/* .locals 2 */
/* .annotation runtime Ljava/lang/Deprecated; */
} // .end annotation
/* .prologue */
/* .line 183 */
/* new-instance v0, Ljava/lang/IllegalStateException; */
final String v1 = "Must call setup() that takes a Context and FragmentManager"; // const-string v1, "Must call setup() that takes a Context and FragmentManager"
/* invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
} // .end method
public void setup ( android.content.Context p0, android.support.v4.app.FragmentManager p1 ) {
/* .locals 0 */
/* .param p1, "context" # Landroid/content/Context; */
/* .param p2, "manager" # Landroid/support/v4/app/FragmentManager; */
/* .prologue */
/* .line 188 */
/* invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V */
/* .line 189 */
/* invoke-super {p0}, Landroid/widget/TabHost;->setup()V */
/* .line 190 */
this.mContext = p1;
/* .line 191 */
this.mFragmentManager = p2;
/* .line 192 */
/* invoke-direct {p0}, Landroid/support/v4/app/FragmentTabHost;->ensureContent()V */
/* .line 193 */
return;
} // .end method
public void setup ( android.content.Context p0, android.support.v4.app.FragmentManager p1, Integer p2 ) {
/* .locals 2 */
/* .param p1, "context" # Landroid/content/Context; */
/* .param p2, "manager" # Landroid/support/v4/app/FragmentManager; */
/* .param p3, "containerId" # I */
/* .prologue */
/* .line 196 */
/* invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentTabHost;->ensureHierarchy(Landroid/content/Context;)V */
/* .line 197 */
/* invoke-super {p0}, Landroid/widget/TabHost;->setup()V */
/* .line 198 */
this.mContext = p1;
/* .line 199 */
this.mFragmentManager = p2;
/* .line 200 */
/* iput p3, p0, Landroid/support/v4/app/FragmentTabHost;->mContainerId:I */
/* .line 201 */
/* invoke-direct {p0}, Landroid/support/v4/app/FragmentTabHost;->ensureContent()V */
/* .line 202 */
v0 = this.mRealTabContent;
(( android.widget.FrameLayout ) v0 ).setId ( p3 ); // invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setId(I)V
/* .line 206 */
v0 = (( android.support.v4.app.FragmentTabHost ) p0 ).getId ( ); // invoke-virtual {p0}, Landroid/support/v4/app/FragmentTabHost;->getId()I
int v1 = -1; // const/4 v1, -0x1
/* if-ne v0, v1, :cond_0 */
/* .line 207 */
/* const v0, 0x1020012 */
(( android.support.v4.app.FragmentTabHost ) p0 ).setId ( v0 ); // invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentTabHost;->setId(I)V
/* .line 209 */
} // :cond_0
return;
} // .end method
