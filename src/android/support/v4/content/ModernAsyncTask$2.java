class android.support.v4.content.ModernAsyncTask$2 extends android.support.v4.content.ModernAsyncTask$WorkerRunnable {
	 /* .source "ModernAsyncTask.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingMethod; */
	 /* value = Landroid/support/v4/content/ModernAsyncTask;-><init>()V */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x0 */
/* name = null */
} // .end annotation
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable", */
/* "<TParams;TResult;>;" */
/* } */
} // .end annotation
/* # instance fields */
final android.support.v4.content.ModernAsyncTask this$0; //synthetic
/* # direct methods */
 android.support.v4.content.ModernAsyncTask$2 ( ) {
/* .locals 1 */
/* .prologue */
/* .line 118 */
/* .local p0, "this":Landroid/support/v4/content/ModernAsyncTask$2;, "Landroid/support/v4/content/ModernAsyncTask.2;" */
this.this$0 = p1;
int v0 = 0; // const/4 v0, 0x0
/* invoke-direct {p0, v0}, Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable;-><init>(Landroid/support/v4/content/ModernAsyncTask$1;)V */
return;
} // .end method
/* # virtual methods */
public java.lang.Object call ( ) {
/* .locals 3 */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "()TResult;" */
/* } */
} // .end annotation
/* .annotation system Ldalvik/annotation/Throws; */
/* value = { */
/* Ljava/lang/Exception; */
/* } */
} // .end annotation
/* .prologue */
/* .line 120 */
/* .local p0, "this":Landroid/support/v4/content/ModernAsyncTask$2;, "Landroid/support/v4/content/ModernAsyncTask.2;" */
v0 = this.this$0;
android.support.v4.content.ModernAsyncTask .access$200 ( v0 );
int v1 = 1; // const/4 v1, 0x1
(( java.util.concurrent.atomic.AtomicBoolean ) v0 ).set ( v1 ); // invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
/* .line 122 */
/* const/16 v0, 0xa */
android.os.Process .setThreadPriority ( v0 );
/* .line 123 */
v0 = this.this$0;
v1 = this.this$0;
v2 = this.mParams;
(( android.support.v4.content.ModernAsyncTask ) v1 ).doInBackground ( v2 ); // invoke-virtual {v1, v2}, Landroid/support/v4/content/ModernAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
android.support.v4.content.ModernAsyncTask .access$300 ( v0,v1 );
} // .end method
