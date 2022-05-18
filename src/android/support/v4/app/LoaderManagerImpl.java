class android.support.v4.app.LoaderManagerImpl extends android.support.v4.app.LoaderManager {
	 /* .source "LoaderManager.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
	 /* } */
} // .end annotation
/* # static fields */
static Boolean DEBUG;
static final java.lang.String TAG;
/* # instance fields */
android.support.v4.app.FragmentActivity mActivity;
Boolean mCreatingLoader;
final android.support.v4.util.SparseArrayCompat mInactiveLoaders;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Landroid/support/v4/util/SparseArrayCompat", */
/* "<", */
/* "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
final android.support.v4.util.SparseArrayCompat mLoaders;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Landroid/support/v4/util/SparseArrayCompat", */
/* "<", */
/* "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
Boolean mRetaining;
Boolean mRetainingStarted;
Boolean mStarted;
final java.lang.String mWho;
/* # direct methods */
static android.support.v4.app.LoaderManagerImpl ( ) {
/* .locals 1 */
/* .prologue */
/* .line 189 */
int v0 = 0; // const/4 v0, 0x0
android.support.v4.app.LoaderManagerImpl.DEBUG = (v0!= 0);
return;
} // .end method
 android.support.v4.app.LoaderManagerImpl ( ) {
/* .locals 1 */
/* .param p1, "who" # Ljava/lang/String; */
/* .param p2, "activity" # Landroid/support/v4/app/FragmentActivity; */
/* .param p3, "started" # Z */
/* .prologue */
/* .line 477 */
/* invoke-direct {p0}, Landroid/support/v4/app/LoaderManager;-><init>()V */
/* .line 194 */
/* new-instance v0, Landroid/support/v4/util/SparseArrayCompat; */
/* invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V */
this.mLoaders = v0;
/* .line 200 */
/* new-instance v0, Landroid/support/v4/util/SparseArrayCompat; */
/* invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V */
this.mInactiveLoaders = v0;
/* .line 478 */
this.mWho = p1;
/* .line 479 */
this.mActivity = p2;
/* .line 480 */
/* iput-boolean p3, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z */
/* .line 481 */
return;
} // .end method
private android.support.v4.app.LoaderManagerImpl$LoaderInfo createAndInstallLoader ( Integer p0, android.os.Bundle p1, android.support.v4.app.LoaderManager$LoaderCallbacks p2 ) {
/* .locals 3 */
/* .param p1, "id" # I */
/* .param p2, "args" # Landroid/os/Bundle; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(I", */
/* "Landroid/os/Bundle;", */
/* "Landroid/support/v4/app/LoaderManager$LoaderCallbacks", */
/* "<", */
/* "Ljava/lang/Object;", */
/* ">;)", */
/* "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;" */
/* } */
} // .end annotation
/* .prologue */
/* .local p3, "callback":Landroid/support/v4/app/LoaderManager$LoaderCallbacks;, "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;" */
int v2 = 0; // const/4 v2, 0x0
/* .line 498 */
int v1 = 1; // const/4 v1, 0x1
try { // :try_start_0
/* iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z */
/* .line 499 */
/* invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
/* .line 500 */
/* .local v0, "info":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
(( android.support.v4.app.LoaderManagerImpl ) p0 ).installLoader ( v0 ); // invoke-virtual {p0, v0}, Landroid/support/v4/app/LoaderManagerImpl;->installLoader(Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V
/* :try_end_0 */
/* .catchall {:try_start_0 ..:try_end_0} :catchall_0 */
/* .line 503 */
/* iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z */
} // .end local v0 # "info":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
/* :catchall_0 */
/* move-exception v1 */
/* iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z */
/* throw v1 */
} // .end method
private android.support.v4.app.LoaderManagerImpl$LoaderInfo createLoader ( Integer p0, android.os.Bundle p1, android.support.v4.app.LoaderManager$LoaderCallbacks p2 ) {
/* .locals 2 */
/* .param p1, "id" # I */
/* .param p2, "args" # Landroid/os/Bundle; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(I", */
/* "Landroid/os/Bundle;", */
/* "Landroid/support/v4/app/LoaderManager$LoaderCallbacks", */
/* "<", */
/* "Ljava/lang/Object;", */
/* ">;)", */
/* "Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;" */
/* } */
} // .end annotation
/* .prologue */
/* .line 489 */
/* .local p3, "callback":Landroid/support/v4/app/LoaderManager$LoaderCallbacks;, "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;" */
/* new-instance v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
/* invoke-direct {v0, p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;-><init>(Landroid/support/v4/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)V */
/* .line 490 */
/* .local v0, "info":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
/* .line 491 */
/* .local v1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/lang/Object;>;" */
this.mLoader = v1;
/* .line 492 */
} // .end method
/* # virtual methods */
public void destroyLoader ( Integer p0 ) {
/* .locals 5 */
/* .param p1, "id" # I */
/* .prologue */
/* .line 658 */
/* iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z */
if ( v2 != null) { // if-eqz v2, :cond_0
/* .line 659 */
/* new-instance v2, Ljava/lang/IllegalStateException; */
final String v3 = "Called while creating a loader"; // const-string v3, "Called while creating a loader"
/* invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
/* throw v2 */
/* .line 662 */
} // :cond_0
/* sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z */
if ( v2 != null) { // if-eqz v2, :cond_1
final String v2 = "LoaderManager"; // const-string v2, "LoaderManager"
/* new-instance v3, Ljava/lang/StringBuilder; */
/* invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V */
final String v4 = "destroyLoader in "; // const-string v4, "destroyLoader in "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).append ( p0 ); // invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
final String v4 = " of "; // const-string v4, " of "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).append ( p1 ); // invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).toString ( ); // invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .v ( v2,v3 );
/* .line 663 */
} // :cond_1
v2 = this.mLoaders;
v0 = (( android.support.v4.util.SparseArrayCompat ) v2 ).indexOfKey ( p1 ); // invoke-virtual {v2, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I
/* .line 664 */
/* .local v0, "idx":I */
/* if-ltz v0, :cond_2 */
/* .line 665 */
v2 = this.mLoaders;
(( android.support.v4.util.SparseArrayCompat ) v2 ).valueAt ( v0 ); // invoke-virtual {v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
/* check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
/* .line 666 */
/* .local v1, "info":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
v2 = this.mLoaders;
(( android.support.v4.util.SparseArrayCompat ) v2 ).removeAt ( v0 ); // invoke-virtual {v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V
/* .line 667 */
(( android.support.v4.app.LoaderManagerImpl$LoaderInfo ) v1 ).destroy ( ); // invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V
/* .line 669 */
} // .end local v1 # "info":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
} // :cond_2
v2 = this.mInactiveLoaders;
v0 = (( android.support.v4.util.SparseArrayCompat ) v2 ).indexOfKey ( p1 ); // invoke-virtual {v2, p1}, Landroid/support/v4/util/SparseArrayCompat;->indexOfKey(I)I
/* .line 670 */
/* if-ltz v0, :cond_3 */
/* .line 671 */
v2 = this.mInactiveLoaders;
(( android.support.v4.util.SparseArrayCompat ) v2 ).valueAt ( v0 ); // invoke-virtual {v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
/* check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
/* .line 672 */
/* .restart local v1 # "info":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
v2 = this.mInactiveLoaders;
(( android.support.v4.util.SparseArrayCompat ) v2 ).removeAt ( v0 ); // invoke-virtual {v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V
/* .line 673 */
(( android.support.v4.app.LoaderManagerImpl$LoaderInfo ) v1 ).destroy ( ); // invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V
/* .line 675 */
} // .end local v1 # "info":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
} // :cond_3
v2 = this.mActivity;
if ( v2 != null) { // if-eqz v2, :cond_4
v2 = (( android.support.v4.app.LoaderManagerImpl ) p0 ).hasRunningLoaders ( ); // invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z
/* if-nez v2, :cond_4 */
/* .line 676 */
v2 = this.mActivity;
v2 = this.mFragments;
(( android.support.v4.app.FragmentManagerImpl ) v2 ).startPendingDeferredFragments ( ); // invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V
/* .line 678 */
} // :cond_4
return;
} // .end method
void doDestroy ( ) {
/* .locals 4 */
/* .prologue */
/* .line 773 */
/* iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z */
/* if-nez v1, :cond_2 */
/* .line 774 */
/* sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z */
if ( v1 != null) { // if-eqz v1, :cond_0
final String v1 = "LoaderManager"; // const-string v1, "LoaderManager"
/* new-instance v2, Ljava/lang/StringBuilder; */
/* invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V */
final String v3 = "Destroying Active in "; // const-string v3, "Destroying Active in "
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).append ( p0 ); // invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).toString ( ); // invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .v ( v1,v2 );
/* .line 775 */
} // :cond_0
v1 = this.mLoaders;
v1 = (( android.support.v4.util.SparseArrayCompat ) v1 ).size ( ); // invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I
/* add-int/lit8 v0, v1, -0x1 */
/* .local v0, "i":I */
} // :goto_0
/* if-ltz v0, :cond_1 */
/* .line 776 */
v1 = this.mLoaders;
(( android.support.v4.util.SparseArrayCompat ) v1 ).valueAt ( v0 ); // invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
/* check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
(( android.support.v4.app.LoaderManagerImpl$LoaderInfo ) v1 ).destroy ( ); // invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V
/* .line 775 */
/* add-int/lit8 v0, v0, -0x1 */
/* .line 778 */
} // :cond_1
v1 = this.mLoaders;
(( android.support.v4.util.SparseArrayCompat ) v1 ).clear ( ); // invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->clear()V
/* .line 781 */
} // .end local v0 # "i":I
} // :cond_2
/* sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z */
if ( v1 != null) { // if-eqz v1, :cond_3
final String v1 = "LoaderManager"; // const-string v1, "LoaderManager"
/* new-instance v2, Ljava/lang/StringBuilder; */
/* invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V */
final String v3 = "Destroying Inactive in "; // const-string v3, "Destroying Inactive in "
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).append ( p0 ); // invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).toString ( ); // invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .v ( v1,v2 );
/* .line 782 */
} // :cond_3
v1 = this.mInactiveLoaders;
v1 = (( android.support.v4.util.SparseArrayCompat ) v1 ).size ( ); // invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I
/* add-int/lit8 v0, v1, -0x1 */
/* .restart local v0 # "i":I */
} // :goto_1
/* if-ltz v0, :cond_4 */
/* .line 783 */
v1 = this.mInactiveLoaders;
(( android.support.v4.util.SparseArrayCompat ) v1 ).valueAt ( v0 ); // invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
/* check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
(( android.support.v4.app.LoaderManagerImpl$LoaderInfo ) v1 ).destroy ( ); // invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V
/* .line 782 */
/* add-int/lit8 v0, v0, -0x1 */
/* .line 785 */
} // :cond_4
v1 = this.mInactiveLoaders;
(( android.support.v4.util.SparseArrayCompat ) v1 ).clear ( ); // invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->clear()V
/* .line 786 */
return;
} // .end method
void doReportNextStart ( ) {
/* .locals 3 */
/* .prologue */
/* .line 761 */
v1 = this.mLoaders;
v1 = (( android.support.v4.util.SparseArrayCompat ) v1 ).size ( ); // invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I
/* add-int/lit8 v0, v1, -0x1 */
/* .local v0, "i":I */
} // :goto_0
/* if-ltz v0, :cond_0 */
/* .line 762 */
v1 = this.mLoaders;
(( android.support.v4.util.SparseArrayCompat ) v1 ).valueAt ( v0 ); // invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
/* check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
int v2 = 1; // const/4 v2, 0x1
/* iput-boolean v2, v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z */
/* .line 761 */
/* add-int/lit8 v0, v0, -0x1 */
/* .line 764 */
} // :cond_0
return;
} // .end method
void doReportStart ( ) {
/* .locals 2 */
/* .prologue */
/* .line 767 */
v1 = this.mLoaders;
v1 = (( android.support.v4.util.SparseArrayCompat ) v1 ).size ( ); // invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I
/* add-int/lit8 v0, v1, -0x1 */
/* .local v0, "i":I */
} // :goto_0
/* if-ltz v0, :cond_0 */
/* .line 768 */
v1 = this.mLoaders;
(( android.support.v4.util.SparseArrayCompat ) v1 ).valueAt ( v0 ); // invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
/* check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
(( android.support.v4.app.LoaderManagerImpl$LoaderInfo ) v1 ).reportStart ( ); // invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->reportStart()V
/* .line 767 */
/* add-int/lit8 v0, v0, -0x1 */
/* .line 770 */
} // :cond_0
return;
} // .end method
void doRetain ( ) {
/* .locals 5 */
/* .prologue */
/* .line 734 */
/* sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z */
if ( v2 != null) { // if-eqz v2, :cond_0
final String v2 = "LoaderManager"; // const-string v2, "LoaderManager"
/* new-instance v3, Ljava/lang/StringBuilder; */
/* invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V */
final String v4 = "Retaining in "; // const-string v4, "Retaining in "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).append ( p0 ); // invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).toString ( ); // invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .v ( v2,v3 );
/* .line 735 */
} // :cond_0
/* iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z */
/* if-nez v2, :cond_2 */
/* .line 736 */
/* new-instance v0, Ljava/lang/RuntimeException; */
final String v2 = "here"; // const-string v2, "here"
/* invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V */
/* .line 737 */
/* .local v0, "e":Ljava/lang/RuntimeException; */
(( java.lang.RuntimeException ) v0 ).fillInStackTrace ( ); // invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;
/* .line 738 */
final String v2 = "LoaderManager"; // const-string v2, "LoaderManager"
/* new-instance v3, Ljava/lang/StringBuilder; */
/* invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V */
final String v4 = "Called doRetain when not started: "; // const-string v4, "Called doRetain when not started: "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).append ( p0 ); // invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).toString ( ); // invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .w ( v2,v3,v0 );
/* .line 747 */
} // .end local v0 # "e":Ljava/lang/RuntimeException;
} // :cond_1
return;
/* .line 742 */
} // :cond_2
int v2 = 1; // const/4 v2, 0x1
/* iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z */
/* .line 743 */
int v2 = 0; // const/4 v2, 0x0
/* iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z */
/* .line 744 */
v2 = this.mLoaders;
v2 = (( android.support.v4.util.SparseArrayCompat ) v2 ).size ( ); // invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->size()I
/* add-int/lit8 v1, v2, -0x1 */
/* .local v1, "i":I */
} // :goto_0
/* if-ltz v1, :cond_1 */
/* .line 745 */
v2 = this.mLoaders;
(( android.support.v4.util.SparseArrayCompat ) v2 ).valueAt ( v1 ); // invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
/* check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
(( android.support.v4.app.LoaderManagerImpl$LoaderInfo ) v2 ).retain ( ); // invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->retain()V
/* .line 744 */
/* add-int/lit8 v1, v1, -0x1 */
} // .end method
void doStart ( ) {
/* .locals 5 */
/* .prologue */
/* .line 701 */
/* sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z */
if ( v2 != null) { // if-eqz v2, :cond_0
final String v2 = "LoaderManager"; // const-string v2, "LoaderManager"
/* new-instance v3, Ljava/lang/StringBuilder; */
/* invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V */
final String v4 = "Starting in "; // const-string v4, "Starting in "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).append ( p0 ); // invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).toString ( ); // invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .v ( v2,v3 );
/* .line 702 */
} // :cond_0
/* iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z */
if ( v2 != null) { // if-eqz v2, :cond_2
/* .line 703 */
/* new-instance v0, Ljava/lang/RuntimeException; */
final String v2 = "here"; // const-string v2, "here"
/* invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V */
/* .line 704 */
/* .local v0, "e":Ljava/lang/RuntimeException; */
(( java.lang.RuntimeException ) v0 ).fillInStackTrace ( ); // invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;
/* .line 705 */
final String v2 = "LoaderManager"; // const-string v2, "LoaderManager"
/* new-instance v3, Ljava/lang/StringBuilder; */
/* invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V */
final String v4 = "Called doStart when already started: "; // const-string v4, "Called doStart when already started: "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).append ( p0 ); // invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).toString ( ); // invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .w ( v2,v3,v0 );
/* .line 716 */
} // .end local v0 # "e":Ljava/lang/RuntimeException;
} // :cond_1
return;
/* .line 709 */
} // :cond_2
int v2 = 1; // const/4 v2, 0x1
/* iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z */
/* .line 713 */
v2 = this.mLoaders;
v2 = (( android.support.v4.util.SparseArrayCompat ) v2 ).size ( ); // invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->size()I
/* add-int/lit8 v1, v2, -0x1 */
/* .local v1, "i":I */
} // :goto_0
/* if-ltz v1, :cond_1 */
/* .line 714 */
v2 = this.mLoaders;
(( android.support.v4.util.SparseArrayCompat ) v2 ).valueAt ( v1 ); // invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
/* check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
(( android.support.v4.app.LoaderManagerImpl$LoaderInfo ) v2 ).start ( ); // invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->start()V
/* .line 713 */
/* add-int/lit8 v1, v1, -0x1 */
} // .end method
void doStop ( ) {
/* .locals 5 */
/* .prologue */
/* .line 719 */
/* sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z */
if ( v2 != null) { // if-eqz v2, :cond_0
final String v2 = "LoaderManager"; // const-string v2, "LoaderManager"
/* new-instance v3, Ljava/lang/StringBuilder; */
/* invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V */
final String v4 = "Stopping in "; // const-string v4, "Stopping in "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).append ( p0 ); // invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).toString ( ); // invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .v ( v2,v3 );
/* .line 720 */
} // :cond_0
/* iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z */
/* if-nez v2, :cond_1 */
/* .line 721 */
/* new-instance v0, Ljava/lang/RuntimeException; */
final String v2 = "here"; // const-string v2, "here"
/* invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V */
/* .line 722 */
/* .local v0, "e":Ljava/lang/RuntimeException; */
(( java.lang.RuntimeException ) v0 ).fillInStackTrace ( ); // invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;
/* .line 723 */
final String v2 = "LoaderManager"; // const-string v2, "LoaderManager"
/* new-instance v3, Ljava/lang/StringBuilder; */
/* invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V */
final String v4 = "Called doStop when not started: "; // const-string v4, "Called doStop when not started: "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).append ( p0 ); // invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).toString ( ); // invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .w ( v2,v3,v0 );
/* .line 731 */
} // .end local v0 # "e":Ljava/lang/RuntimeException;
} // :goto_0
return;
/* .line 727 */
} // :cond_1
v2 = this.mLoaders;
v2 = (( android.support.v4.util.SparseArrayCompat ) v2 ).size ( ); // invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->size()I
/* add-int/lit8 v1, v2, -0x1 */
/* .local v1, "i":I */
} // :goto_1
/* if-ltz v1, :cond_2 */
/* .line 728 */
v2 = this.mLoaders;
(( android.support.v4.util.SparseArrayCompat ) v2 ).valueAt ( v1 ); // invoke-virtual {v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
/* check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
(( android.support.v4.app.LoaderManagerImpl$LoaderInfo ) v2 ).stop ( ); // invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->stop()V
/* .line 727 */
/* add-int/lit8 v1, v1, -0x1 */
/* .line 730 */
} // :cond_2
int v2 = 0; // const/4 v2, 0x0
/* iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z */
} // .end method
public void dump ( java.lang.String p0, java.io.FileDescriptor p1, java.io.PrintWriter p2, java.lang.String[] p3 ) {
/* .locals 5 */
/* .param p1, "prefix" # Ljava/lang/String; */
/* .param p2, "fd" # Ljava/io/FileDescriptor; */
/* .param p3, "writer" # Ljava/io/PrintWriter; */
/* .param p4, "args" # [Ljava/lang/String; */
/* .prologue */
/* .line 801 */
v3 = this.mLoaders;
v3 = (( android.support.v4.util.SparseArrayCompat ) v3 ).size ( ); // invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->size()I
/* if-lez v3, :cond_0 */
/* .line 802 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v3 = "Active Loaders:"; // const-string v3, "Active Loaders:"
(( java.io.PrintWriter ) p3 ).println ( v3 ); // invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
/* .line 803 */
/* new-instance v3, Ljava/lang/StringBuilder; */
/* invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V */
(( java.lang.StringBuilder ) v3 ).append ( p1 ); // invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v4 = " "; // const-string v4, " "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).toString ( ); // invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* .line 804 */
/* .local v1, "innerPrefix":Ljava/lang/String; */
int v0 = 0; // const/4 v0, 0x0
/* .local v0, "i":I */
} // :goto_0
v3 = this.mLoaders;
v3 = (( android.support.v4.util.SparseArrayCompat ) v3 ).size ( ); // invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->size()I
/* if-ge v0, v3, :cond_0 */
/* .line 805 */
v3 = this.mLoaders;
(( android.support.v4.util.SparseArrayCompat ) v3 ).valueAt ( v0 ); // invoke-virtual {v3, v0}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
/* check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
/* .line 806 */
/* .local v2, "li":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v3 = " #"; // const-string v3, " #"
(( java.io.PrintWriter ) p3 ).print ( v3 ); // invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
v3 = this.mLoaders;
v3 = (( android.support.v4.util.SparseArrayCompat ) v3 ).keyAt ( v0 ); // invoke-virtual {v3, v0}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I
(( java.io.PrintWriter ) p3 ).print ( v3 ); // invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V
/* .line 807 */
final String v3 = ": "; // const-string v3, ": "
(( java.io.PrintWriter ) p3 ).print ( v3 ); // invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
(( android.support.v4.app.LoaderManagerImpl$LoaderInfo ) v2 ).toString ( ); // invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;
(( java.io.PrintWriter ) p3 ).println ( v3 ); // invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
/* .line 808 */
(( android.support.v4.app.LoaderManagerImpl$LoaderInfo ) v2 ).dump ( v1, p2, p3, p4 ); // invoke-virtual {v2, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
/* .line 804 */
/* add-int/lit8 v0, v0, 0x1 */
/* .line 811 */
} // .end local v0 # "i":I
} // .end local v1 # "innerPrefix":Ljava/lang/String;
} // .end local v2 # "li":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
} // :cond_0
v3 = this.mInactiveLoaders;
v3 = (( android.support.v4.util.SparseArrayCompat ) v3 ).size ( ); // invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->size()I
/* if-lez v3, :cond_1 */
/* .line 812 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v3 = "Inactive Loaders:"; // const-string v3, "Inactive Loaders:"
(( java.io.PrintWriter ) p3 ).println ( v3 ); // invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
/* .line 813 */
/* new-instance v3, Ljava/lang/StringBuilder; */
/* invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V */
(( java.lang.StringBuilder ) v3 ).append ( p1 ); // invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v4 = " "; // const-string v4, " "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).toString ( ); // invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* .line 814 */
/* .restart local v1 # "innerPrefix":Ljava/lang/String; */
int v0 = 0; // const/4 v0, 0x0
/* .restart local v0 # "i":I */
} // :goto_1
v3 = this.mInactiveLoaders;
v3 = (( android.support.v4.util.SparseArrayCompat ) v3 ).size ( ); // invoke-virtual {v3}, Landroid/support/v4/util/SparseArrayCompat;->size()I
/* if-ge v0, v3, :cond_1 */
/* .line 815 */
v3 = this.mInactiveLoaders;
(( android.support.v4.util.SparseArrayCompat ) v3 ).valueAt ( v0 ); // invoke-virtual {v3, v0}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
/* check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
/* .line 816 */
/* .restart local v2 # "li":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v3 = " #"; // const-string v3, " #"
(( java.io.PrintWriter ) p3 ).print ( v3 ); // invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
v3 = this.mInactiveLoaders;
v3 = (( android.support.v4.util.SparseArrayCompat ) v3 ).keyAt ( v0 ); // invoke-virtual {v3, v0}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I
(( java.io.PrintWriter ) p3 ).print ( v3 ); // invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V
/* .line 817 */
final String v3 = ": "; // const-string v3, ": "
(( java.io.PrintWriter ) p3 ).print ( v3 ); // invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
(( android.support.v4.app.LoaderManagerImpl$LoaderInfo ) v2 ).toString ( ); // invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;
(( java.io.PrintWriter ) p3 ).println ( v3 ); // invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
/* .line 818 */
(( android.support.v4.app.LoaderManagerImpl$LoaderInfo ) v2 ).dump ( v1, p2, p3, p4 ); // invoke-virtual {v2, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
/* .line 814 */
/* add-int/lit8 v0, v0, 0x1 */
/* .line 821 */
} // .end local v0 # "i":I
} // .end local v1 # "innerPrefix":Ljava/lang/String;
} // .end local v2 # "li":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
} // :cond_1
return;
} // .end method
void finishRetain ( ) {
/* .locals 4 */
/* .prologue */
/* .line 750 */
/* iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z */
if ( v1 != null) { // if-eqz v1, :cond_1
/* .line 751 */
/* sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z */
if ( v1 != null) { // if-eqz v1, :cond_0
final String v1 = "LoaderManager"; // const-string v1, "LoaderManager"
/* new-instance v2, Ljava/lang/StringBuilder; */
/* invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V */
final String v3 = "Finished Retaining in "; // const-string v3, "Finished Retaining in "
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).append ( p0 ); // invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).toString ( ); // invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .v ( v1,v2 );
/* .line 753 */
} // :cond_0
int v1 = 0; // const/4 v1, 0x0
/* iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z */
/* .line 754 */
v1 = this.mLoaders;
v1 = (( android.support.v4.util.SparseArrayCompat ) v1 ).size ( ); // invoke-virtual {v1}, Landroid/support/v4/util/SparseArrayCompat;->size()I
/* add-int/lit8 v0, v1, -0x1 */
/* .local v0, "i":I */
} // :goto_0
/* if-ltz v0, :cond_1 */
/* .line 755 */
v1 = this.mLoaders;
(( android.support.v4.util.SparseArrayCompat ) v1 ).valueAt ( v0 ); // invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
/* check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
(( android.support.v4.app.LoaderManagerImpl$LoaderInfo ) v1 ).finishRetain ( ); // invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->finishRetain()V
/* .line 754 */
/* add-int/lit8 v0, v0, -0x1 */
/* .line 758 */
} // .end local v0 # "i":I
} // :cond_1
return;
} // .end method
public android.support.v4.content.Loader getLoader ( Integer p0 ) {
/* .locals 3 */
/* .param p1, "id" # I */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "<D:", */
/* "Ljava/lang/Object;", */
/* ">(I)", */
/* "Landroid/support/v4/content/Loader", */
/* "<TD;>;" */
/* } */
} // .end annotation
/* .prologue */
/* .line 686 */
/* iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z */
if ( v1 != null) { // if-eqz v1, :cond_0
/* .line 687 */
/* new-instance v1, Ljava/lang/IllegalStateException; */
final String v2 = "Called while creating a loader"; // const-string v2, "Called while creating a loader"
/* invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
/* throw v1 */
/* .line 690 */
} // :cond_0
v1 = this.mLoaders;
(( android.support.v4.util.SparseArrayCompat ) v1 ).get ( p1 ); // invoke-virtual {v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;
/* check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
/* .line 691 */
/* .local v0, "loaderInfo":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
if ( v0 != null) { // if-eqz v0, :cond_2
/* .line 692 */
v1 = this.mPendingLoader;
if ( v1 != null) { // if-eqz v1, :cond_1
/* .line 693 */
v1 = this.mPendingLoader;
v1 = this.mLoader;
/* .line 697 */
} // :goto_0
/* .line 695 */
} // :cond_1
v1 = this.mLoader;
/* .line 697 */
} // :cond_2
int v1 = 0; // const/4 v1, 0x0
} // .end method
public Boolean hasRunningLoaders ( ) {
/* .locals 5 */
/* .prologue */
/* .line 825 */
int v3 = 0; // const/4 v3, 0x0
/* .line 826 */
/* .local v3, "loadersRunning":Z */
v4 = this.mLoaders;
v0 = (( android.support.v4.util.SparseArrayCompat ) v4 ).size ( ); // invoke-virtual {v4}, Landroid/support/v4/util/SparseArrayCompat;->size()I
/* .line 827 */
/* .local v0, "count":I */
int v1 = 0; // const/4 v1, 0x0
/* .local v1, "i":I */
} // :goto_0
/* if-ge v1, v0, :cond_1 */
/* .line 828 */
v4 = this.mLoaders;
(( android.support.v4.util.SparseArrayCompat ) v4 ).valueAt ( v1 ); // invoke-virtual {v4, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
/* check-cast v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
/* .line 829 */
/* .local v2, "li":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
/* iget-boolean v4, v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z */
if ( v4 != null) { // if-eqz v4, :cond_0
/* iget-boolean v4, v2, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z */
/* if-nez v4, :cond_0 */
int v4 = 1; // const/4 v4, 0x1
} // :goto_1
/* or-int/2addr v3, v4 */
/* .line 827 */
/* add-int/lit8 v1, v1, 0x1 */
/* .line 829 */
} // :cond_0
int v4 = 0; // const/4 v4, 0x0
/* .line 831 */
} // .end local v2 # "li":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
} // :cond_1
} // .end method
public android.support.v4.content.Loader initLoader ( Integer p0, android.os.Bundle p1, android.support.v4.app.LoaderManager$LoaderCallbacks p2 ) {
/* .locals 4 */
/* .param p1, "id" # I */
/* .param p2, "args" # Landroid/os/Bundle; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "<D:", */
/* "Ljava/lang/Object;", */
/* ">(I", */
/* "Landroid/os/Bundle;", */
/* "Landroid/support/v4/app/LoaderManager$LoaderCallbacks", */
/* "<TD;>;)", */
/* "Landroid/support/v4/content/Loader", */
/* "<TD;>;" */
/* } */
} // .end annotation
/* .prologue */
/* .line 543 */
/* .local p3, "callback":Landroid/support/v4/app/LoaderManager$LoaderCallbacks;, "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<TD;>;" */
/* iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z */
if ( v1 != null) { // if-eqz v1, :cond_0
/* .line 544 */
/* new-instance v1, Ljava/lang/IllegalStateException; */
final String v2 = "Called while creating a loader"; // const-string v2, "Called while creating a loader"
/* invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
/* throw v1 */
/* .line 547 */
} // :cond_0
v1 = this.mLoaders;
(( android.support.v4.util.SparseArrayCompat ) v1 ).get ( p1 ); // invoke-virtual {v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;
/* check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
/* .line 549 */
/* .local v0, "info":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
/* sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z */
if ( v1 != null) { // if-eqz v1, :cond_1
final String v1 = "LoaderManager"; // const-string v1, "LoaderManager"
/* new-instance v2, Ljava/lang/StringBuilder; */
/* invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V */
final String v3 = "initLoader in "; // const-string v3, "initLoader in "
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).append ( p0 ); // invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
final String v3 = ": args="; // const-string v3, ": args="
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).append ( p2 ); // invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).toString ( ); // invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .v ( v1,v2 );
/* .line 551 */
} // :cond_1
/* if-nez v0, :cond_4 */
/* .line 553 */
/* invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
/* .line 554 */
/* sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z */
if ( v1 != null) { // if-eqz v1, :cond_2
final String v1 = "LoaderManager"; // const-string v1, "LoaderManager"
/* new-instance v2, Ljava/lang/StringBuilder; */
/* invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V */
final String v3 = " Created new loader "; // const-string v3, " Created new loader "
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).append ( v0 ); // invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).toString ( ); // invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .v ( v1,v2 );
/* .line 560 */
} // :cond_2
} // :goto_0
/* iget-boolean v1, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z */
if ( v1 != null) { // if-eqz v1, :cond_3
/* iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z */
if ( v1 != null) { // if-eqz v1, :cond_3
/* .line 562 */
v1 = this.mLoader;
v2 = this.mData;
(( android.support.v4.app.LoaderManagerImpl$LoaderInfo ) v0 ).callOnLoadFinished ( v1, v2 ); // invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
/* .line 565 */
} // :cond_3
v1 = this.mLoader;
/* .line 556 */
} // :cond_4
/* sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z */
if ( v1 != null) { // if-eqz v1, :cond_5
final String v1 = "LoaderManager"; // const-string v1, "LoaderManager"
/* new-instance v2, Ljava/lang/StringBuilder; */
/* invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V */
final String v3 = " Re-using existing loader "; // const-string v3, " Re-using existing loader "
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).append ( v0 ); // invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).toString ( ); // invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .v ( v1,v2 );
/* .line 557 */
} // :cond_5
this.mCallbacks = p3;
} // .end method
void installLoader ( android.support.v4.app.LoaderManagerImpl$LoaderInfo p0 ) {
/* .locals 2 */
/* .param p1, "info" # Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
/* .prologue */
/* .line 508 */
v0 = this.mLoaders;
/* iget v1, p1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I */
(( android.support.v4.util.SparseArrayCompat ) v0 ).put ( v1, p1 ); // invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V
/* .line 509 */
/* iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 513 */
(( android.support.v4.app.LoaderManagerImpl$LoaderInfo ) p1 ).start ( ); // invoke-virtual {p1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->start()V
/* .line 515 */
} // :cond_0
return;
} // .end method
public android.support.v4.content.Loader restartLoader ( Integer p0, android.os.Bundle p1, android.support.v4.app.LoaderManager$LoaderCallbacks p2 ) {
/* .locals 6 */
/* .param p1, "id" # I */
/* .param p2, "args" # Landroid/os/Bundle; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "<D:", */
/* "Ljava/lang/Object;", */
/* ">(I", */
/* "Landroid/os/Bundle;", */
/* "Landroid/support/v4/app/LoaderManager$LoaderCallbacks", */
/* "<TD;>;)", */
/* "Landroid/support/v4/content/Loader", */
/* "<TD;>;" */
/* } */
} // .end annotation
/* .prologue */
/* .local p3, "callback":Landroid/support/v4/app/LoaderManager$LoaderCallbacks;, "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<TD;>;" */
int v5 = 0; // const/4 v5, 0x0
/* .line 593 */
/* iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z */
if ( v2 != null) { // if-eqz v2, :cond_0
/* .line 594 */
/* new-instance v2, Ljava/lang/IllegalStateException; */
final String v3 = "Called while creating a loader"; // const-string v3, "Called while creating a loader"
/* invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
/* throw v2 */
/* .line 597 */
} // :cond_0
v2 = this.mLoaders;
(( android.support.v4.util.SparseArrayCompat ) v2 ).get ( p1 ); // invoke-virtual {v2, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;
/* check-cast v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
/* .line 598 */
/* .local v1, "info":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
/* sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z */
if ( v2 != null) { // if-eqz v2, :cond_1
final String v2 = "LoaderManager"; // const-string v2, "LoaderManager"
/* new-instance v3, Ljava/lang/StringBuilder; */
/* invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V */
final String v4 = "restartLoader in "; // const-string v4, "restartLoader in "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).append ( p0 ); // invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
final String v4 = ": args="; // const-string v4, ": args="
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).append ( p2 ); // invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).toString ( ); // invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .v ( v2,v3 );
/* .line 599 */
} // :cond_1
if ( v1 != null) { // if-eqz v1, :cond_3
/* .line 600 */
v2 = this.mInactiveLoaders;
(( android.support.v4.util.SparseArrayCompat ) v2 ).get ( p1 ); // invoke-virtual {v2, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;
/* check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
/* .line 601 */
/* .local v0, "inactive":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
if ( v0 != null) { // if-eqz v0, :cond_a
/* .line 602 */
/* iget-boolean v2, v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z */
if ( v2 != null) { // if-eqz v2, :cond_4
/* .line 607 */
/* sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z */
if ( v2 != null) { // if-eqz v2, :cond_2
final String v2 = "LoaderManager"; // const-string v2, "LoaderManager"
/* new-instance v3, Ljava/lang/StringBuilder; */
/* invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V */
final String v4 = " Removing last inactive loader: "; // const-string v4, " Removing last inactive loader: "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).append ( v1 ); // invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).toString ( ); // invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .v ( v2,v3 );
/* .line 608 */
} // :cond_2
int v2 = 0; // const/4 v2, 0x0
/* iput-boolean v2, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z */
/* .line 609 */
(( android.support.v4.app.LoaderManagerImpl$LoaderInfo ) v0 ).destroy ( ); // invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V
/* .line 610 */
v2 = this.mLoader;
(( android.support.v4.content.Loader ) v2 ).abandon ( ); // invoke-virtual {v2}, Landroid/support/v4/content/Loader;->abandon()V
/* .line 611 */
v2 = this.mInactiveLoaders;
(( android.support.v4.util.SparseArrayCompat ) v2 ).put ( p1, v1 ); // invoke-virtual {v2, p1, v1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V
/* .line 646 */
} // .end local v0 # "inactive":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
} // :cond_3
} // :goto_0
/* invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
/* .line 647 */
v2 = this.mLoader;
} // :goto_1
/* .line 615 */
/* .restart local v0 # "inactive":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
} // :cond_4
/* iget-boolean v2, v1, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z */
/* if-nez v2, :cond_6 */
/* .line 619 */
/* sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z */
if ( v2 != null) { // if-eqz v2, :cond_5
final String v2 = "LoaderManager"; // const-string v2, "LoaderManager"
final String v3 = " Current loader is stopped; replacing"; // const-string v3, " Current loader is stopped; replacing"
android.util.Log .v ( v2,v3 );
/* .line 620 */
} // :cond_5
v2 = this.mLoaders;
(( android.support.v4.util.SparseArrayCompat ) v2 ).put ( p1, v5 ); // invoke-virtual {v2, p1, v5}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V
/* .line 621 */
(( android.support.v4.app.LoaderManagerImpl$LoaderInfo ) v1 ).destroy ( ); // invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V
/* .line 626 */
} // :cond_6
v2 = this.mPendingLoader;
if ( v2 != null) { // if-eqz v2, :cond_8
/* .line 627 */
/* sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z */
if ( v2 != null) { // if-eqz v2, :cond_7
final String v2 = "LoaderManager"; // const-string v2, "LoaderManager"
/* new-instance v3, Ljava/lang/StringBuilder; */
/* invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V */
final String v4 = " Removing pending loader: "; // const-string v4, " Removing pending loader: "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
v4 = this.mPendingLoader;
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).toString ( ); // invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .v ( v2,v3 );
/* .line 628 */
} // :cond_7
v2 = this.mPendingLoader;
(( android.support.v4.app.LoaderManagerImpl$LoaderInfo ) v2 ).destroy ( ); // invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V
/* .line 629 */
this.mPendingLoader = v5;
/* .line 631 */
} // :cond_8
/* sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z */
if ( v2 != null) { // if-eqz v2, :cond_9
final String v2 = "LoaderManager"; // const-string v2, "LoaderManager"
final String v3 = " Enqueuing as new pending loader"; // const-string v3, " Enqueuing as new pending loader"
android.util.Log .v ( v2,v3 );
/* .line 632 */
} // :cond_9
/* invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo; */
this.mPendingLoader = v2;
/* .line 634 */
v2 = this.mPendingLoader;
v2 = this.mLoader;
/* .line 640 */
} // :cond_a
/* sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z */
if ( v2 != null) { // if-eqz v2, :cond_b
final String v2 = "LoaderManager"; // const-string v2, "LoaderManager"
/* new-instance v3, Ljava/lang/StringBuilder; */
/* invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V */
final String v4 = " Making last loader inactive: "; // const-string v4, " Making last loader inactive: "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).append ( v1 ); // invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).toString ( ); // invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .v ( v2,v3 );
/* .line 641 */
} // :cond_b
v2 = this.mLoader;
(( android.support.v4.content.Loader ) v2 ).abandon ( ); // invoke-virtual {v2}, Landroid/support/v4/content/Loader;->abandon()V
/* .line 642 */
v2 = this.mInactiveLoaders;
(( android.support.v4.util.SparseArrayCompat ) v2 ).put ( p1, v1 ); // invoke-virtual {v2, p1, v1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V
/* goto/16 :goto_0 */
} // .end method
public java.lang.String toString ( ) {
/* .locals 2 */
/* .prologue */
/* .line 790 */
/* new-instance v0, Ljava/lang/StringBuilder; */
/* const/16 v1, 0x80 */
/* invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V */
/* .line 791 */
/* .local v0, "sb":Ljava/lang/StringBuilder; */
final String v1 = "LoaderManager{"; // const-string v1, "LoaderManager{"
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 792 */
v1 = java.lang.System .identityHashCode ( p0 );
java.lang.Integer .toHexString ( v1 );
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 793 */
final String v1 = " in "; // const-string v1, " in "
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 794 */
v1 = this.mActivity;
android.support.v4.util.DebugUtils .buildShortClassTag ( v1,v0 );
/* .line 795 */
final String v1 = "}}"; // const-string v1, "}}"
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 796 */
(( java.lang.StringBuilder ) v0 ).toString ( ); // invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
} // .end method
void updateActivity ( android.support.v4.app.FragmentActivity p0 ) {
/* .locals 0 */
/* .param p1, "activity" # Landroid/support/v4/app/FragmentActivity; */
/* .prologue */
/* .line 484 */
this.mActivity = p1;
/* .line 485 */
return;
} // .end method
