public abstract class android.support.v4.content.AsyncTaskLoader extends android.support.v4.content.Loader {
	 /* .source "AsyncTaskLoader.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/content/AsyncTaskLoader$LoadTask; */
	 /* } */
} // .end annotation
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "<D:", */
/* "Ljava/lang/Object;", */
/* ">", */
/* "Landroid/support/v4/content/Loader", */
/* "<TD;>;" */
/* } */
} // .end annotation
/* # static fields */
static final Boolean DEBUG;
static final java.lang.String TAG;
/* # instance fields */
volatile android.support.v4.content.AsyncTaskLoader$LoadTask mCancellingTask;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Landroid/support/v4/content/AsyncTaskLoader", */
/* "<TD;>.", */
/* "LoadTask;" */
/* } */
} // .end annotation
} // .end field
android.os.Handler mHandler;
Long mLastLoadCompleteTime;
volatile android.support.v4.content.AsyncTaskLoader$LoadTask mTask;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Landroid/support/v4/content/AsyncTaskLoader", */
/* "<TD;>.", */
/* "LoadTask;" */
/* } */
} // .end annotation
} // .end field
Long mUpdateThrottle;
/* # direct methods */
public android.support.v4.content.AsyncTaskLoader ( ) {
/* .locals 2 */
/* .param p1, "context" # Landroid/content/Context; */
/* .prologue */
/* .line 92 */
/* .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;" */
/* invoke-direct {p0, p1}, Landroid/support/v4/content/Loader;-><init>(Landroid/content/Context;)V */
/* .line 88 */
/* const-wide/16 v0, -0x2710 */
/* iput-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J */
/* .line 93 */
return;
} // .end method
/* # virtual methods */
public Boolean cancelLoad ( ) {
/* .locals 4 */
/* .prologue */
/* .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;" */
int v3 = 0; // const/4 v3, 0x0
int v0 = 0; // const/4 v0, 0x0
/* .line 136 */
v1 = this.mTask;
if ( v1 != null) { // if-eqz v1, :cond_1
/* .line 137 */
v1 = this.mCancellingTask;
if ( v1 != null) { // if-eqz v1, :cond_2
/* .line 142 */
v1 = this.mTask;
/* iget-boolean v1, v1, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z */
if ( v1 != null) { // if-eqz v1, :cond_0
/* .line 143 */
v1 = this.mTask;
/* iput-boolean v0, v1, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z */
/* .line 144 */
v1 = this.mHandler;
v2 = this.mTask;
(( android.os.Handler ) v1 ).removeCallbacks ( v2 ); // invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
/* .line 146 */
} // :cond_0
this.mTask = v3;
/* .line 166 */
} // :cond_1
} // :goto_0
/* .line 148 */
} // :cond_2
v1 = this.mTask;
/* iget-boolean v1, v1, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z */
if ( v1 != null) { // if-eqz v1, :cond_3
/* .line 152 */
v1 = this.mTask;
/* iput-boolean v0, v1, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z */
/* .line 153 */
v1 = this.mHandler;
v2 = this.mTask;
(( android.os.Handler ) v1 ).removeCallbacks ( v2 ); // invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
/* .line 154 */
this.mTask = v3;
/* .line 157 */
} // :cond_3
v1 = this.mTask;
v0 = (( android.support.v4.content.AsyncTaskLoader$LoadTask ) v1 ).cancel ( v0 ); // invoke-virtual {v1, v0}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->cancel(Z)Z
/* .line 159 */
/* .local v0, "cancelled":Z */
if ( v0 != null) { // if-eqz v0, :cond_4
/* .line 160 */
v1 = this.mTask;
this.mCancellingTask = v1;
/* .line 162 */
} // :cond_4
this.mTask = v3;
} // .end method
void dispatchOnCancelled ( android.support.v4.content.AsyncTaskLoader$LoadTask p0, java.lang.Object p1 ) {
/* .locals 2 */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Landroid/support/v4/content/AsyncTaskLoader", */
/* "<TD;>.", */
/* "LoadTask;", */
/* "TD;)V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 200 */
/* .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;" */
/* .local p1, "task":Landroid/support/v4/content/AsyncTaskLoader$LoadTask;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;" */
/* .local p2, "data":Ljava/lang/Object;, "TD;" */
(( android.support.v4.content.AsyncTaskLoader ) p0 ).onCanceled ( p2 ); // invoke-virtual {p0, p2}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V
/* .line 201 */
v0 = this.mCancellingTask;
/* if-ne v0, p1, :cond_0 */
/* .line 203 */
(( android.support.v4.content.AsyncTaskLoader ) p0 ).rollbackContentChanged ( ); // invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->rollbackContentChanged()V
/* .line 204 */
android.os.SystemClock .uptimeMillis ( );
/* move-result-wide v0 */
/* iput-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J */
/* .line 205 */
int v0 = 0; // const/4 v0, 0x0
this.mCancellingTask = v0;
/* .line 206 */
(( android.support.v4.content.AsyncTaskLoader ) p0 ).executePendingTask ( ); // invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->executePendingTask()V
/* .line 208 */
} // :cond_0
return;
} // .end method
void dispatchOnLoadComplete ( android.support.v4.content.AsyncTaskLoader$LoadTask p0, java.lang.Object p1 ) {
/* .locals 2 */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Landroid/support/v4/content/AsyncTaskLoader", */
/* "<TD;>.", */
/* "LoadTask;", */
/* "TD;)V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 211 */
/* .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;" */
/* .local p1, "task":Landroid/support/v4/content/AsyncTaskLoader$LoadTask;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;" */
/* .local p2, "data":Ljava/lang/Object;, "TD;" */
v0 = this.mTask;
/* if-eq v0, p1, :cond_0 */
/* .line 213 */
(( android.support.v4.content.AsyncTaskLoader ) p0 ).dispatchOnCancelled ( p1, p2 ); // invoke-virtual {p0, p1, p2}, Landroid/support/v4/content/AsyncTaskLoader;->dispatchOnCancelled(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
/* .line 226 */
} // :goto_0
return;
/* .line 215 */
} // :cond_0
v0 = (( android.support.v4.content.AsyncTaskLoader ) p0 ).isAbandoned ( ); // invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->isAbandoned()Z
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 217 */
(( android.support.v4.content.AsyncTaskLoader ) p0 ).onCanceled ( p2 ); // invoke-virtual {p0, p2}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V
/* .line 219 */
} // :cond_1
(( android.support.v4.content.AsyncTaskLoader ) p0 ).commitContentChanged ( ); // invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->commitContentChanged()V
/* .line 220 */
android.os.SystemClock .uptimeMillis ( );
/* move-result-wide v0 */
/* iput-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J */
/* .line 221 */
int v0 = 0; // const/4 v0, 0x0
this.mTask = v0;
/* .line 223 */
(( android.support.v4.content.AsyncTaskLoader ) p0 ).deliverResult ( p2 ); // invoke-virtual {p0, p2}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V
} // .end method
public void dump ( java.lang.String p0, java.io.FileDescriptor p1, java.io.PrintWriter p2, java.lang.String[] p3 ) {
/* .locals 4 */
/* .param p1, "prefix" # Ljava/lang/String; */
/* .param p2, "fd" # Ljava/io/FileDescriptor; */
/* .param p3, "writer" # Ljava/io/PrintWriter; */
/* .param p4, "args" # [Ljava/lang/String; */
/* .prologue */
/* .line 268 */
/* .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;" */
/* invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V */
/* .line 269 */
v0 = this.mTask;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 270 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mTask="; // const-string v0, "mTask="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
v0 = this.mTask;
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
/* .line 271 */
final String v0 = " waiting="; // const-string v0, " waiting="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
v0 = this.mTask;
/* iget-boolean v0, v0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z */
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
/* .line 273 */
} // :cond_0
v0 = this.mCancellingTask;
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 274 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mCancellingTask="; // const-string v0, "mCancellingTask="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
v0 = this.mCancellingTask;
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
/* .line 275 */
final String v0 = " waiting="; // const-string v0, " waiting="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
v0 = this.mCancellingTask;
/* iget-boolean v0, v0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z */
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
/* .line 277 */
} // :cond_1
/* iget-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J */
/* const-wide/16 v2, 0x0 */
/* cmp-long v0, v0, v2 */
if ( v0 != null) { // if-eqz v0, :cond_2
/* .line 278 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mUpdateThrottle="; // const-string v0, "mUpdateThrottle="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 279 */
/* iget-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J */
android.support.v4.util.TimeUtils .formatDuration ( v0,v1,p3 );
/* .line 280 */
final String v0 = " mLastLoadCompleteTime="; // const-string v0, " mLastLoadCompleteTime="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 281 */
/* iget-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J */
android.os.SystemClock .uptimeMillis ( );
/* move-result-wide v2 */
android.support.v4.util.TimeUtils .formatDuration ( v0,v1,v2,v3,p3 );
/* .line 283 */
(( java.io.PrintWriter ) p3 ).println ( ); // invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V
/* .line 285 */
} // :cond_2
return;
} // .end method
void executePendingTask ( ) {
/* .locals 8 */
/* .prologue */
/* .line 177 */
/* .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;" */
v2 = this.mCancellingTask;
/* if-nez v2, :cond_1 */
v2 = this.mTask;
if ( v2 != null) { // if-eqz v2, :cond_1
/* .line 178 */
v2 = this.mTask;
/* iget-boolean v2, v2, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z */
if ( v2 != null) { // if-eqz v2, :cond_0
/* .line 179 */
v2 = this.mTask;
int v3 = 0; // const/4 v3, 0x0
/* iput-boolean v3, v2, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z */
/* .line 180 */
v2 = this.mHandler;
v3 = this.mTask;
(( android.os.Handler ) v2 ).removeCallbacks ( v3 ); // invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
/* .line 182 */
} // :cond_0
/* iget-wide v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J */
/* const-wide/16 v4, 0x0 */
/* cmp-long v2, v2, v4 */
/* if-lez v2, :cond_2 */
/* .line 183 */
android.os.SystemClock .uptimeMillis ( );
/* move-result-wide v0 */
/* .line 184 */
/* .local v0, "now":J */
/* iget-wide v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J */
/* iget-wide v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J */
/* add-long/2addr v2, v4 */
/* cmp-long v2, v0, v2 */
/* if-gez v2, :cond_2 */
/* .line 189 */
v2 = this.mTask;
int v3 = 1; // const/4 v3, 0x1
/* iput-boolean v3, v2, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z */
/* .line 190 */
v2 = this.mHandler;
v3 = this.mTask;
/* iget-wide v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J */
/* iget-wide v6, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J */
/* add-long/2addr v4, v6 */
(( android.os.Handler ) v2 ).postAtTime ( v3, v4, v5 ); // invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z
/* .line 197 */
} // .end local v0 # "now":J
} // :cond_1
} // :goto_0
return;
/* .line 195 */
} // :cond_2
v3 = this.mTask;
v4 = android.support.v4.content.ModernAsyncTask.THREAD_POOL_EXECUTOR;
int v2 = 0; // const/4 v2, 0x0
/* check-cast v2, [Ljava/lang/Void; */
(( android.support.v4.content.AsyncTaskLoader$LoadTask ) v3 ).executeOnExecutor ( v4, v2 ); // invoke-virtual {v3, v4, v2}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/support/v4/content/ModernAsyncTask;
} // .end method
public abstract java.lang.Object loadInBackground ( ) {
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "()TD;" */
/* } */
} // .end annotation
} // .end method
public void onCanceled ( java.lang.Object p0 ) {
/* .locals 0 */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(TD;)V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 174 */
/* .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;" */
/* .local p1, "data":Ljava/lang/Object;, "TD;" */
return;
} // .end method
protected void onForceLoad ( ) {
/* .locals 1 */
/* .prologue */
/* .line 111 */
/* .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;" */
/* invoke-super {p0}, Landroid/support/v4/content/Loader;->onForceLoad()V */
/* .line 112 */
(( android.support.v4.content.AsyncTaskLoader ) p0 ).cancelLoad ( ); // invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->cancelLoad()Z
/* .line 113 */
/* new-instance v0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask; */
/* invoke-direct {v0, p0}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;-><init>(Landroid/support/v4/content/AsyncTaskLoader;)V */
this.mTask = v0;
/* .line 115 */
(( android.support.v4.content.AsyncTaskLoader ) p0 ).executePendingTask ( ); // invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->executePendingTask()V
/* .line 116 */
return;
} // .end method
protected java.lang.Object onLoadInBackground ( ) {
/* .locals 1 */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "()TD;" */
/* } */
} // .end annotation
/* .prologue */
/* .line 242 */
/* .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;" */
(( android.support.v4.content.AsyncTaskLoader ) p0 ).loadInBackground ( ); // invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->loadInBackground()Ljava/lang/Object;
} // .end method
public void setUpdateThrottle ( Long p0 ) {
/* .locals 3 */
/* .param p1, "delayMS" # J */
/* .prologue */
/* .line 103 */
/* .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;" */
/* iput-wide p1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J */
/* .line 104 */
/* const-wide/16 v0, 0x0 */
/* cmp-long v0, p1, v0 */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 105 */
/* new-instance v0, Landroid/os/Handler; */
/* invoke-direct {v0}, Landroid/os/Handler;-><init>()V */
this.mHandler = v0;
/* .line 107 */
} // :cond_0
return;
} // .end method
public void waitForLoader ( ) {
/* .locals 2 */
/* .prologue */
/* .line 256 */
/* .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;" */
v0 = this.mTask;
/* .line 257 */
/* .local v0, "task":Landroid/support/v4/content/AsyncTaskLoader$LoadTask;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;" */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 259 */
try { // :try_start_0
android.support.v4.content.AsyncTaskLoader$LoadTask .access$000 ( v0 );
(( java.util.concurrent.CountDownLatch ) v1 ).await ( ); // invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
/* :try_end_0 */
/* .catch Ljava/lang/InterruptedException; {:try_start_0 ..:try_end_0} :catch_0 */
/* .line 264 */
} // :cond_0
} // :goto_0
return;
/* .line 260 */
/* :catch_0 */
/* move-exception v1 */
} // .end method
