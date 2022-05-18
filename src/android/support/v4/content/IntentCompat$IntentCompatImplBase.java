class android.support.v4.content.IntentCompat$IntentCompatImplBase implements android.support.v4.content.IntentCompat$IntentCompatImpl {
	 /* .source "IntentCompat.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/content/IntentCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x8 */
/* name = "IntentCompatImplBase" */
} // .end annotation
/* # direct methods */
 android.support.v4.content.IntentCompat$IntentCompatImplBase ( ) {
/* .locals 0 */
/* .prologue */
/* .line 36 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
/* # virtual methods */
public android.content.Intent makeMainActivity ( android.content.ComponentName p0 ) {
/* .locals 2 */
/* .param p1, "componentName" # Landroid/content/ComponentName; */
/* .prologue */
/* .line 39 */
/* new-instance v0, Landroid/content/Intent; */
final String v1 = "android.intent.action.MAIN"; // const-string v1, "android.intent.action.MAIN"
/* invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V */
/* .line 40 */
/* .local v0, "intent":Landroid/content/Intent; */
(( android.content.Intent ) v0 ).setComponent ( p1 ); // invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
/* .line 41 */
final String v1 = "android.intent.category.LAUNCHER"; // const-string v1, "android.intent.category.LAUNCHER"
(( android.content.Intent ) v0 ).addCategory ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
/* .line 42 */
} // .end method
public android.content.Intent makeMainSelectorActivity ( java.lang.String p0, java.lang.String p1 ) {
/* .locals 1 */
/* .param p1, "selectorAction" # Ljava/lang/String; */
/* .param p2, "selectorCategory" # Ljava/lang/String; */
/* .prologue */
/* .line 51 */
/* new-instance v0, Landroid/content/Intent; */
/* invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V */
/* .line 52 */
/* .local v0, "intent":Landroid/content/Intent; */
(( android.content.Intent ) v0 ).addCategory ( p2 ); // invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
/* .line 53 */
} // .end method
public android.content.Intent makeRestartActivityTask ( android.content.ComponentName p0 ) {
/* .locals 2 */
/* .param p1, "mainActivity" # Landroid/content/ComponentName; */
/* .prologue */
/* .line 58 */
(( android.support.v4.content.IntentCompat$IntentCompatImplBase ) p0 ).makeMainActivity ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/content/IntentCompat$IntentCompatImplBase;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
/* .line 59 */
/* .local v0, "intent":Landroid/content/Intent; */
/* const v1, 0x10008000 */
(( android.content.Intent ) v0 ).addFlags ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
/* .line 61 */
} // .end method
