public class android.support.v4.content.Loader {
	 /* .source "Loader.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/content/Loader$OnLoadCompleteListener;, */
	 /* Landroid/support/v4/content/Loader$ForceLoadContentObserver; */
	 /* } */
} // .end annotation
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "<D:", */
/* "Ljava/lang/Object;", */
/* ">", */
/* "Ljava/lang/Object;" */
/* } */
} // .end annotation
/* # instance fields */
Boolean mAbandoned;
Boolean mContentChanged;
android.content.Context mContext;
Integer mId;
android.support.v4.content.Loader$OnLoadCompleteListener mListener;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Landroid/support/v4/content/Loader$OnLoadCompleteListener", */
/* "<TD;>;" */
/* } */
} // .end annotation
} // .end field
Boolean mProcessingChange;
Boolean mReset;
Boolean mStarted;
/* # direct methods */
public android.support.v4.content.Loader ( ) {
/* .locals 2 */
/* .param p1, "context" # Landroid/content/Context; */
/* .prologue */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
int v1 = 0; // const/4 v1, 0x0
/* .line 91 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 38 */
/* iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mStarted:Z */
/* .line 39 */
/* iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z */
/* .line 40 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z */
/* .line 41 */
/* iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z */
/* .line 42 */
/* iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z */
/* .line 92 */
(( android.content.Context ) p1 ).getApplicationContext ( ); // invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
this.mContext = v0;
/* .line 93 */
return;
} // .end method
/* # virtual methods */
public void abandon ( ) {
/* .locals 1 */
/* .prologue */
/* .line 262 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z */
/* .line 263 */
(( android.support.v4.content.Loader ) p0 ).onAbandon ( ); // invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onAbandon()V
/* .line 264 */
return;
} // .end method
public void commitContentChanged ( ) {
/* .locals 1 */
/* .prologue */
/* .line 328 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
int v0 = 0; // const/4 v0, 0x0
/* iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z */
/* .line 329 */
return;
} // .end method
public java.lang.String dataToString ( java.lang.Object p0 ) {
/* .locals 2 */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(TD;)", */
/* "Ljava/lang/String;" */
/* } */
} // .end annotation
/* .prologue */
/* .line 368 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
/* .local p1, "data":Ljava/lang/Object;, "TD;" */
/* new-instance v0, Ljava/lang/StringBuilder; */
/* const/16 v1, 0x40 */
/* invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V */
/* .line 369 */
/* .local v0, "sb":Ljava/lang/StringBuilder; */
android.support.v4.util.DebugUtils .buildShortClassTag ( p1,v0 );
/* .line 370 */
final String v1 = "}"; // const-string v1, "}"
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 371 */
(( java.lang.StringBuilder ) v0 ).toString ( ); // invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
} // .end method
public void deliverResult ( java.lang.Object p0 ) {
/* .locals 1 */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(TD;)V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 103 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
/* .local p1, "data":Ljava/lang/Object;, "TD;" */
v0 = this.mListener;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 104 */
v0 = this.mListener;
/* .line 106 */
} // :cond_0
return;
} // .end method
public void dump ( java.lang.String p0, java.io.FileDescriptor p1, java.io.PrintWriter p2, java.lang.String[] p3 ) {
/* .locals 1 */
/* .param p1, "prefix" # Ljava/lang/String; */
/* .param p2, "fd" # Ljava/io/FileDescriptor; */
/* .param p3, "writer" # Ljava/io/PrintWriter; */
/* .param p4, "args" # [Ljava/lang/String; */
/* .prologue */
/* .line 393 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mId="; // const-string v0, "mId="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget v0, p0, Landroid/support/v4/content/Loader;->mId:I */
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V
/* .line 394 */
final String v0 = " mListener="; // const-string v0, " mListener="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
v0 = this.mListener;
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
/* .line 395 */
/* iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z */
/* if-nez v0, :cond_0 */
/* iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z */
/* if-nez v0, :cond_0 */
/* iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z */
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 396 */
} // :cond_0
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mStarted="; // const-string v0, "mStarted="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z */
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
/* .line 397 */
final String v0 = " mContentChanged="; // const-string v0, " mContentChanged="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z */
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
/* .line 398 */
final String v0 = " mProcessingChange="; // const-string v0, " mProcessingChange="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z */
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
/* .line 400 */
} // :cond_1
/* iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z */
/* if-nez v0, :cond_2 */
/* iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z */
if ( v0 != null) { // if-eqz v0, :cond_3
/* .line 401 */
} // :cond_2
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mAbandoned="; // const-string v0, "mAbandoned="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z */
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V
/* .line 402 */
final String v0 = " mReset="; // const-string v0, " mReset="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z */
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
/* .line 404 */
} // :cond_3
return;
} // .end method
public void forceLoad ( ) {
/* .locals 0 */
/* .prologue */
/* .line 218 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
(( android.support.v4.content.Loader ) p0 ).onForceLoad ( ); // invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onForceLoad()V
/* .line 219 */
return;
} // .end method
public android.content.Context getContext ( ) {
/* .locals 1 */
/* .prologue */
/* .line 112 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
v0 = this.mContext;
} // .end method
public Integer getId ( ) {
/* .locals 1 */
/* .prologue */
/* .line 119 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
/* iget v0, p0, Landroid/support/v4/content/Loader;->mId:I */
} // .end method
public Boolean isAbandoned ( ) {
/* .locals 1 */
/* .prologue */
/* .line 167 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
/* iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z */
} // .end method
public Boolean isReset ( ) {
/* .locals 1 */
/* .prologue */
/* .line 176 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
/* iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z */
} // .end method
public Boolean isStarted ( ) {
/* .locals 1 */
/* .prologue */
/* .line 158 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
/* iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z */
} // .end method
protected void onAbandon ( ) {
/* .locals 0 */
/* .prologue */
/* .line 276 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
return;
} // .end method
public void onContentChanged ( ) {
/* .locals 1 */
/* .prologue */
/* .line 353 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
/* iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 354 */
(( android.support.v4.content.Loader ) p0 ).forceLoad ( ); // invoke-virtual {p0}, Landroid/support/v4/content/Loader;->forceLoad()V
/* .line 361 */
} // :goto_0
return;
/* .line 359 */
} // :cond_0
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z */
} // .end method
protected void onForceLoad ( ) {
/* .locals 0 */
/* .prologue */
/* .line 226 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
return;
} // .end method
protected void onReset ( ) {
/* .locals 0 */
/* .prologue */
/* .line 306 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
return;
} // .end method
protected void onStartLoading ( ) {
/* .locals 0 */
/* .prologue */
/* .line 207 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
return;
} // .end method
protected void onStopLoading ( ) {
/* .locals 0 */
/* .prologue */
/* .line 254 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
return;
} // .end method
public void registerListener ( Integer p0, android.support.v4.content.Loader$OnLoadCompleteListener p1 ) {
/* .locals 2 */
/* .param p1, "id" # I */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(I", */
/* "Landroid/support/v4/content/Loader$OnLoadCompleteListener", */
/* "<TD;>;)V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 130 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
/* .local p2, "listener":Landroid/support/v4/content/Loader$OnLoadCompleteListener;, "Landroid/support/v4/content/Loader$OnLoadCompleteListener<TD;>;" */
v0 = this.mListener;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 131 */
/* new-instance v0, Ljava/lang/IllegalStateException; */
final String v1 = "There is already a listener registered"; // const-string v1, "There is already a listener registered"
/* invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 133 */
} // :cond_0
this.mListener = p2;
/* .line 134 */
/* iput p1, p0, Landroid/support/v4/content/Loader;->mId:I */
/* .line 135 */
return;
} // .end method
public void reset ( ) {
/* .locals 2 */
/* .prologue */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
int v1 = 0; // const/4 v1, 0x0
/* .line 291 */
(( android.support.v4.content.Loader ) p0 ).onReset ( ); // invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onReset()V
/* .line 292 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z */
/* .line 293 */
/* iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mStarted:Z */
/* .line 294 */
/* iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z */
/* .line 295 */
/* iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z */
/* .line 296 */
/* iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z */
/* .line 297 */
return;
} // .end method
public void rollbackContentChanged ( ) {
/* .locals 1 */
/* .prologue */
/* .line 339 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
/* iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 340 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z */
/* .line 342 */
} // :cond_0
return;
} // .end method
public final void startLoading ( ) {
/* .locals 2 */
/* .prologue */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
int v1 = 0; // const/4 v1, 0x0
/* .line 195 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z */
/* .line 196 */
/* iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mReset:Z */
/* .line 197 */
/* iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z */
/* .line 198 */
(( android.support.v4.content.Loader ) p0 ).onStartLoading ( ); // invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onStartLoading()V
/* .line 199 */
return;
} // .end method
public void stopLoading ( ) {
/* .locals 1 */
/* .prologue */
/* .line 243 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
int v0 = 0; // const/4 v0, 0x0
/* iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z */
/* .line 244 */
(( android.support.v4.content.Loader ) p0 ).onStopLoading ( ); // invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onStopLoading()V
/* .line 245 */
return;
} // .end method
public Boolean takeContentChanged ( ) {
/* .locals 2 */
/* .prologue */
/* .line 314 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
/* iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z */
/* .line 315 */
/* .local v0, "res":Z */
int v1 = 0; // const/4 v1, 0x0
/* iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z */
/* .line 316 */
/* iget-boolean v1, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z */
/* or-int/2addr v1, v0 */
/* iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mProcessingChange:Z */
/* .line 317 */
} // .end method
public java.lang.String toString ( ) {
/* .locals 2 */
/* .prologue */
/* .line 376 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
/* new-instance v0, Ljava/lang/StringBuilder; */
/* const/16 v1, 0x40 */
/* invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V */
/* .line 377 */
/* .local v0, "sb":Ljava/lang/StringBuilder; */
android.support.v4.util.DebugUtils .buildShortClassTag ( p0,v0 );
/* .line 378 */
final String v1 = " id="; // const-string v1, " id="
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 379 */
/* iget v1, p0, Landroid/support/v4/content/Loader;->mId:I */
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
/* .line 380 */
final String v1 = "}"; // const-string v1, "}"
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 381 */
(( java.lang.StringBuilder ) v0 ).toString ( ); // invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
} // .end method
public void unregisterListener ( android.support.v4.content.Loader$OnLoadCompleteListener p0 ) {
/* .locals 2 */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Landroid/support/v4/content/Loader$OnLoadCompleteListener", */
/* "<TD;>;)V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 143 */
/* .local p0, "this":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<TD;>;" */
/* .local p1, "listener":Landroid/support/v4/content/Loader$OnLoadCompleteListener;, "Landroid/support/v4/content/Loader$OnLoadCompleteListener<TD;>;" */
v0 = this.mListener;
/* if-nez v0, :cond_0 */
/* .line 144 */
/* new-instance v0, Ljava/lang/IllegalStateException; */
final String v1 = "No listener register"; // const-string v1, "No listener register"
/* invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 146 */
} // :cond_0
v0 = this.mListener;
/* if-eq v0, p1, :cond_1 */
/* .line 147 */
/* new-instance v0, Ljava/lang/IllegalArgumentException; */
final String v1 = "Attempting to unregister the wrong listener"; // const-string v1, "Attempting to unregister the wrong listener"
/* invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 149 */
} // :cond_1
int v0 = 0; // const/4 v0, 0x0
this.mListener = v0;
/* .line 150 */
return;
} // .end method
