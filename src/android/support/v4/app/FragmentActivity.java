public class android.support.v4.app.FragmentActivity extends android.app.Activity {
	 /* .source "FragmentActivity.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances; */
	 /* } */
} // .end annotation
/* # static fields */
static final java.lang.String FRAGMENTS_TAG;
private static final Integer HONEYCOMB;
static final Integer MSG_REALLY_STOPPED;
static final Integer MSG_RESUME_PENDING;
private static final java.lang.String TAG;
/* # instance fields */
android.support.v4.util.SimpleArrayMap mAllLoaderManagers;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Landroid/support/v4/util/SimpleArrayMap", */
/* "<", */
/* "Ljava/lang/String;", */
/* "Landroid/support/v4/app/LoaderManagerImpl;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
Boolean mCheckedForLoaderManager;
final android.support.v4.app.FragmentContainer mContainer;
Boolean mCreated;
final android.support.v4.app.FragmentManagerImpl mFragments;
final android.os.Handler mHandler;
android.support.v4.app.LoaderManagerImpl mLoaderManager;
Boolean mLoadersStarted;
Boolean mOptionsMenuInvalidated;
Boolean mReallyStopped;
Boolean mResumed;
Boolean mRetaining;
Boolean mStopped;
/* # direct methods */
public android.support.v4.app.FragmentActivity ( ) {
/* .locals 1 */
/* .prologue */
/* .line 75 */
/* invoke-direct {p0}, Landroid/app/Activity;-><init>()V */
/* .line 86 */
/* new-instance v0, Landroid/support/v4/app/FragmentActivity$1; */
/* invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V */
this.mHandler = v0;
/* .line 105 */
/* new-instance v0, Landroid/support/v4/app/FragmentManagerImpl; */
/* invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V */
this.mFragments = v0;
/* .line 106 */
/* new-instance v0, Landroid/support/v4/app/FragmentActivity$2; */
/* invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentActivity$2;-><init>(Landroid/support/v4/app/FragmentActivity;)V */
this.mContainer = v0;
/* .line 132 */
return;
} // .end method
private void dumpViewHierarchy ( java.lang.String p0, java.io.PrintWriter p1, android.view.View p2 ) {
/* .locals 5 */
/* .param p1, "prefix" # Ljava/lang/String; */
/* .param p2, "writer" # Ljava/io/PrintWriter; */
/* .param p3, "view" # Landroid/view/View; */
/* .prologue */
/* .line 739 */
(( java.io.PrintWriter ) p2 ).print ( p1 ); // invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 740 */
/* if-nez p3, :cond_1 */
/* .line 741 */
final String v3 = "null"; // const-string v3, "null"
(( java.io.PrintWriter ) p2 ).println ( v3 ); // invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
/* .line 757 */
} // :cond_0
return;
/* .line 744 */
} // :cond_1
android.support.v4.app.FragmentActivity .viewToString ( p3 );
(( java.io.PrintWriter ) p2 ).println ( v3 ); // invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
/* .line 745 */
/* instance-of v3, p3, Landroid/view/ViewGroup; */
if ( v3 != null) { // if-eqz v3, :cond_0
/* move-object v1, p3 */
/* .line 748 */
/* check-cast v1, Landroid/view/ViewGroup; */
/* .line 749 */
/* .local v1, "grp":Landroid/view/ViewGroup; */
v0 = (( android.view.ViewGroup ) v1 ).getChildCount ( ); // invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I
/* .line 750 */
/* .local v0, "N":I */
/* if-lez v0, :cond_0 */
/* .line 753 */
/* new-instance v3, Ljava/lang/StringBuilder; */
/* invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V */
(( java.lang.StringBuilder ) v3 ).append ( p1 ); // invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v4 = " "; // const-string v4, " "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).toString ( ); // invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* .line 754 */
int v2 = 0; // const/4 v2, 0x0
/* .local v2, "i":I */
} // :goto_0
/* if-ge v2, v0, :cond_0 */
/* .line 755 */
(( android.view.ViewGroup ) v1 ).getChildAt ( v2 ); // invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
/* invoke-direct {p0, p1, p2, v3}, Landroid/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V */
/* .line 754 */
/* add-int/lit8 v2, v2, 0x1 */
} // .end method
private static java.lang.String viewToString ( android.view.View p0 ) {
/* .locals 12 */
/* .param p0, "view" # Landroid/view/View; */
/* .prologue */
/* const/16 v9, 0x56 */
/* const/16 v7, 0x46 */
/* const/16 v11, 0x2c */
/* const/16 v10, 0x20 */
/* const/16 v8, 0x2e */
/* .line 673 */
/* new-instance v2, Ljava/lang/StringBuilder; */
/* const/16 v6, 0x80 */
/* invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V */
/* .line 674 */
/* .local v2, "out":Ljava/lang/StringBuilder; */
(( java.lang.Object ) p0 ).getClass ( ); // invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
(( java.lang.Class ) v6 ).getName ( ); // invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 675 */
/* const/16 v6, 0x7b */
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 676 */
v6 = java.lang.System .identityHashCode ( p0 );
java.lang.Integer .toHexString ( v6 );
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 677 */
(( java.lang.StringBuilder ) v2 ).append ( v10 ); // invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 678 */
v6 = (( android.view.View ) p0 ).getVisibility ( ); // invoke-virtual {p0}, Landroid/view/View;->getVisibility()I
/* sparse-switch v6, :sswitch_data_0 */
/* .line 682 */
(( java.lang.StringBuilder ) v2 ).append ( v8 ); // invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 684 */
} // :goto_0
v6 = (( android.view.View ) p0 ).isFocusable ( ); // invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z
if ( v6 != null) { // if-eqz v6, :cond_2
/* move v6, v7 */
} // :goto_1
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 685 */
v6 = (( android.view.View ) p0 ).isEnabled ( ); // invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z
if ( v6 != null) { // if-eqz v6, :cond_3
/* const/16 v6, 0x45 */
} // :goto_2
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 686 */
v6 = (( android.view.View ) p0 ).willNotDraw ( ); // invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z
if ( v6 != null) { // if-eqz v6, :cond_4
/* move v6, v8 */
} // :goto_3
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 687 */
v6 = (( android.view.View ) p0 ).isHorizontalScrollBarEnabled ( ); // invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z
if ( v6 != null) { // if-eqz v6, :cond_5
/* const/16 v6, 0x48 */
} // :goto_4
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 688 */
v6 = (( android.view.View ) p0 ).isVerticalScrollBarEnabled ( ); // invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z
if ( v6 != null) { // if-eqz v6, :cond_6
/* move v6, v9 */
} // :goto_5
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 689 */
v6 = (( android.view.View ) p0 ).isClickable ( ); // invoke-virtual {p0}, Landroid/view/View;->isClickable()Z
if ( v6 != null) { // if-eqz v6, :cond_7
/* const/16 v6, 0x43 */
} // :goto_6
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 690 */
v6 = (( android.view.View ) p0 ).isLongClickable ( ); // invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z
if ( v6 != null) { // if-eqz v6, :cond_8
/* const/16 v6, 0x4c */
} // :goto_7
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 691 */
(( java.lang.StringBuilder ) v2 ).append ( v10 ); // invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 692 */
v6 = (( android.view.View ) p0 ).isFocused ( ); // invoke-virtual {p0}, Landroid/view/View;->isFocused()Z
if ( v6 != null) { // if-eqz v6, :cond_9
} // :goto_8
(( java.lang.StringBuilder ) v2 ).append ( v7 ); // invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 693 */
v6 = (( android.view.View ) p0 ).isSelected ( ); // invoke-virtual {p0}, Landroid/view/View;->isSelected()Z
if ( v6 != null) { // if-eqz v6, :cond_a
/* const/16 v6, 0x53 */
} // :goto_9
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 694 */
v6 = (( android.view.View ) p0 ).isPressed ( ); // invoke-virtual {p0}, Landroid/view/View;->isPressed()Z
if ( v6 != null) { // if-eqz v6, :cond_0
/* const/16 v8, 0x50 */
} // :cond_0
(( java.lang.StringBuilder ) v2 ).append ( v8 ); // invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 695 */
(( java.lang.StringBuilder ) v2 ).append ( v10 ); // invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 696 */
v6 = (( android.view.View ) p0 ).getLeft ( ); // invoke-virtual {p0}, Landroid/view/View;->getLeft()I
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
/* .line 697 */
(( java.lang.StringBuilder ) v2 ).append ( v11 ); // invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 698 */
v6 = (( android.view.View ) p0 ).getTop ( ); // invoke-virtual {p0}, Landroid/view/View;->getTop()I
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
/* .line 699 */
/* const/16 v6, 0x2d */
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 700 */
v6 = (( android.view.View ) p0 ).getRight ( ); // invoke-virtual {p0}, Landroid/view/View;->getRight()I
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
/* .line 701 */
(( java.lang.StringBuilder ) v2 ).append ( v11 ); // invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 702 */
v6 = (( android.view.View ) p0 ).getBottom ( ); // invoke-virtual {p0}, Landroid/view/View;->getBottom()I
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
/* .line 703 */
v1 = (( android.view.View ) p0 ).getId ( ); // invoke-virtual {p0}, Landroid/view/View;->getId()I
/* .line 704 */
/* .local v1, "id":I */
int v6 = -1; // const/4 v6, -0x1
/* if-eq v1, v6, :cond_1 */
/* .line 705 */
final String v6 = " #"; // const-string v6, " #"
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 706 */
java.lang.Integer .toHexString ( v1 );
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 707 */
(( android.view.View ) p0 ).getResources ( ); // invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;
/* .line 708 */
/* .local v4, "r":Landroid/content/res/Resources; */
if ( v1 != null) { // if-eqz v1, :cond_1
if ( v4 != null) { // if-eqz v4, :cond_1
/* .line 711 */
/* const/high16 v6, -0x1000000 */
/* and-int/2addr v6, v1 */
/* sparse-switch v6, :sswitch_data_1 */
/* .line 719 */
try { // :try_start_0
(( android.content.res.Resources ) v4 ).getResourcePackageName ( v1 ); // invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;
/* .line 722 */
/* .local v3, "pkgname":Ljava/lang/String; */
} // :goto_a
(( android.content.res.Resources ) v4 ).getResourceTypeName ( v1 ); // invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;
/* .line 723 */
/* .local v5, "typename":Ljava/lang/String; */
(( android.content.res.Resources ) v4 ).getResourceEntryName ( v1 ); // invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
/* .line 724 */
/* .local v0, "entryname":Ljava/lang/String; */
final String v6 = " "; // const-string v6, " "
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 725 */
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 726 */
final String v6 = ":"; // const-string v6, ":"
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 727 */
(( java.lang.StringBuilder ) v2 ).append ( v5 ); // invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 728 */
final String v6 = "/"; // const-string v6, "/"
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 729 */
(( java.lang.StringBuilder ) v2 ).append ( v0 ); // invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* :try_end_0 */
/* .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 ..:try_end_0} :catch_0 */
/* .line 734 */
} // .end local v0 # "entryname":Ljava/lang/String;
} // .end local v3 # "pkgname":Ljava/lang/String;
} // .end local v4 # "r":Landroid/content/res/Resources;
} // .end local v5 # "typename":Ljava/lang/String;
} // :cond_1
} // :goto_b
final String v6 = "}"; // const-string v6, "}"
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 735 */
(( java.lang.StringBuilder ) v2 ).toString ( ); // invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* .line 679 */
} // .end local v1 # "id":I
/* :sswitch_0 */
(( java.lang.StringBuilder ) v2 ).append ( v9 ); // invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* goto/16 :goto_0 */
/* .line 680 */
/* :sswitch_1 */
/* const/16 v6, 0x49 */
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* goto/16 :goto_0 */
/* .line 681 */
/* :sswitch_2 */
/* const/16 v6, 0x47 */
(( java.lang.StringBuilder ) v2 ).append ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* goto/16 :goto_0 */
} // :cond_2
/* move v6, v8 */
/* .line 684 */
/* goto/16 :goto_1 */
} // :cond_3
/* move v6, v8 */
/* .line 685 */
/* goto/16 :goto_2 */
/* .line 686 */
} // :cond_4
/* const/16 v6, 0x44 */
/* goto/16 :goto_3 */
} // :cond_5
/* move v6, v8 */
/* .line 687 */
/* goto/16 :goto_4 */
} // :cond_6
/* move v6, v8 */
/* .line 688 */
/* goto/16 :goto_5 */
} // :cond_7
/* move v6, v8 */
/* .line 689 */
/* goto/16 :goto_6 */
} // :cond_8
/* move v6, v8 */
/* .line 690 */
/* goto/16 :goto_7 */
} // :cond_9
/* move v7, v8 */
/* .line 692 */
/* goto/16 :goto_8 */
} // :cond_a
/* move v6, v8 */
/* .line 693 */
/* goto/16 :goto_9 */
/* .line 713 */
/* .restart local v1 # "id":I */
/* .restart local v4 # "r":Landroid/content/res/Resources; */
/* :sswitch_3 */
try { // :try_start_1
final String v3 = "app"; // const-string v3, "app"
/* .line 714 */
/* .restart local v3 # "pkgname":Ljava/lang/String; */
/* .line 716 */
} // .end local v3 # "pkgname":Ljava/lang/String;
/* :sswitch_4 */
final String v3 = "android"; // const-string v3, "android"
/* :try_end_1 */
/* .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 ..:try_end_1} :catch_0 */
/* .line 717 */
/* .restart local v3 # "pkgname":Ljava/lang/String; */
/* .line 730 */
} // .end local v3 # "pkgname":Ljava/lang/String;
/* :catch_0 */
/* move-exception v6 */
/* .line 678 */
/* nop */
/* :sswitch_data_0 */
/* .sparse-switch */
/* 0x0 -> :sswitch_0 */
/* 0x4 -> :sswitch_1 */
/* 0x8 -> :sswitch_2 */
} // .end sparse-switch
/* .line 711 */
/* :sswitch_data_1 */
/* .sparse-switch */
/* 0x1000000 -> :sswitch_4 */
/* 0x7f000000 -> :sswitch_3 */
} // .end sparse-switch
} // .end method
/* # virtual methods */
void doReallyStop ( Boolean p0 ) {
/* .locals 2 */
/* .param p1, "retaining" # Z */
/* .prologue */
int v1 = 1; // const/4 v1, 0x1
/* .line 760 */
/* iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z */
/* if-nez v0, :cond_0 */
/* .line 761 */
/* iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z */
/* .line 762 */
/* iput-boolean p1, p0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z */
/* .line 763 */
v0 = this.mHandler;
(( android.os.Handler ) v0 ).removeMessages ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
/* .line 764 */
(( android.support.v4.app.FragmentActivity ) p0 ).onReallyStop ( ); // invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onReallyStop()V
/* .line 766 */
} // :cond_0
return;
} // .end method
public void dump ( java.lang.String p0, java.io.FileDescriptor p1, java.io.PrintWriter p2, java.lang.String[] p3 ) {
/* .locals 4 */
/* .param p1, "prefix" # Ljava/lang/String; */
/* .param p2, "fd" # Ljava/io/FileDescriptor; */
/* .param p3, "writer" # Ljava/io/PrintWriter; */
/* .param p4, "args" # [Ljava/lang/String; */
/* .prologue */
/* .line 646 */
/* const/16 v2, 0xb */
/* if-lt v1, v2, :cond_0 */
/* .line 650 */
} // :cond_0
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v1 = "Local FragmentActivity "; // const-string v1, "Local FragmentActivity "
(( java.io.PrintWriter ) p3 ).print ( v1 ); // invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 651 */
v1 = java.lang.System .identityHashCode ( p0 );
java.lang.Integer .toHexString ( v1 );
(( java.io.PrintWriter ) p3 ).print ( v1 ); // invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 652 */
final String v1 = " State:"; // const-string v1, " State:"
(( java.io.PrintWriter ) p3 ).println ( v1 ); // invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
/* .line 653 */
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
(( java.lang.StringBuilder ) v1 ).append ( p1 ); // invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v2 = " "; // const-string v2, " "
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* .line 654 */
/* .local v0, "innerPrefix":Ljava/lang/String; */
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v1 = "mCreated="; // const-string v1, "mCreated="
(( java.io.PrintWriter ) p3 ).print ( v1 ); // invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 655 */
/* iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z */
(( java.io.PrintWriter ) p3 ).print ( v1 ); // invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V
final String v1 = "mResumed="; // const-string v1, "mResumed="
(( java.io.PrintWriter ) p3 ).print ( v1 ); // invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 656 */
/* iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z */
(( java.io.PrintWriter ) p3 ).print ( v1 ); // invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V
final String v1 = " mStopped="; // const-string v1, " mStopped="
(( java.io.PrintWriter ) p3 ).print ( v1 ); // invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 657 */
/* iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z */
(( java.io.PrintWriter ) p3 ).print ( v1 ); // invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V
final String v1 = " mReallyStopped="; // const-string v1, " mReallyStopped="
(( java.io.PrintWriter ) p3 ).print ( v1 ); // invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 658 */
/* iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z */
(( java.io.PrintWriter ) p3 ).println ( v1 ); // invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V
/* .line 659 */
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v1 = "mLoadersStarted="; // const-string v1, "mLoadersStarted="
(( java.io.PrintWriter ) p3 ).print ( v1 ); // invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 660 */
/* iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z */
(( java.io.PrintWriter ) p3 ).println ( v1 ); // invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V
/* .line 661 */
v1 = this.mLoaderManager;
if ( v1 != null) { // if-eqz v1, :cond_1
/* .line 662 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v1 = "Loader Manager "; // const-string v1, "Loader Manager "
(( java.io.PrintWriter ) p3 ).print ( v1 ); // invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 663 */
v1 = this.mLoaderManager;
v1 = java.lang.System .identityHashCode ( v1 );
java.lang.Integer .toHexString ( v1 );
(( java.io.PrintWriter ) p3 ).print ( v1 ); // invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 664 */
final String v1 = ":"; // const-string v1, ":"
(( java.io.PrintWriter ) p3 ).println ( v1 ); // invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
/* .line 665 */
v1 = this.mLoaderManager;
/* new-instance v2, Ljava/lang/StringBuilder; */
/* invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V */
(( java.lang.StringBuilder ) v2 ).append ( p1 ); // invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v3 = " "; // const-string v3, " "
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).toString ( ); // invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
(( android.support.v4.app.LoaderManagerImpl ) v1 ).dump ( v2, p2, p3, p4 ); // invoke-virtual {v1, v2, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
/* .line 667 */
} // :cond_1
v1 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v1 ).dump ( p1, p2, p3, p4 ); // invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
/* .line 668 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v1 = "View Hierarchy:"; // const-string v1, "View Hierarchy:"
(( java.io.PrintWriter ) p3 ).println ( v1 ); // invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
/* .line 669 */
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
(( java.lang.StringBuilder ) v1 ).append ( p1 ); // invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v2 = " "; // const-string v2, " "
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
(( android.support.v4.app.FragmentActivity ) p0 ).getWindow ( ); // invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;
(( android.view.Window ) v2 ).getDecorView ( ); // invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;
/* invoke-direct {p0, v1, p3, v2}, Landroid/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V */
/* .line 670 */
return;
} // .end method
public java.lang.Object getLastCustomNonConfigurationInstance ( ) {
/* .locals 2 */
/* .prologue */
/* .line 610 */
(( android.support.v4.app.FragmentActivity ) p0 ).getLastNonConfigurationInstance ( ); // invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;
/* check-cast v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances; */
/* .line 612 */
/* .local v0, "nc":Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances; */
if ( v0 != null) { // if-eqz v0, :cond_0
v1 = this.custom;
} // :goto_0
} // :cond_0
int v1 = 0; // const/4 v1, 0x0
} // .end method
android.support.v4.app.LoaderManagerImpl getLoaderManager ( java.lang.String p0, Boolean p1, Boolean p2 ) {
/* .locals 2 */
/* .param p1, "who" # Ljava/lang/String; */
/* .param p2, "started" # Z */
/* .param p3, "create" # Z */
/* .prologue */
/* .line 863 */
v1 = this.mAllLoaderManagers;
/* if-nez v1, :cond_0 */
/* .line 864 */
/* new-instance v1, Landroid/support/v4/util/SimpleArrayMap; */
/* invoke-direct {v1}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V */
this.mAllLoaderManagers = v1;
/* .line 866 */
} // :cond_0
v1 = this.mAllLoaderManagers;
(( android.support.v4.util.SimpleArrayMap ) v1 ).get ( p1 ); // invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
/* check-cast v0, Landroid/support/v4/app/LoaderManagerImpl; */
/* .line 867 */
/* .local v0, "lm":Landroid/support/v4/app/LoaderManagerImpl; */
/* if-nez v0, :cond_2 */
/* .line 868 */
if ( p3 != null) { // if-eqz p3, :cond_1
/* .line 869 */
/* new-instance v0, Landroid/support/v4/app/LoaderManagerImpl; */
} // .end local v0 # "lm":Landroid/support/v4/app/LoaderManagerImpl;
/* invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Z)V */
/* .line 870 */
/* .restart local v0 # "lm":Landroid/support/v4/app/LoaderManagerImpl; */
v1 = this.mAllLoaderManagers;
(( android.support.v4.util.SimpleArrayMap ) v1 ).put ( p1, v0 ); // invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
/* .line 875 */
} // :cond_1
} // :goto_0
/* .line 873 */
} // :cond_2
(( android.support.v4.app.LoaderManagerImpl ) v0 ).updateActivity ( p0 ); // invoke-virtual {v0, p0}, Landroid/support/v4/app/LoaderManagerImpl;->updateActivity(Landroid/support/v4/app/FragmentActivity;)V
} // .end method
public android.support.v4.app.FragmentManager getSupportFragmentManager ( ) {
/* .locals 1 */
/* .prologue */
/* .line 805 */
v0 = this.mFragments;
} // .end method
public android.support.v4.app.LoaderManager getSupportLoaderManager ( ) {
/* .locals 3 */
/* .prologue */
int v2 = 1; // const/4 v2, 0x1
/* .line 854 */
v0 = this.mLoaderManager;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 855 */
v0 = this.mLoaderManager;
/* .line 859 */
} // :goto_0
/* .line 857 */
} // :cond_0
/* iput-boolean v2, p0, Landroid/support/v4/app/FragmentActivity;->mCheckedForLoaderManager:Z */
/* .line 858 */
final String v0 = "(root)"; // const-string v0, "(root)"
/* iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z */
(( android.support.v4.app.FragmentActivity ) p0 ).getLoaderManager ( v0, v1, v2 ); // invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
this.mLoaderManager = v0;
/* .line 859 */
v0 = this.mLoaderManager;
} // .end method
void invalidateSupportFragment ( java.lang.String p0 ) {
/* .locals 2 */
/* .param p1, "who" # Ljava/lang/String; */
/* .prologue */
/* .line 837 */
v1 = this.mAllLoaderManagers;
if ( v1 != null) { // if-eqz v1, :cond_0
/* .line 838 */
v1 = this.mAllLoaderManagers;
(( android.support.v4.util.SimpleArrayMap ) v1 ).get ( p1 ); // invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
/* check-cast v0, Landroid/support/v4/app/LoaderManagerImpl; */
/* .line 839 */
/* .local v0, "lm":Landroid/support/v4/app/LoaderManagerImpl; */
if ( v0 != null) { // if-eqz v0, :cond_0
/* iget-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z */
/* if-nez v1, :cond_0 */
/* .line 840 */
(( android.support.v4.app.LoaderManagerImpl ) v0 ).doDestroy ( ); // invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V
/* .line 841 */
v1 = this.mAllLoaderManagers;
(( android.support.v4.util.SimpleArrayMap ) v1 ).remove ( p1 ); // invoke-virtual {v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
/* .line 844 */
} // .end local v0 # "lm":Landroid/support/v4/app/LoaderManagerImpl;
} // :cond_0
return;
} // .end method
protected void onActivityResult ( Integer p0, Integer p1, android.content.Intent p2 ) {
/* .locals 5 */
/* .param p1, "requestCode" # I */
/* .param p2, "resultCode" # I */
/* .param p3, "data" # Landroid/content/Intent; */
/* .prologue */
/* .line 149 */
v2 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v2 ).noteStateNotSaved ( ); // invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V
/* .line 150 */
/* shr-int/lit8 v1, p1, 0x10 */
/* .line 151 */
/* .local v1, "index":I */
if ( v1 != null) { // if-eqz v1, :cond_3
/* .line 152 */
/* add-int/lit8 v1, v1, -0x1 */
/* .line 153 */
v2 = this.mFragments;
v2 = this.mActive;
if ( v2 != null) { // if-eqz v2, :cond_0
/* if-ltz v1, :cond_0 */
v2 = this.mFragments;
v2 = this.mActive;
v2 = (( java.util.ArrayList ) v2 ).size ( ); // invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
/* if-lt v1, v2, :cond_1 */
/* .line 154 */
} // :cond_0
final String v2 = "FragmentActivity"; // const-string v2, "FragmentActivity"
/* new-instance v3, Ljava/lang/StringBuilder; */
/* invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V */
final String v4 = "Activity result fragment index out of range: 0x"; // const-string v4, "Activity result fragment index out of range: 0x"
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
java.lang.Integer .toHexString ( p1 );
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).toString ( ); // invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .w ( v2,v3 );
/* .line 169 */
} // :goto_0
return;
/* .line 158 */
} // :cond_1
v2 = this.mFragments;
v2 = this.mActive;
(( java.util.ArrayList ) v2 ).get ( v1 ); // invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v0, Landroid/support/v4/app/Fragment; */
/* .line 159 */
/* .local v0, "frag":Landroid/support/v4/app/Fragment; */
/* if-nez v0, :cond_2 */
/* .line 160 */
final String v2 = "FragmentActivity"; // const-string v2, "FragmentActivity"
/* new-instance v3, Ljava/lang/StringBuilder; */
/* invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V */
final String v4 = "Activity result no fragment exists for index: 0x"; // const-string v4, "Activity result no fragment exists for index: 0x"
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
java.lang.Integer .toHexString ( p1 );
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).toString ( ); // invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .w ( v2,v3 );
/* .line 163 */
} // :cond_2
/* const v2, 0xffff */
/* and-int/2addr v2, p1 */
(( android.support.v4.app.Fragment ) v0 ).onActivityResult ( v2, p2, p3 ); // invoke-virtual {v0, v2, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V
/* .line 168 */
} // .end local v0 # "frag":Landroid/support/v4/app/Fragment;
} // :cond_3
/* invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V */
} // .end method
public void onAttachFragment ( android.support.v4.app.Fragment p0 ) {
/* .locals 0 */
/* .param p1, "fragment" # Landroid/support/v4/app/Fragment; */
/* .prologue */
/* .line 798 */
return;
} // .end method
public void onBackPressed ( ) {
/* .locals 1 */
/* .prologue */
/* .line 176 */
v0 = this.mFragments;
v0 = (( android.support.v4.app.FragmentManagerImpl ) v0 ).popBackStackImmediate ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackImmediate()Z
/* if-nez v0, :cond_0 */
/* .line 177 */
(( android.support.v4.app.FragmentActivity ) p0 ).supportFinishAfterTransition ( ); // invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->supportFinishAfterTransition()V
/* .line 179 */
} // :cond_0
return;
} // .end method
public void onConfigurationChanged ( android.content.res.Configuration p0 ) {
/* .locals 1 */
/* .param p1, "newConfig" # Landroid/content/res/Configuration; */
/* .prologue */
/* .line 240 */
/* invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V */
/* .line 241 */
v0 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchConfigurationChanged ( p1 ); // invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
/* .line 242 */
return;
} // .end method
protected void onCreate ( android.os.Bundle p0 ) {
/* .locals 5 */
/* .param p1, "savedInstanceState" # Landroid/os/Bundle; */
/* .prologue */
int v2 = 0; // const/4 v2, 0x0
/* .line 249 */
v3 = this.mFragments;
v4 = this.mContainer;
(( android.support.v4.app.FragmentManagerImpl ) v3 ).attachActivity ( p0, v4, v2 ); // invoke-virtual {v3, p0, v4, v2}, Landroid/support/v4/app/FragmentManagerImpl;->attachActivity(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V
/* .line 251 */
(( android.support.v4.app.FragmentActivity ) p0 ).getLayoutInflater ( ); // invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;
(( android.view.LayoutInflater ) v3 ).getFactory ( ); // invoke-virtual {v3}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;
/* if-nez v3, :cond_0 */
/* .line 252 */
(( android.support.v4.app.FragmentActivity ) p0 ).getLayoutInflater ( ); // invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;
(( android.view.LayoutInflater ) v3 ).setFactory ( p0 ); // invoke-virtual {v3, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V
/* .line 255 */
} // :cond_0
/* invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V */
/* .line 257 */
(( android.support.v4.app.FragmentActivity ) p0 ).getLastNonConfigurationInstance ( ); // invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;
/* check-cast v0, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances; */
/* .line 259 */
/* .local v0, "nc":Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances; */
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 260 */
v3 = this.loaders;
this.mAllLoaderManagers = v3;
/* .line 262 */
} // :cond_1
if ( p1 != null) { // if-eqz p1, :cond_3
/* .line 263 */
final String v3 = "android:support:fragments"; // const-string v3, "android:support:fragments"
(( android.os.Bundle ) p1 ).getParcelable ( v3 ); // invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
/* .line 264 */
/* .local v1, "p":Landroid/os/Parcelable; */
v3 = this.mFragments;
if ( v0 != null) { // if-eqz v0, :cond_2
v2 = this.fragments;
} // :cond_2
(( android.support.v4.app.FragmentManagerImpl ) v3 ).restoreAllState ( v1, v2 ); // invoke-virtual {v3, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
/* .line 266 */
} // .end local v1 # "p":Landroid/os/Parcelable;
} // :cond_3
v2 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v2 ).dispatchCreate ( ); // invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V
/* .line 267 */
return;
} // .end method
public Boolean onCreatePanelMenu ( Integer p0, android.view.Menu p1 ) {
/* .locals 3 */
/* .param p1, "featureId" # I */
/* .param p2, "menu" # Landroid/view/Menu; */
/* .prologue */
/* .line 274 */
/* if-nez p1, :cond_1 */
/* .line 275 */
v0 = /* invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z */
/* .line 276 */
/* .local v0, "show":Z */
v1 = this.mFragments;
(( android.support.v4.app.FragmentActivity ) p0 ).getMenuInflater ( ); // invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;
v1 = (( android.support.v4.app.FragmentManagerImpl ) v1 ).dispatchCreateOptionsMenu ( p2, v2 ); // invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
/* or-int/2addr v0, v1 */
/* .line 277 */
/* const/16 v2, 0xb */
/* if-lt v1, v2, :cond_0 */
/* .line 285 */
} // .end local v0 # "show":Z
} // :goto_0
/* .line 283 */
/* .restart local v0 # "show":Z */
} // :cond_0
int v0 = 1; // const/4 v0, 0x1
/* .line 285 */
} // .end local v0 # "show":Z
} // :cond_1
v0 = /* invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z */
} // .end method
public android.view.View onCreateView ( java.lang.String p0, android.content.Context p1, android.util.AttributeSet p2 ) {
/* .locals 2 */
/* .param p1, "name" # Ljava/lang/String; */
/* .param p2, "context" # Landroid/content/Context; */
/* .annotation build Landroid/support/annotation/NonNull; */
} // .end annotation
} // .end param
/* .param p3, "attrs" # Landroid/util/AttributeSet; */
/* .annotation build Landroid/support/annotation/NonNull; */
} // .end annotation
} // .end param
/* .prologue */
/* .line 293 */
final String v1 = "fragment"; // const-string v1, "fragment"
v1 = (( java.lang.String ) v1 ).equals ( p1 ); // invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v1, :cond_1 */
/* .line 294 */
/* invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View; */
/* .line 301 */
} // :cond_0
} // :goto_0
/* .line 297 */
} // :cond_1
v1 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v1 ).onCreateView ( p1, p2, p3 ); // invoke-virtual {v1, p1, p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
/* .line 298 */
/* .local v0, "v":Landroid/view/View; */
/* if-nez v0, :cond_0 */
/* .line 299 */
/* invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View; */
} // .end method
protected void onDestroy ( ) {
/* .locals 1 */
/* .prologue */
/* .line 309 */
/* invoke-super {p0}, Landroid/app/Activity;->onDestroy()V */
/* .line 311 */
int v0 = 0; // const/4 v0, 0x0
(( android.support.v4.app.FragmentActivity ) p0 ).doReallyStop ( v0 ); // invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V
/* .line 313 */
v0 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchDestroy ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V
/* .line 314 */
v0 = this.mLoaderManager;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 315 */
v0 = this.mLoaderManager;
(( android.support.v4.app.LoaderManagerImpl ) v0 ).doDestroy ( ); // invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V
/* .line 317 */
} // :cond_0
return;
} // .end method
public Boolean onKeyDown ( Integer p0, android.view.KeyEvent p1 ) {
/* .locals 2 */
/* .param p1, "keyCode" # I */
/* .param p2, "event" # Landroid/view/KeyEvent; */
/* .prologue */
/* .line 324 */
int v1 = 5; // const/4 v1, 0x5
/* if-ge v0, v1, :cond_0 */
int v0 = 4; // const/4 v0, 0x4
/* if-ne p1, v0, :cond_0 */
v0 = (( android.view.KeyEvent ) p2 ).getRepeatCount ( ); // invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I
/* if-nez v0, :cond_0 */
/* .line 329 */
(( android.support.v4.app.FragmentActivity ) p0 ).onBackPressed ( ); // invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V
/* .line 330 */
int v0 = 1; // const/4 v0, 0x1
/* .line 333 */
} // :goto_0
} // :cond_0
v0 = /* invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z */
} // .end method
public void onLowMemory ( ) {
/* .locals 1 */
/* .prologue */
/* .line 341 */
/* invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V */
/* .line 342 */
v0 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchLowMemory ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchLowMemory()V
/* .line 343 */
return;
} // .end method
public Boolean onMenuItemSelected ( Integer p0, android.view.MenuItem p1 ) {
/* .locals 1 */
/* .param p1, "featureId" # I */
/* .param p2, "item" # Landroid/view/MenuItem; */
/* .prologue */
/* .line 350 */
v0 = /* invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 351 */
int v0 = 1; // const/4 v0, 0x1
/* .line 362 */
} // :goto_0
/* .line 354 */
} // :cond_0
/* sparse-switch p1, :sswitch_data_0 */
/* .line 362 */
int v0 = 0; // const/4 v0, 0x0
/* .line 356 */
/* :sswitch_0 */
v0 = this.mFragments;
v0 = (( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchOptionsItemSelected ( p2 ); // invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
/* .line 359 */
/* :sswitch_1 */
v0 = this.mFragments;
v0 = (( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchContextItemSelected ( p2 ); // invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z
/* .line 354 */
/* nop */
/* :sswitch_data_0 */
/* .sparse-switch */
/* 0x0 -> :sswitch_0 */
/* 0x6 -> :sswitch_1 */
} // .end sparse-switch
} // .end method
protected void onNewIntent ( android.content.Intent p0 ) {
/* .locals 1 */
/* .param p1, "intent" # Landroid/content/Intent; */
/* .prologue */
/* .line 405 */
/* invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V */
/* .line 406 */
v0 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).noteStateNotSaved ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V
/* .line 407 */
return;
} // .end method
public void onPanelClosed ( Integer p0, android.view.Menu p1 ) {
/* .locals 1 */
/* .param p1, "featureId" # I */
/* .param p2, "menu" # Landroid/view/Menu; */
/* .prologue */
/* .line 371 */
/* packed-switch p1, :pswitch_data_0 */
/* .line 376 */
} // :goto_0
/* invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V */
/* .line 377 */
return;
/* .line 373 */
/* :pswitch_0 */
v0 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchOptionsMenuClosed ( p2 ); // invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V
/* .line 371 */
/* nop */
/* :pswitch_data_0 */
/* .packed-switch 0x0 */
/* :pswitch_0 */
} // .end packed-switch
} // .end method
protected void onPause ( ) {
/* .locals 2 */
/* .prologue */
int v1 = 2; // const/4 v1, 0x2
/* .line 384 */
/* invoke-super {p0}, Landroid/app/Activity;->onPause()V */
/* .line 385 */
int v0 = 0; // const/4 v0, 0x0
/* iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z */
/* .line 386 */
v0 = this.mHandler;
v0 = (( android.os.Handler ) v0 ).hasMessages ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 387 */
v0 = this.mHandler;
(( android.os.Handler ) v0 ).removeMessages ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
/* .line 388 */
(( android.support.v4.app.FragmentActivity ) p0 ).onResumeFragments ( ); // invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V
/* .line 390 */
} // :cond_0
v0 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchPause ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPause()V
/* .line 391 */
return;
} // .end method
protected void onPostResume ( ) {
/* .locals 2 */
/* .prologue */
/* .line 431 */
/* invoke-super {p0}, Landroid/app/Activity;->onPostResume()V */
/* .line 432 */
v0 = this.mHandler;
int v1 = 2; // const/4 v1, 0x2
(( android.os.Handler ) v0 ).removeMessages ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
/* .line 433 */
(( android.support.v4.app.FragmentActivity ) p0 ).onResumeFragments ( ); // invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V
/* .line 434 */
v0 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).execPendingActions ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z
/* .line 435 */
return;
} // .end method
protected Boolean onPrepareOptionsPanel ( android.view.View p0, android.view.Menu p1 ) {
/* .locals 1 */
/* .param p1, "view" # Landroid/view/View; */
/* .param p2, "menu" # Landroid/view/Menu; */
/* .prologue */
/* .line 469 */
int v0 = 0; // const/4 v0, 0x0
v0 = /* invoke-super {p0, v0, p1, p2}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z */
} // .end method
public Boolean onPreparePanel ( Integer p0, android.view.View p1, android.view.Menu p2 ) {
/* .locals 2 */
/* .param p1, "featureId" # I */
/* .param p2, "view" # Landroid/view/View; */
/* .param p3, "menu" # Landroid/view/Menu; */
/* .prologue */
/* .line 452 */
/* if-nez p1, :cond_1 */
if ( p3 != null) { // if-eqz p3, :cond_1
/* .line 453 */
/* iget-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z */
if ( v1 != null) { // if-eqz v1, :cond_0
/* .line 454 */
int v1 = 0; // const/4 v1, 0x0
/* iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z */
/* .line 455 */
/* .line 456 */
(( android.support.v4.app.FragmentActivity ) p0 ).onCreatePanelMenu ( p1, p3 ); // invoke-virtual {p0, p1, p3}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z
/* .line 458 */
} // :cond_0
v0 = (( android.support.v4.app.FragmentActivity ) p0 ).onPrepareOptionsPanel ( p2, p3 ); // invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
/* .line 459 */
/* .local v0, "goforit":Z */
v1 = this.mFragments;
v1 = (( android.support.v4.app.FragmentManagerImpl ) v1 ).dispatchPrepareOptionsMenu ( p3 ); // invoke-virtual {v1, p3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
/* or-int/2addr v0, v1 */
/* .line 462 */
} // .end local v0 # "goforit":Z
} // :goto_0
} // :cond_1
v0 = /* invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z */
} // .end method
void onReallyStop ( ) {
/* .locals 1 */
/* .prologue */
/* .line 776 */
/* iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 777 */
int v0 = 0; // const/4 v0, 0x0
/* iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z */
/* .line 778 */
v0 = this.mLoaderManager;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 779 */
/* iget-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z */
/* if-nez v0, :cond_1 */
/* .line 780 */
v0 = this.mLoaderManager;
(( android.support.v4.app.LoaderManagerImpl ) v0 ).doStop ( ); // invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doStop()V
/* .line 787 */
} // :cond_0
} // :goto_0
v0 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchReallyStop ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchReallyStop()V
/* .line 788 */
return;
/* .line 782 */
} // :cond_1
v0 = this.mLoaderManager;
(( android.support.v4.app.LoaderManagerImpl ) v0 ).doRetain ( ); // invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V
} // .end method
protected void onResume ( ) {
/* .locals 2 */
/* .prologue */
/* .line 420 */
/* invoke-super {p0}, Landroid/app/Activity;->onResume()V */
/* .line 421 */
v0 = this.mHandler;
int v1 = 2; // const/4 v1, 0x2
(( android.os.Handler ) v0 ).sendEmptyMessage ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
/* .line 422 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mResumed:Z */
/* .line 423 */
v0 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).execPendingActions ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z
/* .line 424 */
return;
} // .end method
protected void onResumeFragments ( ) {
/* .locals 1 */
/* .prologue */
/* .line 444 */
v0 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchResume ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V
/* .line 445 */
return;
} // .end method
public java.lang.Object onRetainCustomNonConfigurationInstance ( ) {
/* .locals 1 */
/* .prologue */
/* .line 602 */
int v0 = 0; // const/4 v0, 0x0
} // .end method
public final java.lang.Object onRetainNonConfigurationInstance ( ) {
/* .locals 11 */
/* .prologue */
int v9 = 0; // const/4 v9, 0x0
/* .line 479 */
/* iget-boolean v8, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z */
if ( v8 != null) { // if-eqz v8, :cond_0
/* .line 480 */
int v8 = 1; // const/4 v8, 0x1
(( android.support.v4.app.FragmentActivity ) p0 ).doReallyStop ( v8 ); // invoke-virtual {p0, v8}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V
/* .line 483 */
} // :cond_0
(( android.support.v4.app.FragmentActivity ) p0 ).onRetainCustomNonConfigurationInstance ( ); // invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
/* .line 485 */
/* .local v1, "custom":Ljava/lang/Object; */
v8 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v8 ).retainNonConfig ( ); // invoke-virtual {v8}, Landroid/support/v4/app/FragmentManagerImpl;->retainNonConfig()Ljava/util/ArrayList;
/* .line 486 */
/* .local v2, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;" */
int v7 = 0; // const/4 v7, 0x0
/* .line 487 */
/* .local v7, "retainLoaders":Z */
v8 = this.mAllLoaderManagers;
if ( v8 != null) { // if-eqz v8, :cond_3
/* .line 490 */
v8 = this.mAllLoaderManagers;
v0 = (( android.support.v4.util.SimpleArrayMap ) v8 ).size ( ); // invoke-virtual {v8}, Landroid/support/v4/util/SimpleArrayMap;->size()I
/* .line 491 */
/* .local v0, "N":I */
/* new-array v5, v0, [Landroid/support/v4/app/LoaderManagerImpl; */
/* .line 492 */
/* .local v5, "loaders":[Landroid/support/v4/app/LoaderManagerImpl; */
/* add-int/lit8 v3, v0, -0x1 */
/* .local v3, "i":I */
} // :goto_0
/* if-ltz v3, :cond_1 */
/* .line 493 */
v8 = this.mAllLoaderManagers;
(( android.support.v4.util.SimpleArrayMap ) v8 ).valueAt ( v3 ); // invoke-virtual {v8, v3}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;
/* check-cast v8, Landroid/support/v4/app/LoaderManagerImpl; */
/* aput-object v8, v5, v3 */
/* .line 492 */
/* add-int/lit8 v3, v3, -0x1 */
/* .line 495 */
} // :cond_1
int v3 = 0; // const/4 v3, 0x0
} // :goto_1
/* if-ge v3, v0, :cond_3 */
/* .line 496 */
/* aget-object v4, v5, v3 */
/* .line 497 */
/* .local v4, "lm":Landroid/support/v4/app/LoaderManagerImpl; */
/* iget-boolean v8, v4, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z */
if ( v8 != null) { // if-eqz v8, :cond_2
/* .line 498 */
int v7 = 1; // const/4 v7, 0x1
/* .line 495 */
} // :goto_2
/* add-int/lit8 v3, v3, 0x1 */
/* .line 500 */
} // :cond_2
(( android.support.v4.app.LoaderManagerImpl ) v4 ).doDestroy ( ); // invoke-virtual {v4}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V
/* .line 501 */
v8 = this.mAllLoaderManagers;
v10 = this.mWho;
(( android.support.v4.util.SimpleArrayMap ) v8 ).remove ( v10 ); // invoke-virtual {v8, v10}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
/* .line 505 */
} // .end local v0 # "N":I
} // .end local v3 # "i":I
} // .end local v4 # "lm":Landroid/support/v4/app/LoaderManagerImpl;
} // .end local v5 # "loaders":[Landroid/support/v4/app/LoaderManagerImpl;
} // :cond_3
/* if-nez v2, :cond_4 */
/* if-nez v7, :cond_4 */
/* if-nez v1, :cond_4 */
/* move-object v6, v9 */
/* .line 515 */
} // :goto_3
/* .line 509 */
} // :cond_4
/* new-instance v6, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances; */
/* invoke-direct {v6}, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;-><init>()V */
/* .line 510 */
/* .local v6, "nci":Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances; */
this.activity = v9;
/* .line 511 */
this.custom = v1;
/* .line 512 */
this.children = v9;
/* .line 513 */
this.fragments = v2;
/* .line 514 */
v8 = this.mAllLoaderManagers;
this.loaders = v8;
} // .end method
protected void onSaveInstanceState ( android.os.Bundle p0 ) {
/* .locals 2 */
/* .param p1, "outState" # Landroid/os/Bundle; */
/* .prologue */
/* .line 523 */
/* invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V */
/* .line 524 */
v1 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v1 ).saveAllState ( ); // invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;
/* .line 525 */
/* .local v0, "p":Landroid/os/Parcelable; */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 526 */
final String v1 = "android:support:fragments"; // const-string v1, "android:support:fragments"
(( android.os.Bundle ) p1 ).putParcelable ( v1, v0 ); // invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
/* .line 528 */
} // :cond_0
return;
} // .end method
protected void onStart ( ) {
/* .locals 8 */
/* .prologue */
int v7 = 0; // const/4 v7, 0x0
int v6 = 1; // const/4 v6, 0x1
/* .line 536 */
/* invoke-super {p0}, Landroid/app/Activity;->onStart()V */
/* .line 538 */
/* iput-boolean v7, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z */
/* .line 539 */
/* iput-boolean v7, p0, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z */
/* .line 540 */
v4 = this.mHandler;
(( android.os.Handler ) v4 ).removeMessages ( v6 ); // invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V
/* .line 542 */
/* iget-boolean v4, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z */
/* if-nez v4, :cond_0 */
/* .line 543 */
/* iput-boolean v6, p0, Landroid/support/v4/app/FragmentActivity;->mCreated:Z */
/* .line 544 */
v4 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v4 ).dispatchActivityCreated ( ); // invoke-virtual {v4}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V
/* .line 547 */
} // :cond_0
v4 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v4 ).noteStateNotSaved ( ); // invoke-virtual {v4}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V
/* .line 548 */
v4 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v4 ).execPendingActions ( ); // invoke-virtual {v4}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z
/* .line 550 */
/* iget-boolean v4, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z */
/* if-nez v4, :cond_2 */
/* .line 551 */
/* iput-boolean v6, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z */
/* .line 552 */
v4 = this.mLoaderManager;
if ( v4 != null) { // if-eqz v4, :cond_3
/* .line 553 */
v4 = this.mLoaderManager;
(( android.support.v4.app.LoaderManagerImpl ) v4 ).doStart ( ); // invoke-virtual {v4}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V
/* .line 561 */
} // :cond_1
} // :goto_0
/* iput-boolean v6, p0, Landroid/support/v4/app/FragmentActivity;->mCheckedForLoaderManager:Z */
/* .line 565 */
} // :cond_2
v4 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v4 ).dispatchStart ( ); // invoke-virtual {v4}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V
/* .line 566 */
v4 = this.mAllLoaderManagers;
if ( v4 != null) { // if-eqz v4, :cond_5
/* .line 567 */
v4 = this.mAllLoaderManagers;
v0 = (( android.support.v4.util.SimpleArrayMap ) v4 ).size ( ); // invoke-virtual {v4}, Landroid/support/v4/util/SimpleArrayMap;->size()I
/* .line 568 */
/* .local v0, "N":I */
/* new-array v3, v0, [Landroid/support/v4/app/LoaderManagerImpl; */
/* .line 569 */
/* .local v3, "loaders":[Landroid/support/v4/app/LoaderManagerImpl; */
/* add-int/lit8 v1, v0, -0x1 */
/* .local v1, "i":I */
} // :goto_1
/* if-ltz v1, :cond_4 */
/* .line 570 */
v4 = this.mAllLoaderManagers;
(( android.support.v4.util.SimpleArrayMap ) v4 ).valueAt ( v1 ); // invoke-virtual {v4, v1}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;
/* check-cast v4, Landroid/support/v4/app/LoaderManagerImpl; */
/* aput-object v4, v3, v1 */
/* .line 569 */
/* add-int/lit8 v1, v1, -0x1 */
/* .line 554 */
} // .end local v0 # "N":I
} // .end local v1 # "i":I
} // .end local v3 # "loaders":[Landroid/support/v4/app/LoaderManagerImpl;
} // :cond_3
/* iget-boolean v4, p0, Landroid/support/v4/app/FragmentActivity;->mCheckedForLoaderManager:Z */
/* if-nez v4, :cond_1 */
/* .line 555 */
final String v4 = "(root)"; // const-string v4, "(root)"
/* iget-boolean v5, p0, Landroid/support/v4/app/FragmentActivity;->mLoadersStarted:Z */
(( android.support.v4.app.FragmentActivity ) p0 ).getLoaderManager ( v4, v5, v7 ); // invoke-virtual {p0, v4, v5, v7}, Landroid/support/v4/app/FragmentActivity;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
this.mLoaderManager = v4;
/* .line 557 */
v4 = this.mLoaderManager;
if ( v4 != null) { // if-eqz v4, :cond_1
v4 = this.mLoaderManager;
/* iget-boolean v4, v4, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z */
/* if-nez v4, :cond_1 */
/* .line 558 */
v4 = this.mLoaderManager;
(( android.support.v4.app.LoaderManagerImpl ) v4 ).doStart ( ); // invoke-virtual {v4}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V
/* .line 572 */
/* .restart local v0 # "N":I */
/* .restart local v1 # "i":I */
/* .restart local v3 # "loaders":[Landroid/support/v4/app/LoaderManagerImpl; */
} // :cond_4
int v1 = 0; // const/4 v1, 0x0
} // :goto_2
/* if-ge v1, v0, :cond_5 */
/* .line 573 */
/* aget-object v2, v3, v1 */
/* .line 574 */
/* .local v2, "lm":Landroid/support/v4/app/LoaderManagerImpl; */
(( android.support.v4.app.LoaderManagerImpl ) v2 ).finishRetain ( ); // invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl;->finishRetain()V
/* .line 575 */
(( android.support.v4.app.LoaderManagerImpl ) v2 ).doReportStart ( ); // invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl;->doReportStart()V
/* .line 572 */
/* add-int/lit8 v1, v1, 0x1 */
/* .line 578 */
} // .end local v0 # "N":I
} // .end local v1 # "i":I
} // .end local v2 # "lm":Landroid/support/v4/app/LoaderManagerImpl;
} // .end local v3 # "loaders":[Landroid/support/v4/app/LoaderManagerImpl;
} // :cond_5
return;
} // .end method
protected void onStop ( ) {
/* .locals 2 */
/* .prologue */
int v1 = 1; // const/4 v1, 0x1
/* .line 585 */
/* invoke-super {p0}, Landroid/app/Activity;->onStop()V */
/* .line 587 */
/* iput-boolean v1, p0, Landroid/support/v4/app/FragmentActivity;->mStopped:Z */
/* .line 588 */
v0 = this.mHandler;
(( android.os.Handler ) v0 ).sendEmptyMessage ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
/* .line 590 */
v0 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v0 ).dispatchStop ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStop()V
/* .line 591 */
return;
} // .end method
public void setEnterSharedElementCallback ( android.support.v4.app.SharedElementCallback p0 ) {
/* .locals 0 */
/* .param p1, "callback" # Landroid/support/v4/app/SharedElementCallback; */
/* .prologue */
/* .line 203 */
android.support.v4.app.ActivityCompat .setEnterSharedElementCallback ( p0,p1 );
/* .line 204 */
return;
} // .end method
public void setExitSharedElementCallback ( android.support.v4.app.SharedElementCallback p0 ) {
/* .locals 0 */
/* .param p1, "listener" # Landroid/support/v4/app/SharedElementCallback; */
/* .prologue */
/* .line 216 */
android.support.v4.app.ActivityCompat .setExitSharedElementCallback ( p0,p1 );
/* .line 217 */
return;
} // .end method
public void startActivityForResult ( android.content.Intent p0, Integer p1 ) {
/* .locals 2 */
/* .param p1, "intent" # Landroid/content/Intent; */
/* .param p2, "requestCode" # I */
/* .prologue */
/* .line 814 */
int v0 = -1; // const/4 v0, -0x1
/* if-eq p2, v0, :cond_0 */
/* const/high16 v0, -0x10000 */
/* and-int/2addr v0, p2 */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 815 */
/* new-instance v0, Ljava/lang/IllegalArgumentException; */
final String v1 = "Can only use lower 16 bits for requestCode"; // const-string v1, "Can only use lower 16 bits for requestCode"
/* invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 817 */
} // :cond_0
/* invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V */
/* .line 818 */
return;
} // .end method
public void startActivityFromFragment ( android.support.v4.app.Fragment p0, android.content.Intent p1, Integer p2 ) {
/* .locals 2 */
/* .param p1, "fragment" # Landroid/support/v4/app/Fragment; */
/* .param p2, "intent" # Landroid/content/Intent; */
/* .param p3, "requestCode" # I */
/* .prologue */
int v0 = -1; // const/4 v0, -0x1
/* .line 825 */
/* if-ne p3, v0, :cond_0 */
/* .line 826 */
/* invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V */
/* .line 833 */
} // :goto_0
return;
/* .line 829 */
} // :cond_0
/* const/high16 v0, -0x10000 */
/* and-int/2addr v0, p3 */
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 830 */
/* new-instance v0, Ljava/lang/IllegalArgumentException; */
final String v1 = "Can only use lower 16 bits for requestCode"; // const-string v1, "Can only use lower 16 bits for requestCode"
/* invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 832 */
} // :cond_1
/* iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I */
/* add-int/lit8 v0, v0, 0x1 */
/* shl-int/lit8 v0, v0, 0x10 */
/* const v1, 0xffff */
/* and-int/2addr v1, p3 */
/* add-int/2addr v0, v1 */
/* invoke-super {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V */
} // .end method
public void supportFinishAfterTransition ( ) {
/* .locals 0 */
/* .prologue */
/* .line 191 */
android.support.v4.app.ActivityCompat .finishAfterTransition ( p0 );
/* .line 192 */
return;
} // .end method
public void supportInvalidateOptionsMenu ( ) {
/* .locals 2 */
/* .prologue */
/* .line 623 */
/* const/16 v1, 0xb */
/* if-lt v0, v1, :cond_0 */
/* .line 626 */
android.support.v4.app.ActivityCompatHoneycomb .invalidateOptionsMenu ( p0 );
/* .line 633 */
} // :goto_0
return;
/* .line 632 */
} // :cond_0
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z */
} // .end method
public void supportPostponeEnterTransition ( ) {
/* .locals 0 */
/* .prologue */
/* .line 224 */
android.support.v4.app.ActivityCompat .postponeEnterTransition ( p0 );
/* .line 225 */
return;
} // .end method
public void supportStartPostponedEnterTransition ( ) {
/* .locals 0 */
/* .prologue */
/* .line 232 */
android.support.v4.app.ActivityCompat .startPostponedEnterTransition ( p0 );
/* .line 233 */
return;
} // .end method
