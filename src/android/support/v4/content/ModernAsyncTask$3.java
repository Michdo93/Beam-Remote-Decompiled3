class android.support.v4.content.ModernAsyncTask$3 extends java.util.concurrent.FutureTask {
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
/* "Ljava/util/concurrent/FutureTask", */
/* "<TResult;>;" */
/* } */
} // .end annotation
/* # instance fields */
final android.support.v4.content.ModernAsyncTask this$0; //synthetic
/* # direct methods */
 android.support.v4.content.ModernAsyncTask$3 ( ) {
/* .locals 0 */
/* .prologue */
/* .line 127 */
/* .local p0, "this":Landroid/support/v4/content/ModernAsyncTask$3;, "Landroid/support/v4/content/ModernAsyncTask.3;" */
/* .local p2, "x0":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TResult;>;" */
this.this$0 = p1;
/* invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V */
return;
} // .end method
/* # virtual methods */
protected void done ( ) {
/* .locals 6 */
/* .prologue */
/* .line 131 */
/* .local p0, "this":Landroid/support/v4/content/ModernAsyncTask$3;, "Landroid/support/v4/content/ModernAsyncTask.3;" */
try { // :try_start_0
(( android.support.v4.content.ModernAsyncTask$3 ) p0 ).get ( ); // invoke-virtual {p0}, Landroid/support/v4/content/ModernAsyncTask$3;->get()Ljava/lang/Object;
/* .line 133 */
/* .local v1, "result":Ljava/lang/Object;, "TResult;" */
v3 = this.this$0;
android.support.v4.content.ModernAsyncTask .access$400 ( v3,v1 );
/* :try_end_0 */
/* .catch Ljava/lang/InterruptedException; {:try_start_0 ..:try_end_0} :catch_0 */
/* .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 ..:try_end_0} :catch_1 */
/* .catch Ljava/util/concurrent/CancellationException; {:try_start_0 ..:try_end_0} :catch_2 */
/* .catch Ljava/lang/Throwable; {:try_start_0 ..:try_end_0} :catch_3 */
/* .line 145 */
} // .end local v1 # "result":Ljava/lang/Object;, "TResult;"
} // :goto_0
return;
/* .line 134 */
/* :catch_0 */
/* move-exception v0 */
/* .line 135 */
/* .local v0, "e":Ljava/lang/InterruptedException; */
final String v3 = "AsyncTask"; // const-string v3, "AsyncTask"
android.util.Log .w ( v3,v0 );
/* .line 136 */
} // .end local v0 # "e":Ljava/lang/InterruptedException;
/* :catch_1 */
/* move-exception v0 */
/* .line 137 */
/* .local v0, "e":Ljava/util/concurrent/ExecutionException; */
/* new-instance v3, Ljava/lang/RuntimeException; */
final String v4 = "An error occured while executing doInBackground()"; // const-string v4, "An error occured while executing doInBackground()"
(( java.util.concurrent.ExecutionException ) v0 ).getCause ( ); // invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;
/* invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V */
/* throw v3 */
/* .line 139 */
} // .end local v0 # "e":Ljava/util/concurrent/ExecutionException;
/* :catch_2 */
/* move-exception v0 */
/* .line 140 */
/* .local v0, "e":Ljava/util/concurrent/CancellationException; */
v3 = this.this$0;
int v4 = 0; // const/4 v4, 0x0
android.support.v4.content.ModernAsyncTask .access$400 ( v3,v4 );
/* .line 141 */
} // .end local v0 # "e":Ljava/util/concurrent/CancellationException;
/* :catch_3 */
/* move-exception v2 */
/* .line 142 */
/* .local v2, "t":Ljava/lang/Throwable; */
/* new-instance v3, Ljava/lang/RuntimeException; */
final String v4 = "An error occured while executing doInBackground()"; // const-string v4, "An error occured while executing doInBackground()"
/* invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V */
/* throw v3 */
} // .end method
