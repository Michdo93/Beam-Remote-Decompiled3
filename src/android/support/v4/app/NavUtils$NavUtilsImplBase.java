class android.support.v4.app.NavUtils$NavUtilsImplBase implements android.support.v4.app.NavUtils$NavUtilsImpl {
	 /* .source "NavUtils.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NavUtils; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x8 */
/* name = "NavUtilsImplBase" */
} // .end annotation
/* # direct methods */
 android.support.v4.app.NavUtils$NavUtilsImplBase ( ) {
/* .locals 0 */
/* .prologue */
/* .line 49 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
/* # virtual methods */
public android.content.Intent getParentActivityIntent ( android.app.Activity p0 ) {
/* .locals 8 */
/* .param p1, "activity" # Landroid/app/Activity; */
/* .prologue */
int v2 = 0; // const/4 v2, 0x0
/* .line 53 */
android.support.v4.app.NavUtils .getParentActivityName ( p1 );
/* .line 54 */
/* .local v3, "parentName":Ljava/lang/String; */
/* if-nez v3, :cond_0 */
/* .line 67 */
} // :goto_0
/* .line 57 */
} // :cond_0
/* new-instance v4, Landroid/content/ComponentName; */
/* invoke-direct {v4, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V */
/* .line 59 */
/* .local v4, "target":Landroid/content/ComponentName; */
try { // :try_start_0
android.support.v4.app.NavUtils .getParentActivityName ( p1,v4 );
/* .line 60 */
/* .local v1, "grandparent":Ljava/lang/String; */
/* if-nez v1, :cond_1 */
android.support.v4.content.IntentCompat .makeMainActivity ( v4 );
/* .line 63 */
/* .local v2, "parentIntent":Landroid/content/Intent; */
} // :goto_1
/* .line 60 */
} // .end local v2 # "parentIntent":Landroid/content/Intent;
} // :cond_1
/* new-instance v5, Landroid/content/Intent; */
/* invoke-direct {v5}, Landroid/content/Intent;-><init>()V */
(( android.content.Intent ) v5 ).setComponent ( v4 ); // invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
/* :try_end_0 */
/* .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 ..:try_end_0} :catch_0 */
/* .line 64 */
} // .end local v1 # "grandparent":Ljava/lang/String;
/* :catch_0 */
/* move-exception v0 */
/* .line 65 */
/* .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException; */
final String v5 = "NavUtils"; // const-string v5, "NavUtils"
/* new-instance v6, Ljava/lang/StringBuilder; */
/* invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V */
final String v7 = "getParentActivityIntent: bad parentActivityName \'"; // const-string v7, "getParentActivityIntent: bad parentActivityName \'"
(( java.lang.StringBuilder ) v6 ).append ( v7 ); // invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v6 ).append ( v3 ); // invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v7 = "\' in manifest"; // const-string v7, "\' in manifest"
(( java.lang.StringBuilder ) v6 ).append ( v7 ); // invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v6 ).toString ( ); // invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .e ( v5,v6 );
} // .end method
public java.lang.String getParentActivityName ( android.content.Context p0, android.content.pm.ActivityInfo p1 ) {
/* .locals 4 */
/* .param p1, "context" # Landroid/content/Context; */
/* .param p2, "info" # Landroid/content/pm/ActivityInfo; */
/* .prologue */
int v1 = 0; // const/4 v1, 0x0
/* .line 86 */
v2 = this.metaData;
/* if-nez v2, :cond_1 */
/* move-object v0, v1 */
/* .line 92 */
} // :cond_0
} // :goto_0
/* .line 87 */
} // :cond_1
v2 = this.metaData;
final String v3 = "android.support.PARENT_ACTIVITY"; // const-string v3, "android.support.PARENT_ACTIVITY"
(( android.os.Bundle ) v2 ).getString ( v3 ); // invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
/* .line 88 */
/* .local v0, "parentActivity":Ljava/lang/String; */
/* if-nez v0, :cond_2 */
/* move-object v0, v1 */
/* .line 89 */
} // :cond_2
int v1 = 0; // const/4 v1, 0x0
v1 = (( java.lang.String ) v0 ).charAt ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
/* const/16 v2, 0x2e */
/* if-ne v1, v2, :cond_0 */
/* .line 90 */
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
(( android.content.Context ) p1 ).getPackageName ( ); // invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).append ( v0 ); // invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
} // .end method
public void navigateUpTo ( android.app.Activity p0, android.content.Intent p1 ) {
/* .locals 1 */
/* .param p1, "activity" # Landroid/app/Activity; */
/* .param p2, "upIntent" # Landroid/content/Intent; */
/* .prologue */
/* .line 79 */
/* const/high16 v0, 0x4000000 */
(( android.content.Intent ) p2 ).addFlags ( v0 ); // invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
/* .line 80 */
(( android.app.Activity ) p1 ).startActivity ( p2 ); // invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
/* .line 81 */
(( android.app.Activity ) p1 ).finish ( ); // invoke-virtual {p1}, Landroid/app/Activity;->finish()V
/* .line 82 */
return;
} // .end method
public Boolean shouldUpRecreateTask ( android.app.Activity p0, android.content.Intent p1 ) {
/* .locals 2 */
/* .param p1, "activity" # Landroid/app/Activity; */
/* .param p2, "targetIntent" # Landroid/content/Intent; */
/* .prologue */
/* .line 73 */
(( android.app.Activity ) p1 ).getIntent ( ); // invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;
(( android.content.Intent ) v1 ).getAction ( ); // invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
/* .line 74 */
/* .local v0, "action":Ljava/lang/String; */
if ( v0 != null) { // if-eqz v0, :cond_0
final String v1 = "android.intent.action.MAIN"; // const-string v1, "android.intent.action.MAIN"
v1 = (( java.lang.String ) v0 ).equals ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v1, :cond_0 */
int v1 = 1; // const/4 v1, 0x1
} // :goto_0
} // :cond_0
int v1 = 0; // const/4 v1, 0x0
} // .end method
