public class android.support.v4.content.IntentCompat {
	 /* .source "IntentCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/content/IntentCompat$IntentCompatImplIcsMr1;, */
	 /* Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;, */
	 /* Landroid/support/v4/content/IntentCompat$IntentCompatImplBase;, */
	 /* Landroid/support/v4/content/IntentCompat$IntentCompatImpl; */
	 /* } */
} // .end annotation
/* # static fields */
public static final java.lang.String ACTION_EXTERNAL_APPLICATIONS_AVAILABLE;
public static final java.lang.String ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE;
public static final java.lang.String EXTRA_CHANGED_PACKAGE_LIST;
public static final java.lang.String EXTRA_CHANGED_UID_LIST;
public static final java.lang.String EXTRA_HTML_TEXT;
public static final Integer FLAG_ACTIVITY_CLEAR_TASK;
public static final Integer FLAG_ACTIVITY_TASK_ON_HOME;
private static final android.support.v4.content.IntentCompat$IntentCompatImpl IMPL;
/* # direct methods */
static android.support.v4.content.IntentCompat ( ) {
	 /* .locals 2 */
	 /* .prologue */
	 /* .line 85 */
	 /* .line 86 */
	 /* .local v0, "version":I */
	 /* const/16 v1, 0xf */
	 /* if-lt v0, v1, :cond_0 */
	 /* .line 87 */
	 /* new-instance v1, Landroid/support/v4/content/IntentCompat$IntentCompatImplIcsMr1; */
	 /* invoke-direct {v1}, Landroid/support/v4/content/IntentCompat$IntentCompatImplIcsMr1;-><init>()V */
	 /* .line 93 */
} // :goto_0
return;
/* .line 88 */
} // :cond_0
/* const/16 v1, 0xb */
/* if-lt v0, v1, :cond_1 */
/* .line 89 */
/* new-instance v1, Landroid/support/v4/content/IntentCompat$IntentCompatImplHC; */
/* invoke-direct {v1}, Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;-><init>()V */
/* .line 91 */
} // :cond_1
/* new-instance v1, Landroid/support/v4/content/IntentCompat$IntentCompatImplBase; */
/* invoke-direct {v1}, Landroid/support/v4/content/IntentCompat$IntentCompatImplBase;-><init>()V */
} // .end method
private android.support.v4.content.IntentCompat ( ) {
/* .locals 0 */
/* .prologue */
/* .line 95 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 97 */
return;
} // .end method
public static android.content.Intent makeMainActivity ( android.content.ComponentName p0 ) {
/* .locals 1 */
/* .param p0, "mainActivity" # Landroid/content/ComponentName; */
/* .prologue */
/* .line 221 */
v0 = android.support.v4.content.IntentCompat.IMPL;
} // .end method
public static android.content.Intent makeMainSelectorActivity ( java.lang.String p0, java.lang.String p1 ) {
/* .locals 1 */
/* .param p0, "selectorAction" # Ljava/lang/String; */
/* .param p1, "selectorCategory" # Ljava/lang/String; */
/* .prologue */
/* .line 249 */
v0 = android.support.v4.content.IntentCompat.IMPL;
} // .end method
public static android.content.Intent makeRestartActivityTask ( android.content.ComponentName p0 ) {
/* .locals 1 */
/* .param p0, "mainActivity" # Landroid/content/ComponentName; */
/* .prologue */
/* .line 266 */
v0 = android.support.v4.content.IntentCompat.IMPL;
} // .end method
