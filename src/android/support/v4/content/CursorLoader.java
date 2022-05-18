public class android.support.v4.content.CursorLoader extends android.support.v4.content.AsyncTaskLoader {
	 /* .source "CursorLoader.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/Signature; */
	 /* value = { */
	 /* "Landroid/support/v4/content/AsyncTaskLoader", */
	 /* "<", */
	 /* "Landroid/database/Cursor;", */
	 /* ">;" */
	 /* } */
} // .end annotation
/* # instance fields */
android.database.Cursor mCursor;
final android.support.v4.content.Loader$ForceLoadContentObserver mObserver;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Landroid/support/v4/content/Loader", */
/* "<", */
/* "Landroid/database/Cursor;", */
/* ">.Force", */
/* "LoadContentObserver;" */
/* } */
} // .end annotation
} // .end field
java.lang.String mProjection;
java.lang.String mSelection;
java.lang.String mSelectionArgs;
java.lang.String mSortOrder;
android.net.Uri mUri;
/* # direct methods */
public android.support.v4.content.CursorLoader ( ) {
/* .locals 1 */
/* .param p1, "context" # Landroid/content/Context; */
/* .prologue */
/* .line 87 */
/* invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V */
/* .line 88 */
/* new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver; */
/* invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V */
this.mObserver = v0;
/* .line 89 */
return;
} // .end method
public android.support.v4.content.CursorLoader ( ) {
/* .locals 1 */
/* .param p1, "context" # Landroid/content/Context; */
/* .param p2, "uri" # Landroid/net/Uri; */
/* .param p3, "projection" # [Ljava/lang/String; */
/* .param p4, "selection" # Ljava/lang/String; */
/* .param p5, "selectionArgs" # [Ljava/lang/String; */
/* .param p6, "sortOrder" # Ljava/lang/String; */
/* .prologue */
/* .line 99 */
/* invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V */
/* .line 100 */
/* new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver; */
/* invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V */
this.mObserver = v0;
/* .line 101 */
this.mUri = p2;
/* .line 102 */
this.mProjection = p3;
/* .line 103 */
this.mSelection = p4;
/* .line 104 */
this.mSelectionArgs = p5;
/* .line 105 */
this.mSortOrder = p6;
/* .line 106 */
return;
} // .end method
/* # virtual methods */
public void deliverResult ( android.database.Cursor p0 ) {
/* .locals 2 */
/* .param p1, "cursor" # Landroid/database/Cursor; */
/* .prologue */
/* .line 62 */
v1 = (( android.support.v4.content.CursorLoader ) p0 ).isReset ( ); // invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->isReset()Z
if ( v1 != null) { // if-eqz v1, :cond_1
/* .line 64 */
if ( p1 != null) { // if-eqz p1, :cond_0
	 /* .line 65 */
	 /* .line 79 */
} // :cond_0
} // :goto_0
return;
/* .line 69 */
} // :cond_1
v0 = this.mCursor;
/* .line 70 */
/* .local v0, "oldCursor":Landroid/database/Cursor; */
this.mCursor = p1;
/* .line 72 */
v1 = (( android.support.v4.content.CursorLoader ) p0 ).isStarted ( ); // invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->isStarted()Z
if ( v1 != null) { // if-eqz v1, :cond_2
/* .line 73 */
/* invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V */
/* .line 76 */
} // :cond_2
if ( v0 != null) { // if-eqz v0, :cond_0
v1 = /* if-eq v0, p1, :cond_0 */
/* if-nez v1, :cond_0 */
/* .line 77 */
} // .end method
public void deliverResult ( java.lang.Object p0 ) { //bridge//synthethic
/* .locals 0 */
/* .param p1, "x0" # Ljava/lang/Object; */
/* .prologue */
/* .line 35 */
/* check-cast p1, Landroid/database/Cursor; */
} // .end local p1 # "x0":Ljava/lang/Object;
(( android.support.v4.content.CursorLoader ) p0 ).deliverResult ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V
return;
} // .end method
public void dump ( java.lang.String p0, java.io.FileDescriptor p1, java.io.PrintWriter p2, java.lang.String[] p3 ) {
/* .locals 1 */
/* .param p1, "prefix" # Ljava/lang/String; */
/* .param p2, "fd" # Ljava/io/FileDescriptor; */
/* .param p3, "writer" # Ljava/io/PrintWriter; */
/* .param p4, "args" # [Ljava/lang/String; */
/* .prologue */
/* .line 196 */
/* invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V */
/* .line 197 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mUri="; // const-string v0, "mUri="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
v0 = this.mUri;
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
/* .line 198 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mProjection="; // const-string v0, "mProjection="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 199 */
v0 = this.mProjection;
java.util.Arrays .toString ( v0 );
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
/* .line 200 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mSelection="; // const-string v0, "mSelection="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
v0 = this.mSelection;
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
/* .line 201 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mSelectionArgs="; // const-string v0, "mSelectionArgs="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* .line 202 */
v0 = this.mSelectionArgs;
java.util.Arrays .toString ( v0 );
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
/* .line 203 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mSortOrder="; // const-string v0, "mSortOrder="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
v0 = this.mSortOrder;
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
/* .line 204 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mCursor="; // const-string v0, "mCursor="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
v0 = this.mCursor;
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
/* .line 205 */
(( java.io.PrintWriter ) p3 ).print ( p1 ); // invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
final String v0 = "mContentChanged="; // const-string v0, "mContentChanged="
(( java.io.PrintWriter ) p3 ).print ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
/* iget-boolean v0, p0, Landroid/support/v4/content/CursorLoader;->mContentChanged:Z */
(( java.io.PrintWriter ) p3 ).println ( v0 ); // invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V
/* .line 206 */
return;
} // .end method
public java.lang.String getProjection ( ) {
/* .locals 1 */
/* .prologue */
/* .line 163 */
v0 = this.mProjection;
} // .end method
public java.lang.String getSelection ( ) {
/* .locals 1 */
/* .prologue */
/* .line 171 */
v0 = this.mSelection;
} // .end method
public java.lang.String getSelectionArgs ( ) {
/* .locals 1 */
/* .prologue */
/* .line 179 */
v0 = this.mSelectionArgs;
} // .end method
public java.lang.String getSortOrder ( ) {
/* .locals 1 */
/* .prologue */
/* .line 187 */
v0 = this.mSortOrder;
} // .end method
public android.net.Uri getUri ( ) {
/* .locals 1 */
/* .prologue */
/* .line 155 */
v0 = this.mUri;
} // .end method
public android.database.Cursor loadInBackground ( ) {
/* .locals 7 */
/* .prologue */
/* .line 49 */
(( android.support.v4.content.CursorLoader ) p0 ).getContext ( ); // invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->getContext()Landroid/content/Context;
(( android.content.Context ) v0 ).getContentResolver ( ); // invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
v1 = this.mUri;
v2 = this.mProjection;
v3 = this.mSelection;
v4 = this.mSelectionArgs;
v5 = this.mSortOrder;
/* invoke-virtual/range {v0 ..v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor; */
/* .line 51 */
/* .local v6, "cursor":Landroid/database/Cursor; */
if ( v6 != null) { // if-eqz v6, :cond_0
/* .line 53 */
/* .line 54 */
v0 = this.mObserver;
/* .line 56 */
} // :cond_0
} // .end method
public java.lang.Object loadInBackground ( ) { //bridge//synthethic
/* .locals 1 */
/* .prologue */
/* .line 35 */
(( android.support.v4.content.CursorLoader ) p0 ).loadInBackground ( ); // invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;
} // .end method
public void onCanceled ( android.database.Cursor p0 ) {
/* .locals 1 */
/* .param p1, "cursor" # Landroid/database/Cursor; */
/* .prologue */
/* .line 136 */
v0 = if ( p1 != null) { // if-eqz p1, :cond_0
/* if-nez v0, :cond_0 */
/* .line 137 */
/* .line 139 */
} // :cond_0
return;
} // .end method
public void onCanceled ( java.lang.Object p0 ) { //bridge//synthethic
/* .locals 0 */
/* .param p1, "x0" # Ljava/lang/Object; */
/* .prologue */
/* .line 35 */
/* check-cast p1, Landroid/database/Cursor; */
} // .end local p1 # "x0":Ljava/lang/Object;
(( android.support.v4.content.CursorLoader ) p0 ).onCanceled ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V
return;
} // .end method
protected void onReset ( ) {
/* .locals 1 */
/* .prologue */
/* .line 143 */
/* invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V */
/* .line 146 */
(( android.support.v4.content.CursorLoader ) p0 ).onStopLoading ( ); // invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->onStopLoading()V
/* .line 148 */
v0 = this.mCursor;
if ( v0 != null) { // if-eqz v0, :cond_0
v0 = v0 = this.mCursor;
/* if-nez v0, :cond_0 */
/* .line 149 */
v0 = this.mCursor;
/* .line 151 */
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
this.mCursor = v0;
/* .line 152 */
return;
} // .end method
protected void onStartLoading ( ) {
/* .locals 1 */
/* .prologue */
/* .line 117 */
v0 = this.mCursor;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 118 */
v0 = this.mCursor;
(( android.support.v4.content.CursorLoader ) p0 ).deliverResult ( v0 ); // invoke-virtual {p0, v0}, Landroid/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V
/* .line 120 */
} // :cond_0
v0 = (( android.support.v4.content.CursorLoader ) p0 ).takeContentChanged ( ); // invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->takeContentChanged()Z
/* if-nez v0, :cond_1 */
v0 = this.mCursor;
/* if-nez v0, :cond_2 */
/* .line 121 */
} // :cond_1
(( android.support.v4.content.CursorLoader ) p0 ).forceLoad ( ); // invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->forceLoad()V
/* .line 123 */
} // :cond_2
return;
} // .end method
protected void onStopLoading ( ) {
/* .locals 0 */
/* .prologue */
/* .line 131 */
(( android.support.v4.content.CursorLoader ) p0 ).cancelLoad ( ); // invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->cancelLoad()Z
/* .line 132 */
return;
} // .end method
public void setProjection ( java.lang.String[] p0 ) {
/* .locals 0 */
/* .param p1, "projection" # [Ljava/lang/String; */
/* .prologue */
/* .line 167 */
this.mProjection = p1;
/* .line 168 */
return;
} // .end method
public void setSelection ( java.lang.String p0 ) {
/* .locals 0 */
/* .param p1, "selection" # Ljava/lang/String; */
/* .prologue */
/* .line 175 */
this.mSelection = p1;
/* .line 176 */
return;
} // .end method
public void setSelectionArgs ( java.lang.String[] p0 ) {
/* .locals 0 */
/* .param p1, "selectionArgs" # [Ljava/lang/String; */
/* .prologue */
/* .line 183 */
this.mSelectionArgs = p1;
/* .line 184 */
return;
} // .end method
public void setSortOrder ( java.lang.String p0 ) {
/* .locals 0 */
/* .param p1, "sortOrder" # Ljava/lang/String; */
/* .prologue */
/* .line 191 */
this.mSortOrder = p1;
/* .line 192 */
return;
} // .end method
public void setUri ( android.net.Uri p0 ) {
/* .locals 0 */
/* .param p1, "uri" # Landroid/net/Uri; */
/* .prologue */
/* .line 159 */
this.mUri = p1;
/* .line 160 */
return;
} // .end method
