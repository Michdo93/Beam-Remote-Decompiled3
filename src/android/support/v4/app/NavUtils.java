public class android.support.v4.app.NavUtils {
	 /* .source "NavUtils.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/NavUtils$NavUtilsImplJB;, */
	 /* Landroid/support/v4/app/NavUtils$NavUtilsImplBase;, */
	 /* Landroid/support/v4/app/NavUtils$NavUtilsImpl; */
	 /* } */
} // .end annotation
/* # static fields */
private static final android.support.v4.app.NavUtils$NavUtilsImpl IMPL;
public static final java.lang.String PARENT_ACTIVITY;
private static final java.lang.String TAG;
/* # direct methods */
static android.support.v4.app.NavUtils ( ) {
	 /* .locals 2 */
	 /* .prologue */
	 /* .line 136 */
	 /* .line 137 */
	 /* .local v0, "version":I */
	 /* const/16 v1, 0x10 */
	 /* if-lt v0, v1, :cond_0 */
	 /* .line 138 */
	 /* new-instance v1, Landroid/support/v4/app/NavUtils$NavUtilsImplJB; */
	 /* invoke-direct {v1}, Landroid/support/v4/app/NavUtils$NavUtilsImplJB;-><init>()V */
	 /* .line 142 */
} // :goto_0
return;
/* .line 140 */
} // :cond_0
/* new-instance v1, Landroid/support/v4/app/NavUtils$NavUtilsImplBase; */
/* invoke-direct {v1}, Landroid/support/v4/app/NavUtils$NavUtilsImplBase;-><init>()V */
} // .end method
private android.support.v4.app.NavUtils ( ) {
/* .locals 0 */
/* .prologue */
/* .line 307 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 308 */
return;
} // .end method
public static android.content.Intent getParentActivityIntent ( android.app.Activity p0 ) {
/* .locals 1 */
/* .param p0, "sourceActivity" # Landroid/app/Activity; */
/* .prologue */
/* .line 216 */
v0 = android.support.v4.app.NavUtils.IMPL;
} // .end method
public static android.content.Intent getParentActivityIntent ( android.content.Context p0, android.content.ComponentName p1 ) {
/* .locals 5 */
/* .param p0, "context" # Landroid/content/Context; */
/* .param p1, "componentName" # Landroid/content/ComponentName; */
/* .annotation system Ldalvik/annotation/Throws; */
/* value = { */
/* Landroid/content/pm/PackageManager$NameNotFoundException; */
/* } */
} // .end annotation
/* .prologue */
/* .line 256 */
android.support.v4.app.NavUtils .getParentActivityName ( p0,p1 );
/* .line 257 */
/* .local v1, "parentActivity":Ljava/lang/String; */
/* if-nez v1, :cond_0 */
int v2 = 0; // const/4 v2, 0x0
/* .line 266 */
} // :goto_0
/* .line 260 */
} // :cond_0
/* new-instance v3, Landroid/content/ComponentName; */
(( android.content.ComponentName ) p1 ).getPackageName ( ); // invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
/* invoke-direct {v3, v4, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V */
/* .line 262 */
/* .local v3, "target":Landroid/content/ComponentName; */
android.support.v4.app.NavUtils .getParentActivityName ( p0,v3 );
/* .line 263 */
/* .local v0, "grandparent":Ljava/lang/String; */
/* if-nez v0, :cond_1 */
android.support.v4.content.IntentCompat .makeMainActivity ( v3 );
/* .line 266 */
/* .local v2, "parentIntent":Landroid/content/Intent; */
} // :goto_1
/* .line 263 */
} // .end local v2 # "parentIntent":Landroid/content/Intent;
} // :cond_1
/* new-instance v4, Landroid/content/Intent; */
/* invoke-direct {v4}, Landroid/content/Intent;-><init>()V */
(( android.content.Intent ) v4 ).setComponent ( v3 ); // invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
} // .end method
public static android.content.Intent getParentActivityIntent ( android.content.Context p0, java.lang.Class p1 ) {
/* .locals 5 */
/* .param p0, "context" # Landroid/content/Context; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Landroid/content/Context;", */
/* "Ljava/lang/Class", */
/* "<*>;)", */
/* "Landroid/content/Intent;" */
/* } */
} // .end annotation
/* .annotation system Ldalvik/annotation/Throws; */
/* value = { */
/* Landroid/content/pm/PackageManager$NameNotFoundException; */
/* } */
} // .end annotation
/* .prologue */
/* .line 231 */
/* .local p1, "sourceActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;" */
/* new-instance v4, Landroid/content/ComponentName; */
/* invoke-direct {v4, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V */
android.support.v4.app.NavUtils .getParentActivityName ( p0,v4 );
/* .line 233 */
/* .local v1, "parentActivity":Ljava/lang/String; */
/* if-nez v1, :cond_0 */
int v2 = 0; // const/4 v2, 0x0
/* .line 241 */
} // :goto_0
/* .line 236 */
} // :cond_0
/* new-instance v3, Landroid/content/ComponentName; */
/* invoke-direct {v3, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V */
/* .line 237 */
/* .local v3, "target":Landroid/content/ComponentName; */
android.support.v4.app.NavUtils .getParentActivityName ( p0,v3 );
/* .line 238 */
/* .local v0, "grandparent":Ljava/lang/String; */
/* if-nez v0, :cond_1 */
android.support.v4.content.IntentCompat .makeMainActivity ( v3 );
/* .line 241 */
/* .local v2, "parentIntent":Landroid/content/Intent; */
} // :goto_1
/* .line 238 */
} // .end local v2 # "parentIntent":Landroid/content/Intent;
} // :cond_1
/* new-instance v4, Landroid/content/Intent; */
/* invoke-direct {v4}, Landroid/content/Intent;-><init>()V */
(( android.content.Intent ) v4 ).setComponent ( v3 ); // invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
} // .end method
public static java.lang.String getParentActivityName ( android.app.Activity p0 ) {
/* .locals 2 */
/* .param p0, "sourceActivity" # Landroid/app/Activity; */
/* .annotation build Landroid/support/annotation/Nullable; */
} // .end annotation
/* .prologue */
/* .line 281 */
try { // :try_start_0
(( android.app.Activity ) p0 ).getComponentName ( ); // invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;
android.support.v4.app.NavUtils .getParentActivityName ( p0,v1 );
/* :try_end_0 */
/* .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 ..:try_end_0} :catch_0 */
/* .line 282 */
/* :catch_0 */
/* move-exception v0 */
/* .line 284 */
/* .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException; */
/* new-instance v1, Ljava/lang/IllegalArgumentException; */
/* invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V */
/* throw v1 */
} // .end method
public static java.lang.String getParentActivityName ( android.content.Context p0, android.content.ComponentName p1 ) {
/* .locals 4 */
/* .param p0, "context" # Landroid/content/Context; */
/* .param p1, "componentName" # Landroid/content/ComponentName; */
/* .annotation build Landroid/support/annotation/Nullable; */
} // .end annotation
/* .annotation system Ldalvik/annotation/Throws; */
/* value = { */
/* Landroid/content/pm/PackageManager$NameNotFoundException; */
/* } */
} // .end annotation
/* .prologue */
/* .line 300 */
(( android.content.Context ) p0 ).getPackageManager ( ); // invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
/* .line 301 */
/* .local v2, "pm":Landroid/content/pm/PackageManager; */
/* const/16 v3, 0x80 */
(( android.content.pm.PackageManager ) v2 ).getActivityInfo ( p1, v3 ); // invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
/* .line 302 */
/* .local v0, "info":Landroid/content/pm/ActivityInfo; */
v3 = android.support.v4.app.NavUtils.IMPL;
/* .line 303 */
/* .local v1, "parentActivity":Ljava/lang/String; */
} // .end method
public static void navigateUpFromSameTask ( android.app.Activity p0 ) {
/* .locals 4 */
/* .param p0, "sourceActivity" # Landroid/app/Activity; */
/* .prologue */
/* .line 175 */
android.support.v4.app.NavUtils .getParentActivityIntent ( p0 );
/* .line 177 */
/* .local v0, "upIntent":Landroid/content/Intent; */
/* if-nez v0, :cond_0 */
/* .line 178 */
/* new-instance v1, Ljava/lang/IllegalArgumentException; */
/* new-instance v2, Ljava/lang/StringBuilder; */
/* invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V */
final String v3 = "Activity "; // const-string v3, "Activity "
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.Object ) p0 ).getClass ( ); // invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
(( java.lang.Class ) v3 ).getSimpleName ( ); // invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v3 = " does not have a parent activity name specified."; // const-string v3, " does not have a parent activity name specified."
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v3 = " (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data> "; // const-string v3, " (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data> "
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v3 = " element in your manifest?)"; // const-string v3, " element in your manifest?)"
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).toString ( ); // invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V */
/* throw v1 */
/* .line 185 */
} // :cond_0
android.support.v4.app.NavUtils .navigateUpTo ( p0,v0 );
/* .line 186 */
return;
} // .end method
public static void navigateUpTo ( android.app.Activity p0, android.content.Intent p1 ) {
/* .locals 1 */
/* .param p0, "sourceActivity" # Landroid/app/Activity; */
/* .param p1, "upIntent" # Landroid/content/Intent; */
/* .prologue */
/* .line 202 */
v0 = android.support.v4.app.NavUtils.IMPL;
/* .line 203 */
return;
} // .end method
public static Boolean shouldUpRecreateTask ( android.app.Activity p0, android.content.Intent p1 ) {
/* .locals 1 */
/* .param p0, "sourceActivity" # Landroid/app/Activity; */
/* .param p1, "targetIntent" # Landroid/content/Intent; */
/* .prologue */
/* .line 159 */
v0 = v0 = android.support.v4.app.NavUtils.IMPL;
} // .end method
