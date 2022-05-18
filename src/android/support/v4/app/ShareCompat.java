public class android.support.v4.app.ShareCompat {
	 /* .source "ShareCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/ShareCompat$IntentReader;, */
	 /* Landroid/support/v4/app/ShareCompat$IntentBuilder;, */
	 /* Landroid/support/v4/app/ShareCompat$ShareCompatImplJB;, */
	 /* Landroid/support/v4/app/ShareCompat$ShareCompatImplICS;, */
	 /* Landroid/support/v4/app/ShareCompat$ShareCompatImplBase;, */
	 /* Landroid/support/v4/app/ShareCompat$ShareCompatImpl; */
	 /* } */
} // .end annotation
/* # static fields */
public static final java.lang.String EXTRA_CALLING_ACTIVITY;
public static final java.lang.String EXTRA_CALLING_PACKAGE;
private static android.support.v4.app.ShareCompat$ShareCompatImpl IMPL;
/* # direct methods */
static android.support.v4.app.ShareCompat ( ) {
	 /* .locals 2 */
	 /* .prologue */
	 /* .line 152 */
	 /* const/16 v1, 0x10 */
	 /* if-lt v0, v1, :cond_0 */
	 /* .line 153 */
	 /* new-instance v0, Landroid/support/v4/app/ShareCompat$ShareCompatImplJB; */
	 /* invoke-direct {v0}, Landroid/support/v4/app/ShareCompat$ShareCompatImplJB;-><init>()V */
	 /* .line 159 */
} // :goto_0
return;
/* .line 154 */
} // :cond_0
/* const/16 v1, 0xe */
/* if-lt v0, v1, :cond_1 */
/* .line 155 */
/* new-instance v0, Landroid/support/v4/app/ShareCompat$ShareCompatImplICS; */
/* invoke-direct {v0}, Landroid/support/v4/app/ShareCompat$ShareCompatImplICS;-><init>()V */
/* .line 157 */
} // :cond_1
/* new-instance v0, Landroid/support/v4/app/ShareCompat$ShareCompatImplBase; */
/* invoke-direct {v0}, Landroid/support/v4/app/ShareCompat$ShareCompatImplBase;-><init>()V */
} // .end method
public android.support.v4.app.ShareCompat ( ) {
/* .locals 0 */
/* .prologue */
/* .line 59 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 655 */
return;
} // .end method
static android.support.v4.app.ShareCompat$ShareCompatImpl access$000 ( ) { //synthethic
/* .locals 1 */
/* .prologue */
/* .line 59 */
v0 = android.support.v4.app.ShareCompat.IMPL;
} // .end method
public static void configureMenuItem ( android.view.Menu p0, Integer p1, android.support.v4.app.ShareCompat$IntentBuilder p2 ) {
/* .locals 4 */
/* .param p0, "menu" # Landroid/view/Menu; */
/* .param p1, "menuItemId" # I */
/* .param p2, "shareIntent" # Landroid/support/v4/app/ShareCompat$IntentBuilder; */
/* .prologue */
/* .line 245 */
/* .line 246 */
/* .local v0, "item":Landroid/view/MenuItem; */
/* if-nez v0, :cond_0 */
/* .line 247 */
/* new-instance v1, Ljava/lang/IllegalArgumentException; */
/* new-instance v2, Ljava/lang/StringBuilder; */
/* invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V */
final String v3 = "Could not find menu item with id "; // const-string v3, "Could not find menu item with id "
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).append ( p1 ); // invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
final String v3 = " in the supplied menu"; // const-string v3, " in the supplied menu"
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).toString ( ); // invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V */
/* throw v1 */
/* .line 250 */
} // :cond_0
android.support.v4.app.ShareCompat .configureMenuItem ( v0,p2 );
/* .line 251 */
return;
} // .end method
public static void configureMenuItem ( android.view.MenuItem p0, android.support.v4.app.ShareCompat$IntentBuilder p1 ) {
/* .locals 1 */
/* .param p0, "item" # Landroid/view/MenuItem; */
/* .param p1, "shareIntent" # Landroid/support/v4/app/ShareCompat$IntentBuilder; */
/* .prologue */
/* .line 233 */
v0 = android.support.v4.app.ShareCompat.IMPL;
/* .line 234 */
return;
} // .end method
public static android.content.ComponentName getCallingActivity ( android.app.Activity p0 ) {
/* .locals 3 */
/* .param p0, "calledActivity" # Landroid/app/Activity; */
/* .prologue */
/* .line 194 */
(( android.app.Activity ) p0 ).getCallingActivity ( ); // invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;
/* .line 195 */
/* .local v0, "result":Landroid/content/ComponentName; */
/* if-nez v0, :cond_0 */
/* .line 196 */
(( android.app.Activity ) p0 ).getIntent ( ); // invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;
final String v2 = "android.support.v4.app.EXTRA_CALLING_ACTIVITY"; // const-string v2, "android.support.v4.app.EXTRA_CALLING_ACTIVITY"
(( android.content.Intent ) v1 ).getParcelableExtra ( v2 ); // invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
} // .end local v0 # "result":Landroid/content/ComponentName;
/* check-cast v0, Landroid/content/ComponentName; */
/* .line 198 */
/* .restart local v0 # "result":Landroid/content/ComponentName; */
} // :cond_0
} // .end method
public static java.lang.String getCallingPackage ( android.app.Activity p0 ) {
/* .locals 3 */
/* .param p0, "calledActivity" # Landroid/app/Activity; */
/* .prologue */
/* .line 174 */
(( android.app.Activity ) p0 ).getCallingPackage ( ); // invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;
/* .line 175 */
/* .local v0, "result":Ljava/lang/String; */
/* if-nez v0, :cond_0 */
/* .line 176 */
(( android.app.Activity ) p0 ).getIntent ( ); // invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;
final String v2 = "android.support.v4.app.EXTRA_CALLING_PACKAGE"; // const-string v2, "android.support.v4.app.EXTRA_CALLING_PACKAGE"
(( android.content.Intent ) v1 ).getStringExtra ( v2 ); // invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
/* .line 178 */
} // :cond_0
} // .end method
