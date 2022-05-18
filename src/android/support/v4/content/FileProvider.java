public class android.support.v4.content.FileProvider extends android.content.ContentProvider {
	 /* .source "FileProvider.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/content/FileProvider$SimplePathStrategy;, */
	 /* Landroid/support/v4/content/FileProvider$PathStrategy; */
	 /* } */
} // .end annotation
/* # static fields */
private static final java.lang.String ATTR_NAME;
private static final java.lang.String ATTR_PATH;
private static final java.lang.String COLUMNS;
private static final java.io.File DEVICE_ROOT;
private static final java.lang.String META_DATA_FILE_PROVIDER_PATHS;
private static final java.lang.String TAG_CACHE_PATH;
private static final java.lang.String TAG_EXTERNAL;
private static final java.lang.String TAG_FILES_PATH;
private static final java.lang.String TAG_ROOT_PATH;
private static java.util.HashMap sCache;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/HashMap", */
/* "<", */
/* "Ljava/lang/String;", */
/* "Landroid/support/v4/content/FileProvider$PathStrategy;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
/* # instance fields */
private android.support.v4.content.FileProvider$PathStrategy mStrategy;
/* # direct methods */
static android.support.v4.content.FileProvider ( ) {
/* .locals 3 */
/* .prologue */
/* .line 303 */
int v0 = 2; // const/4 v0, 0x2
/* new-array v0, v0, [Ljava/lang/String; */
int v1 = 0; // const/4 v1, 0x0
final String v2 = "_display_name"; // const-string v2, "_display_name"
/* aput-object v2, v0, v1 */
int v1 = 1; // const/4 v1, 0x1
final String v2 = "_size"; // const-string v2, "_size"
/* aput-object v2, v0, v1 */
/* .line 317 */
/* new-instance v0, Ljava/io/File; */
final String v1 = "/"; // const-string v1, "/"
/* invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V */
/* .line 320 */
/* new-instance v0, Ljava/util/HashMap; */
/* invoke-direct {v0}, Ljava/util/HashMap;-><init>()V */
return;
} // .end method
public android.support.v4.content.FileProvider ( ) {
/* .locals 0 */
/* .prologue */
/* .line 302 */
/* invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V */
/* .line 630 */
return;
} // .end method
private static java.io.File buildPath ( java.io.File p0, java.lang.String...p1 ) {
/* .locals 6 */
/* .param p0, "base" # Ljava/io/File; */
/* .param p1, "segments" # [Ljava/lang/String; */
/* .prologue */
/* .line 753 */
/* move-object v1, p0 */
/* .line 754 */
/* .local v1, "cur":Ljava/io/File; */
/* move-object v0, p1 */
/* .local v0, "arr$":[Ljava/lang/String; */
/* array-length v4, v0 */
/* .local v4, "len$":I */
int v3 = 0; // const/4 v3, 0x0
/* .local v3, "i$":I */
/* move-object v2, v1 */
} // .end local v1 # "cur":Ljava/io/File;
/* .local v2, "cur":Ljava/io/File; */
} // :goto_0
/* if-ge v3, v4, :cond_0 */
/* aget-object v5, v0, v3 */
/* .line 755 */
/* .local v5, "segment":Ljava/lang/String; */
if ( v5 != null) { // if-eqz v5, :cond_1
/* .line 756 */
/* new-instance v1, Ljava/io/File; */
/* invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V */
/* .line 754 */
} // .end local v2 # "cur":Ljava/io/File;
/* .restart local v1 # "cur":Ljava/io/File; */
} // :goto_1
/* add-int/lit8 v3, v3, 0x1 */
/* move-object v2, v1 */
} // .end local v1 # "cur":Ljava/io/File;
/* .restart local v2 # "cur":Ljava/io/File; */
/* .line 759 */
} // .end local v5 # "segment":Ljava/lang/String;
} // :cond_0
/* .restart local v5 # "segment":Ljava/lang/String; */
} // :cond_1
/* move-object v1, v2 */
} // .end local v2 # "cur":Ljava/io/File;
/* .restart local v1 # "cur":Ljava/io/File; */
} // .end method
private static java.lang.Object copyOf ( java.lang.Object[] p0, Integer p1 ) {
/* .locals 2 */
/* .param p0, "original" # [Ljava/lang/Object; */
/* .param p1, "newLength" # I */
/* .prologue */
int v1 = 0; // const/4 v1, 0x0
/* .line 769 */
/* new-array v0, p1, [Ljava/lang/Object; */
/* .line 770 */
/* .local v0, "result":[Ljava/lang/Object; */
java.lang.System .arraycopy ( p0,v1,v0,v1,p1 );
/* .line 771 */
} // .end method
private static java.lang.String copyOf ( java.lang.String[] p0, Integer p1 ) {
/* .locals 2 */
/* .param p0, "original" # [Ljava/lang/String; */
/* .param p1, "newLength" # I */
/* .prologue */
int v1 = 0; // const/4 v1, 0x0
/* .line 763 */
/* new-array v0, p1, [Ljava/lang/String; */
/* .line 764 */
/* .local v0, "result":[Ljava/lang/String; */
java.lang.System .arraycopy ( p0,v1,v0,v1,p1 );
/* .line 765 */
} // .end method
private static android.support.v4.content.FileProvider$PathStrategy getPathStrategy ( android.content.Context p0, java.lang.String p1 ) {
/* .locals 5 */
/* .param p0, "context" # Landroid/content/Context; */
/* .param p1, "authority" # Ljava/lang/String; */
/* .prologue */
/* .line 530 */
v3 = android.support.v4.content.FileProvider.sCache;
/* monitor-enter v3 */
/* .line 531 */
try { // :try_start_0
v2 = android.support.v4.content.FileProvider.sCache;
(( java.util.HashMap ) v2 ).get ( p1 ); // invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
/* check-cast v1, Landroid/support/v4/content/FileProvider$PathStrategy; */
/* :try_end_0 */
/* .catchall {:try_start_0 ..:try_end_0} :catchall_0 */
/* .line 532 */
/* .local v1, "strat":Landroid/support/v4/content/FileProvider$PathStrategy; */
/* if-nez v1, :cond_0 */
/* .line 534 */
try { // :try_start_1
android.support.v4.content.FileProvider .parsePathStrategy ( p0,p1 );
/* :try_end_1 */
/* .catch Ljava/io/IOException; {:try_start_1 ..:try_end_1} :catch_0 */
/* .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 ..:try_end_1} :catch_1 */
/* .catchall {:try_start_1 ..:try_end_1} :catchall_0 */
/* .line 542 */
try { // :try_start_2
v2 = android.support.v4.content.FileProvider.sCache;
(( java.util.HashMap ) v2 ).put ( p1, v1 ); // invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
/* .line 544 */
} // :cond_0
/* monitor-exit v3 */
/* .line 545 */
/* .line 535 */
/* :catch_0 */
/* move-exception v0 */
/* .line 536 */
/* .local v0, "e":Ljava/io/IOException; */
/* new-instance v2, Ljava/lang/IllegalArgumentException; */
final String v4 = "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"; // const-string v4, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"
/* invoke-direct {v2, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V */
/* throw v2 */
/* .line 544 */
} // .end local v0 # "e":Ljava/io/IOException;
} // .end local v1 # "strat":Landroid/support/v4/content/FileProvider$PathStrategy;
/* :catchall_0 */
/* move-exception v2 */
/* monitor-exit v3 */
/* :try_end_2 */
/* .catchall {:try_start_2 ..:try_end_2} :catchall_0 */
/* throw v2 */
/* .line 538 */
/* .restart local v1 # "strat":Landroid/support/v4/content/FileProvider$PathStrategy; */
/* :catch_1 */
/* move-exception v0 */
/* .line 539 */
/* .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException; */
try { // :try_start_3
/* new-instance v2, Ljava/lang/IllegalArgumentException; */
final String v4 = "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"; // const-string v4, "Failed to parse android.support.FILE_PROVIDER_PATHS meta-data"
/* invoke-direct {v2, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V */
/* throw v2 */
/* :try_end_3 */
/* .catchall {:try_start_3 ..:try_end_3} :catchall_0 */
} // .end method
public static android.net.Uri getUriForFile ( android.content.Context p0, java.lang.String p1, java.io.File p2 ) {
/* .locals 2 */
/* .param p0, "context" # Landroid/content/Context; */
/* .param p1, "authority" # Ljava/lang/String; */
/* .param p2, "file" # Ljava/io/File; */
/* .prologue */
/* .line 376 */
android.support.v4.content.FileProvider .getPathStrategy ( p0,p1 );
/* .line 377 */
/* .local v0, "strategy":Landroid/support/v4/content/FileProvider$PathStrategy; */
} // .end method
private static Integer modeToMode ( java.lang.String p0 ) {
/* .locals 4 */
/* .param p0, "mode" # Ljava/lang/String; */
/* .prologue */
/* .line 729 */
final String v1 = "r"; // const-string v1, "r"
v1 = (( java.lang.String ) v1 ).equals ( p0 ); // invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
if ( v1 != null) { // if-eqz v1, :cond_0
/* .line 730 */
/* const/high16 v0, 0x10000000 */
/* .line 749 */
/* .local v0, "modeBits":I */
} // :goto_0
/* .line 731 */
} // .end local v0 # "modeBits":I
} // :cond_0
final String v1 = "w"; // const-string v1, "w"
v1 = (( java.lang.String ) v1 ).equals ( p0 ); // invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v1, :cond_1 */
final String v1 = "wt"; // const-string v1, "wt"
v1 = (( java.lang.String ) v1 ).equals ( p0 ); // invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
if ( v1 != null) { // if-eqz v1, :cond_2
/* .line 732 */
} // :cond_1
/* const/high16 v0, 0x2c000000 */
/* .restart local v0 # "modeBits":I */
/* .line 735 */
} // .end local v0 # "modeBits":I
} // :cond_2
final String v1 = "wa"; // const-string v1, "wa"
v1 = (( java.lang.String ) v1 ).equals ( p0 ); // invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
if ( v1 != null) { // if-eqz v1, :cond_3
/* .line 736 */
/* const/high16 v0, 0x2a000000 */
/* .restart local v0 # "modeBits":I */
/* .line 739 */
} // .end local v0 # "modeBits":I
} // :cond_3
final String v1 = "rw"; // const-string v1, "rw"
v1 = (( java.lang.String ) v1 ).equals ( p0 ); // invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
if ( v1 != null) { // if-eqz v1, :cond_4
/* .line 740 */
/* const/high16 v0, 0x38000000 */
/* .restart local v0 # "modeBits":I */
/* .line 742 */
} // .end local v0 # "modeBits":I
} // :cond_4
final String v1 = "rwt"; // const-string v1, "rwt"
v1 = (( java.lang.String ) v1 ).equals ( p0 ); // invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
if ( v1 != null) { // if-eqz v1, :cond_5
/* .line 743 */
/* const/high16 v0, 0x3c000000 # 0.0078125f */
/* .restart local v0 # "modeBits":I */
/* .line 747 */
} // .end local v0 # "modeBits":I
} // :cond_5
/* new-instance v1, Ljava/lang/IllegalArgumentException; */
/* new-instance v2, Ljava/lang/StringBuilder; */
/* invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V */
final String v3 = "Invalid mode: "; // const-string v3, "Invalid mode: "
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).append ( p0 ); // invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).toString ( ); // invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V */
/* throw v1 */
} // .end method
private static android.support.v4.content.FileProvider$PathStrategy parsePathStrategy ( android.content.Context p0, java.lang.String p1 ) {
/* .locals 13 */
/* .param p0, "context" # Landroid/content/Context; */
/* .param p1, "authority" # Ljava/lang/String; */
/* .annotation system Ldalvik/annotation/Throws; */
/* value = { */
/* Ljava/io/IOException;, */
/* Lorg/xmlpull/v1/XmlPullParserException; */
/* } */
} // .end annotation
/* .prologue */
int v12 = 0; // const/4 v12, 0x0
int v11 = 0; // const/4 v11, 0x0
int v10 = 1; // const/4 v10, 0x1
/* .line 556 */
/* new-instance v4, Landroid/support/v4/content/FileProvider$SimplePathStrategy; */
/* invoke-direct {v4, p1}, Landroid/support/v4/content/FileProvider$SimplePathStrategy;-><init>(Ljava/lang/String;)V */
/* .line 558 */
/* .local v4, "strat":Landroid/support/v4/content/FileProvider$SimplePathStrategy; */
(( android.content.Context ) p0 ).getPackageManager ( ); // invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
/* const/16 v9, 0x80 */
(( android.content.pm.PackageManager ) v8 ).resolveContentProvider ( p1, v9 ); // invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
/* .line 560 */
/* .local v1, "info":Landroid/content/pm/ProviderInfo; */
(( android.content.Context ) p0 ).getPackageManager ( ); // invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
final String v9 = "android.support.FILE_PROVIDER_PATHS"; // const-string v9, "android.support.FILE_PROVIDER_PATHS"
(( android.content.pm.ProviderInfo ) v1 ).loadXmlMetaData ( v8, v9 ); // invoke-virtual {v1, v8, v9}, Landroid/content/pm/ProviderInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
/* .line 562 */
/* .local v0, "in":Landroid/content/res/XmlResourceParser; */
/* if-nez v0, :cond_0 */
/* .line 563 */
/* new-instance v8, Ljava/lang/IllegalArgumentException; */
final String v9 = "Missing android.support.FILE_PROVIDER_PATHS meta-data"; // const-string v9, "Missing android.support.FILE_PROVIDER_PATHS meta-data"
/* invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V */
/* throw v8 */
/* .line 568 */
} // :cond_0
v7 = } // :goto_0
/* .local v7, "type":I */
/* if-eq v7, v10, :cond_5 */
/* .line 569 */
int v8 = 2; // const/4 v8, 0x2
/* if-ne v7, v8, :cond_0 */
/* .line 570 */
/* .line 572 */
/* .local v5, "tag":Ljava/lang/String; */
final String v8 = "name"; // const-string v8, "name"
/* .line 573 */
/* .local v2, "name":Ljava/lang/String; */
final String v8 = "path"; // const-string v8, "path"
/* .line 575 */
/* .local v3, "path":Ljava/lang/String; */
int v6 = 0; // const/4 v6, 0x0
/* .line 576 */
/* .local v6, "target":Ljava/io/File; */
final String v8 = "root-path"; // const-string v8, "root-path"
v8 = (( java.lang.String ) v8 ).equals ( v5 ); // invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
if ( v8 != null) { // if-eqz v8, :cond_2
/* .line 577 */
v8 = android.support.v4.content.FileProvider.DEVICE_ROOT;
/* new-array v9, v10, [Ljava/lang/String; */
/* aput-object v3, v9, v11 */
android.support.v4.content.FileProvider .buildPath ( v8,v9 );
/* .line 586 */
} // :cond_1
} // :goto_1
if ( v6 != null) { // if-eqz v6, :cond_0
/* .line 587 */
(( android.support.v4.content.FileProvider$SimplePathStrategy ) v4 ).addRoot ( v2, v6 ); // invoke-virtual {v4, v2, v6}, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->addRoot(Ljava/lang/String;Ljava/io/File;)V
/* .line 578 */
} // :cond_2
final String v8 = "files-path"; // const-string v8, "files-path"
v8 = (( java.lang.String ) v8 ).equals ( v5 ); // invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
if ( v8 != null) { // if-eqz v8, :cond_3
/* .line 579 */
(( android.content.Context ) p0 ).getFilesDir ( ); // invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
/* new-array v9, v10, [Ljava/lang/String; */
/* aput-object v3, v9, v11 */
android.support.v4.content.FileProvider .buildPath ( v8,v9 );
/* .line 580 */
} // :cond_3
final String v8 = "cache-path"; // const-string v8, "cache-path"
v8 = (( java.lang.String ) v8 ).equals ( v5 ); // invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
if ( v8 != null) { // if-eqz v8, :cond_4
/* .line 581 */
(( android.content.Context ) p0 ).getCacheDir ( ); // invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
/* new-array v9, v10, [Ljava/lang/String; */
/* aput-object v3, v9, v11 */
android.support.v4.content.FileProvider .buildPath ( v8,v9 );
/* .line 582 */
} // :cond_4
final String v8 = "external-path"; // const-string v8, "external-path"
v8 = (( java.lang.String ) v8 ).equals ( v5 ); // invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
if ( v8 != null) { // if-eqz v8, :cond_1
/* .line 583 */
android.os.Environment .getExternalStorageDirectory ( );
/* new-array v9, v10, [Ljava/lang/String; */
/* aput-object v3, v9, v11 */
android.support.v4.content.FileProvider .buildPath ( v8,v9 );
/* .line 592 */
} // .end local v2 # "name":Ljava/lang/String;
} // .end local v3 # "path":Ljava/lang/String;
} // .end local v5 # "tag":Ljava/lang/String;
} // .end local v6 # "target":Ljava/io/File;
} // :cond_5
} // .end method
/* # virtual methods */
public void attachInfo ( android.content.Context p0, android.content.pm.ProviderInfo p1 ) {
/* .locals 2 */
/* .param p1, "context" # Landroid/content/Context; */
/* .param p2, "info" # Landroid/content/pm/ProviderInfo; */
/* .prologue */
/* .line 342 */
/* invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V */
/* .line 345 */
/* iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 346 */
/* new-instance v0, Ljava/lang/SecurityException; */
final String v1 = "Provider must not be exported"; // const-string v1, "Provider must not be exported"
/* invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 348 */
} // :cond_0
/* iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z */
/* if-nez v0, :cond_1 */
/* .line 349 */
/* new-instance v0, Ljava/lang/SecurityException; */
final String v1 = "Provider must grant uri permissions"; // const-string v1, "Provider must grant uri permissions"
/* invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 352 */
} // :cond_1
v0 = this.authority;
android.support.v4.content.FileProvider .getPathStrategy ( p1,v0 );
this.mStrategy = v0;
/* .line 353 */
return;
} // .end method
public Integer delete ( android.net.Uri p0, java.lang.String p1, java.lang.String[] p2 ) {
/* .locals 2 */
/* .param p1, "uri" # Landroid/net/Uri; */
/* .param p2, "selection" # Ljava/lang/String; */
/* .param p3, "selectionArgs" # [Ljava/lang/String; */
/* .prologue */
/* .line 497 */
v1 = this.mStrategy;
/* .line 498 */
/* .local v0, "file":Ljava/io/File; */
v1 = (( java.io.File ) v0 ).delete ( ); // invoke-virtual {v0}, Ljava/io/File;->delete()Z
if ( v1 != null) { // if-eqz v1, :cond_0
int v1 = 1; // const/4 v1, 0x1
} // :goto_0
} // :cond_0
int v1 = 0; // const/4 v1, 0x0
} // .end method
public java.lang.String getType ( android.net.Uri p0 ) {
/* .locals 6 */
/* .param p1, "uri" # Landroid/net/Uri; */
/* .prologue */
/* .line 451 */
v4 = this.mStrategy;
/* .line 453 */
/* .local v1, "file":Ljava/io/File; */
(( java.io.File ) v1 ).getName ( ); // invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;
/* const/16 v5, 0x2e */
v2 = (( java.lang.String ) v4 ).lastIndexOf ( v5 ); // invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I
/* .line 454 */
/* .local v2, "lastDot":I */
/* if-ltz v2, :cond_0 */
/* .line 455 */
(( java.io.File ) v1 ).getName ( ); // invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;
/* add-int/lit8 v5, v2, 0x1 */
(( java.lang.String ) v4 ).substring ( v5 ); // invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
/* .line 456 */
/* .local v0, "extension":Ljava/lang/String; */
android.webkit.MimeTypeMap .getSingleton ( );
(( android.webkit.MimeTypeMap ) v4 ).getMimeTypeFromExtension ( v0 ); // invoke-virtual {v4, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
/* .line 457 */
/* .local v3, "mime":Ljava/lang/String; */
if ( v3 != null) { // if-eqz v3, :cond_0
/* .line 462 */
} // .end local v0 # "extension":Ljava/lang/String;
} // .end local v3 # "mime":Ljava/lang/String;
} // :goto_0
} // :cond_0
final String v3 = "application/octet-stream"; // const-string v3, "application/octet-stream"
} // .end method
public android.net.Uri insert ( android.net.Uri p0, android.content.ContentValues p1 ) {
/* .locals 2 */
/* .param p1, "uri" # Landroid/net/Uri; */
/* .param p2, "values" # Landroid/content/ContentValues; */
/* .prologue */
/* .line 471 */
/* new-instance v0, Ljava/lang/UnsupportedOperationException; */
final String v1 = "No external inserts"; // const-string v1, "No external inserts"
/* invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
} // .end method
public Boolean onCreate ( ) {
/* .locals 1 */
/* .prologue */
/* .line 330 */
int v0 = 1; // const/4 v0, 0x1
} // .end method
public android.os.ParcelFileDescriptor openFile ( android.net.Uri p0, java.lang.String p1 ) {
/* .locals 3 */
/* .param p1, "uri" # Landroid/net/Uri; */
/* .param p2, "mode" # Ljava/lang/String; */
/* .annotation system Ldalvik/annotation/Throws; */
/* value = { */
/* Ljava/io/FileNotFoundException; */
/* } */
} // .end annotation
/* .prologue */
/* .line 519 */
v2 = this.mStrategy;
/* .line 520 */
/* .local v0, "file":Ljava/io/File; */
v1 = android.support.v4.content.FileProvider .modeToMode ( p2 );
/* .line 521 */
/* .local v1, "fileMode":I */
android.os.ParcelFileDescriptor .open ( v0,v1 );
} // .end method
public android.database.Cursor query ( android.net.Uri p0, java.lang.String[] p1, java.lang.String p2, java.lang.String[] p3, java.lang.String p4 ) {
/* .locals 12 */
/* .param p1, "uri" # Landroid/net/Uri; */
/* .param p2, "projection" # [Ljava/lang/String; */
/* .param p3, "selection" # Ljava/lang/String; */
/* .param p4, "selectionArgs" # [Ljava/lang/String; */
/* .param p5, "sortOrder" # Ljava/lang/String; */
/* .prologue */
/* .line 412 */
v10 = this.mStrategy;
/* .line 414 */
/* .local v4, "file":Ljava/io/File; */
/* if-nez p2, :cond_0 */
/* .line 415 */
p2 = android.support.v4.content.FileProvider.COLUMNS;
/* .line 418 */
} // :cond_0
/* array-length v10, p2 */
/* new-array v2, v10, [Ljava/lang/String; */
/* .line 419 */
/* .local v2, "cols":[Ljava/lang/String; */
/* array-length v10, p2 */
/* new-array v9, v10, [Ljava/lang/Object; */
/* .line 420 */
/* .local v9, "values":[Ljava/lang/Object; */
int v5 = 0; // const/4 v5, 0x0
/* .line 421 */
/* .local v5, "i":I */
/* move-object v0, p2 */
/* .local v0, "arr$":[Ljava/lang/String; */
/* array-length v8, v0 */
/* .local v8, "len$":I */
int v7 = 0; // const/4 v7, 0x0
/* .local v7, "i$":I */
/* move v6, v5 */
} // .end local v5 # "i":I
/* .local v6, "i":I */
} // :goto_0
/* if-ge v7, v8, :cond_2 */
/* aget-object v1, v0, v7 */
/* .line 422 */
/* .local v1, "col":Ljava/lang/String; */
final String v10 = "_display_name"; // const-string v10, "_display_name"
v10 = (( java.lang.String ) v10 ).equals ( v1 ); // invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
if ( v10 != null) { // if-eqz v10, :cond_1
/* .line 423 */
final String v10 = "_display_name"; // const-string v10, "_display_name"
/* aput-object v10, v2, v6 */
/* .line 424 */
/* add-int/lit8 v5, v6, 0x1 */
} // .end local v6 # "i":I
/* .restart local v5 # "i":I */
(( java.io.File ) v4 ).getName ( ); // invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;
/* aput-object v10, v9, v6 */
/* .line 421 */
} // :goto_1
/* add-int/lit8 v7, v7, 0x1 */
/* move v6, v5 */
} // .end local v5 # "i":I
/* .restart local v6 # "i":I */
/* .line 425 */
} // :cond_1
final String v10 = "_size"; // const-string v10, "_size"
v10 = (( java.lang.String ) v10 ).equals ( v1 ); // invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
if ( v10 != null) { // if-eqz v10, :cond_3
/* .line 426 */
final String v10 = "_size"; // const-string v10, "_size"
/* aput-object v10, v2, v6 */
/* .line 427 */
/* add-int/lit8 v5, v6, 0x1 */
} // .end local v6 # "i":I
/* .restart local v5 # "i":I */
(( java.io.File ) v4 ).length ( ); // invoke-virtual {v4}, Ljava/io/File;->length()J
/* move-result-wide v10 */
java.lang.Long .valueOf ( v10,v11 );
/* aput-object v10, v9, v6 */
/* .line 431 */
} // .end local v1 # "col":Ljava/lang/String;
} // .end local v5 # "i":I
/* .restart local v6 # "i":I */
} // :cond_2
android.support.v4.content.FileProvider .copyOf ( v2,v6 );
/* .line 432 */
android.support.v4.content.FileProvider .copyOf ( v9,v6 );
/* .line 434 */
/* new-instance v3, Landroid/database/MatrixCursor; */
int v10 = 1; // const/4 v10, 0x1
/* invoke-direct {v3, v2, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V */
/* .line 435 */
/* .local v3, "cursor":Landroid/database/MatrixCursor; */
(( android.database.MatrixCursor ) v3 ).addRow ( v9 ); // invoke-virtual {v3, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
/* .line 436 */
} // .end local v3 # "cursor":Landroid/database/MatrixCursor;
/* .restart local v1 # "col":Ljava/lang/String; */
} // :cond_3
/* move v5, v6 */
} // .end local v6 # "i":I
/* .restart local v5 # "i":I */
} // .end method
public Integer update ( android.net.Uri p0, android.content.ContentValues p1, java.lang.String p2, java.lang.String[] p3 ) {
/* .locals 2 */
/* .param p1, "uri" # Landroid/net/Uri; */
/* .param p2, "values" # Landroid/content/ContentValues; */
/* .param p3, "selection" # Ljava/lang/String; */
/* .param p4, "selectionArgs" # [Ljava/lang/String; */
/* .prologue */
/* .line 480 */
/* new-instance v0, Ljava/lang/UnsupportedOperationException; */
final String v1 = "No external updates"; // const-string v1, "No external updates"
/* invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
} // .end method
