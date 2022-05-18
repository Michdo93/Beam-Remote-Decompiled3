public class android.support.v4.content.ContextCompat {
	 /* .source "ContextCompat.java" */
	 /* # static fields */
	 private static final java.lang.String DIR_ANDROID;
	 private static final java.lang.String DIR_CACHE;
	 private static final java.lang.String DIR_DATA;
	 private static final java.lang.String DIR_FILES;
	 private static final java.lang.String DIR_OBB;
	 private static final java.lang.String TAG;
	 /* # direct methods */
	 public android.support.v4.content.ContextCompat ( ) {
		 /* .locals 0 */
		 /* .prologue */
		 /* .line 36 */
		 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
		 return;
	 } // .end method
	 private static java.io.File buildPath ( java.io.File p0, java.lang.String...p1 ) {
		 /* .locals 6 */
		 /* .param p0, "base" # Ljava/io/File; */
		 /* .param p1, "segments" # [Ljava/lang/String; */
		 /* .prologue */
		 /* .line 294 */
		 /* move-object v1, p0 */
		 /* .line 295 */
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
/* if-ge v3, v4, :cond_1 */
/* aget-object v5, v0, v3 */
/* .line 296 */
/* .local v5, "segment":Ljava/lang/String; */
/* if-nez v2, :cond_0 */
/* .line 297 */
/* new-instance v1, Ljava/io/File; */
/* invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V */
/* .line 295 */
} // .end local v2 # "cur":Ljava/io/File;
/* .restart local v1 # "cur":Ljava/io/File; */
} // :goto_1
/* add-int/lit8 v3, v3, 0x1 */
/* move-object v2, v1 */
} // .end local v1 # "cur":Ljava/io/File;
/* .restart local v2 # "cur":Ljava/io/File; */
/* .line 298 */
} // :cond_0
if ( v5 != null) { // if-eqz v5, :cond_2
/* .line 299 */
/* new-instance v1, Ljava/io/File; */
/* invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V */
} // .end local v2 # "cur":Ljava/io/File;
/* .restart local v1 # "cur":Ljava/io/File; */
/* .line 302 */
} // .end local v1 # "cur":Ljava/io/File;
} // .end local v5 # "segment":Ljava/lang/String;
/* .restart local v2 # "cur":Ljava/io/File; */
} // :cond_1
/* .restart local v5 # "segment":Ljava/lang/String; */
} // :cond_2
/* move-object v1, v2 */
} // .end local v2 # "cur":Ljava/io/File;
/* .restart local v1 # "cur":Ljava/io/File; */
} // .end method
private static synchronized java.io.File createFilesDir ( java.io.File p0 ) {
/* .locals 4 */
/* .param p0, "file" # Ljava/io/File; */
/* .prologue */
/* .line 377 */
/* const-class v1, Landroid/support/v4/content/ContextCompat; */
/* monitor-enter v1 */
try { // :try_start_0
v0 = (( java.io.File ) p0 ).exists ( ); // invoke-virtual {p0}, Ljava/io/File;->exists()Z
/* if-nez v0, :cond_0 */
/* .line 378 */
v0 = (( java.io.File ) p0 ).mkdirs ( ); // invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z
/* if-nez v0, :cond_0 */
/* .line 379 */
(( java.io.File ) p0 ).exists ( ); // invoke-virtual {p0}, Ljava/io/File;->exists()Z
/* :try_end_0 */
v0 = /* .catchall {:try_start_0 ..:try_end_0} :catchall_0 */
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 387 */
} // .end local p0 # "file":Ljava/io/File;
} // :cond_0
} // :goto_0
/* monitor-exit v1 */
/* .line 383 */
/* .restart local p0 # "file":Ljava/io/File; */
} // :cond_1
try { // :try_start_1
final String v0 = "ContextCompat"; // const-string v0, "ContextCompat"
/* new-instance v2, Ljava/lang/StringBuilder; */
/* invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V */
final String v3 = "Unable to create files subdir "; // const-string v3, "Unable to create files subdir "
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.io.File ) p0 ).getPath ( ); // invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).toString ( ); // invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .w ( v0,v2 );
/* :try_end_1 */
/* .catchall {:try_start_1 ..:try_end_1} :catchall_0 */
/* .line 384 */
int p0 = 0; // const/4 p0, 0x0
/* .line 377 */
/* :catchall_0 */
/* move-exception v0 */
/* monitor-exit v1 */
/* throw v0 */
} // .end method
public static final android.graphics.drawable.Drawable getDrawable ( android.content.Context p0, Integer p1 ) {
/* .locals 2 */
/* .param p0, "context" # Landroid/content/Context; */
/* .param p1, "id" # I */
/* .prologue */
/* .line 317 */
/* .line 318 */
/* .local v0, "version":I */
/* const/16 v1, 0x15 */
/* if-lt v0, v1, :cond_0 */
/* .line 319 */
android.support.v4.content.ContextCompatApi21 .getDrawable ( p0,p1 );
/* .line 321 */
} // :goto_0
} // :cond_0
(( android.content.Context ) p0 ).getResources ( ); // invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
(( android.content.res.Resources ) v1 ).getDrawable ( p1 ); // invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
} // .end method
public static java.io.File getExternalCacheDirs ( android.content.Context p0 ) {
/* .locals 8 */
/* .param p0, "context" # Landroid/content/Context; */
/* .prologue */
int v7 = 1; // const/4 v7, 0x1
int v6 = 0; // const/4 v6, 0x0
/* .line 278 */
/* .line 279 */
/* .local v1, "version":I */
/* const/16 v2, 0x13 */
/* if-lt v1, v2, :cond_0 */
/* .line 280 */
android.support.v4.content.ContextCompatKitKat .getExternalCacheDirs ( p0 );
/* .line 289 */
} // :goto_0
/* .line 283 */
} // :cond_0
/* const/16 v2, 0x8 */
/* if-lt v1, v2, :cond_1 */
/* .line 284 */
android.support.v4.content.ContextCompatFroyo .getExternalCacheDir ( p0 );
/* .line 289 */
/* .local v0, "single":Ljava/io/File; */
} // :goto_1
/* new-array v2, v7, [Ljava/io/File; */
/* aput-object v0, v2, v6 */
/* .line 286 */
} // .end local v0 # "single":Ljava/io/File;
} // :cond_1
android.os.Environment .getExternalStorageDirectory ( );
int v3 = 4; // const/4 v3, 0x4
/* new-array v3, v3, [Ljava/lang/String; */
final String v4 = "Android"; // const-string v4, "Android"
/* aput-object v4, v3, v6 */
final String v4 = "data"; // const-string v4, "data"
/* aput-object v4, v3, v7 */
int v4 = 2; // const/4 v4, 0x2
(( android.content.Context ) p0 ).getPackageName ( ); // invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
/* aput-object v5, v3, v4 */
int v4 = 3; // const/4 v4, 0x3
final String v5 = "cache"; // const-string v5, "cache"
/* aput-object v5, v3, v4 */
android.support.v4.content.ContextCompat .buildPath ( v2,v3 );
/* .restart local v0 # "single":Ljava/io/File; */
} // .end method
public static java.io.File getExternalFilesDirs ( android.content.Context p0, java.lang.String p1 ) {
/* .locals 8 */
/* .param p0, "context" # Landroid/content/Context; */
/* .param p1, "type" # Ljava/lang/String; */
/* .prologue */
int v7 = 1; // const/4 v7, 0x1
int v6 = 0; // const/4 v6, 0x0
/* .line 218 */
/* .line 219 */
/* .local v1, "version":I */
/* const/16 v2, 0x13 */
/* if-lt v1, v2, :cond_0 */
/* .line 220 */
android.support.v4.content.ContextCompatKitKat .getExternalFilesDirs ( p0,p1 );
/* .line 229 */
} // :goto_0
/* .line 223 */
} // :cond_0
/* const/16 v2, 0x8 */
/* if-lt v1, v2, :cond_1 */
/* .line 224 */
android.support.v4.content.ContextCompatFroyo .getExternalFilesDir ( p0,p1 );
/* .line 229 */
/* .local v0, "single":Ljava/io/File; */
} // :goto_1
/* new-array v2, v7, [Ljava/io/File; */
/* aput-object v0, v2, v6 */
/* .line 226 */
} // .end local v0 # "single":Ljava/io/File;
} // :cond_1
android.os.Environment .getExternalStorageDirectory ( );
int v3 = 5; // const/4 v3, 0x5
/* new-array v3, v3, [Ljava/lang/String; */
final String v4 = "Android"; // const-string v4, "Android"
/* aput-object v4, v3, v6 */
final String v4 = "data"; // const-string v4, "data"
/* aput-object v4, v3, v7 */
int v4 = 2; // const/4 v4, 0x2
(( android.content.Context ) p0 ).getPackageName ( ); // invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
/* aput-object v5, v3, v4 */
int v4 = 3; // const/4 v4, 0x3
final String v5 = "files"; // const-string v5, "files"
/* aput-object v5, v3, v4 */
int v4 = 4; // const/4 v4, 0x4
/* aput-object p1, v3, v4 */
android.support.v4.content.ContextCompat .buildPath ( v2,v3 );
/* .restart local v0 # "single":Ljava/io/File; */
} // .end method
public static java.io.File getObbDirs ( android.content.Context p0 ) {
/* .locals 8 */
/* .param p0, "context" # Landroid/content/Context; */
/* .prologue */
int v7 = 1; // const/4 v7, 0x1
int v6 = 0; // const/4 v6, 0x0
/* .line 158 */
/* .line 159 */
/* .local v1, "version":I */
/* const/16 v2, 0x13 */
/* if-lt v1, v2, :cond_0 */
/* .line 160 */
android.support.v4.content.ContextCompatKitKat .getObbDirs ( p0 );
/* .line 169 */
} // :goto_0
/* .line 163 */
} // :cond_0
/* const/16 v2, 0xb */
/* if-lt v1, v2, :cond_1 */
/* .line 164 */
android.support.v4.content.ContextCompatHoneycomb .getObbDir ( p0 );
/* .line 169 */
/* .local v0, "single":Ljava/io/File; */
} // :goto_1
/* new-array v2, v7, [Ljava/io/File; */
/* aput-object v0, v2, v6 */
/* .line 166 */
} // .end local v0 # "single":Ljava/io/File;
} // :cond_1
android.os.Environment .getExternalStorageDirectory ( );
int v3 = 3; // const/4 v3, 0x3
/* new-array v3, v3, [Ljava/lang/String; */
final String v4 = "Android"; // const-string v4, "Android"
/* aput-object v4, v3, v6 */
final String v4 = "obb"; // const-string v4, "obb"
/* aput-object v4, v3, v7 */
int v4 = 2; // const/4 v4, 0x2
(( android.content.Context ) p0 ).getPackageName ( ); // invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
/* aput-object v5, v3, v4 */
android.support.v4.content.ContextCompat .buildPath ( v2,v3 );
/* .restart local v0 # "single":Ljava/io/File; */
} // .end method
public static Boolean startActivities ( android.content.Context p0, android.content.Intent[] p1 ) {
/* .locals 1 */
/* .param p0, "context" # Landroid/content/Context; */
/* .param p1, "intents" # [Landroid/content/Intent; */
/* .prologue */
/* .line 71 */
int v0 = 0; // const/4 v0, 0x0
v0 = android.support.v4.content.ContextCompat .startActivities ( p0,p1,v0 );
} // .end method
public static Boolean startActivities ( android.content.Context p0, android.content.Intent[] p1, android.os.Bundle p2 ) {
/* .locals 3 */
/* .param p0, "context" # Landroid/content/Context; */
/* .param p1, "intents" # [Landroid/content/Intent; */
/* .param p2, "options" # Landroid/os/Bundle; */
/* .prologue */
int v1 = 1; // const/4 v1, 0x1
/* .line 103 */
/* .line 104 */
/* .local v0, "version":I */
/* const/16 v2, 0x10 */
/* if-lt v0, v2, :cond_0 */
/* .line 105 */
android.support.v4.content.ContextCompatJellybean .startActivities ( p0,p1,p2 );
/* .line 111 */
} // :goto_0
/* .line 107 */
} // :cond_0
/* const/16 v2, 0xb */
/* if-lt v0, v2, :cond_1 */
/* .line 108 */
android.support.v4.content.ContextCompatHoneycomb .startActivities ( p0,p1 );
/* .line 111 */
} // :cond_1
int v1 = 0; // const/4 v1, 0x0
} // .end method
/* # virtual methods */
public final java.io.File getCodeCacheDir ( android.content.Context p0 ) {
/* .locals 5 */
/* .param p1, "context" # Landroid/content/Context; */
/* .prologue */
/* .line 367 */
/* .line 368 */
/* .local v1, "version":I */
/* const/16 v2, 0x15 */
/* if-lt v1, v2, :cond_0 */
/* .line 369 */
android.support.v4.content.ContextCompatApi21 .getCodeCacheDir ( p1 );
/* .line 372 */
} // :goto_0
/* .line 371 */
} // :cond_0
(( android.content.Context ) p1 ).getApplicationInfo ( ); // invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
/* .line 372 */
/* .local v0, "appInfo":Landroid/content/pm/ApplicationInfo; */
/* new-instance v2, Ljava/io/File; */
v3 = this.dataDir;
final String v4 = "code_cache"; // const-string v4, "code_cache"
/* invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V */
android.support.v4.content.ContextCompat .createFilesDir ( v2 );
} // .end method
public final java.io.File getNoBackupFilesDir ( android.content.Context p0 ) {
/* .locals 5 */
/* .param p1, "context" # Landroid/content/Context; */
/* .prologue */
/* .line 342 */
/* .line 343 */
/* .local v1, "version":I */
/* const/16 v2, 0x15 */
/* if-lt v1, v2, :cond_0 */
/* .line 344 */
android.support.v4.content.ContextCompatApi21 .getNoBackupFilesDir ( p1 );
/* .line 347 */
} // :goto_0
/* .line 346 */
} // :cond_0
(( android.content.Context ) p1 ).getApplicationInfo ( ); // invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
/* .line 347 */
/* .local v0, "appInfo":Landroid/content/pm/ApplicationInfo; */
/* new-instance v2, Ljava/io/File; */
v3 = this.dataDir;
final String v4 = "no_backup"; // const-string v4, "no_backup"
/* invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V */
android.support.v4.content.ContextCompat .createFilesDir ( v2 );
} // .end method
