class android.support.v4.app.NavUtils$NavUtilsImplJB extends android.support.v4.app.NavUtils$NavUtilsImplBase {
	 /* .source "NavUtils.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NavUtils; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x8 */
/* name = "NavUtilsImplJB" */
} // .end annotation
/* # direct methods */
 android.support.v4.app.NavUtils$NavUtilsImplJB ( ) {
/* .locals 0 */
/* .prologue */
/* .line 96 */
/* invoke-direct {p0}, Landroid/support/v4/app/NavUtils$NavUtilsImplBase;-><init>()V */
return;
} // .end method
/* # virtual methods */
public android.content.Intent getParentActivityIntent ( android.app.Activity p0 ) {
/* .locals 1 */
/* .param p1, "activity" # Landroid/app/Activity; */
/* .prologue */
/* .line 102 */
android.support.v4.app.NavUtilsJB .getParentActivityIntent ( p1 );
/* .line 103 */
/* .local v0, "result":Landroid/content/Intent; */
/* if-nez v0, :cond_0 */
/* .line 104 */
(( android.support.v4.app.NavUtils$NavUtilsImplJB ) p0 ).superGetParentActivityIntent ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/app/NavUtils$NavUtilsImplJB;->superGetParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
/* .line 106 */
} // :cond_0
} // .end method
public java.lang.String getParentActivityName ( android.content.Context p0, android.content.pm.ActivityInfo p1 ) {
/* .locals 1 */
/* .param p1, "context" # Landroid/content/Context; */
/* .param p2, "info" # Landroid/content/pm/ActivityInfo; */
/* .prologue */
/* .line 125 */
android.support.v4.app.NavUtilsJB .getParentActivityName ( p2 );
/* .line 126 */
/* .local v0, "result":Ljava/lang/String; */
/* if-nez v0, :cond_0 */
/* .line 127 */
/* invoke-super {p0, p1, p2}, Landroid/support/v4/app/NavUtils$NavUtilsImplBase;->getParentActivityName(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String; */
/* .line 129 */
} // :cond_0
} // .end method
public void navigateUpTo ( android.app.Activity p0, android.content.Intent p1 ) {
/* .locals 0 */
/* .param p1, "activity" # Landroid/app/Activity; */
/* .param p2, "upIntent" # Landroid/content/Intent; */
/* .prologue */
/* .line 120 */
android.support.v4.app.NavUtilsJB .navigateUpTo ( p1,p2 );
/* .line 121 */
return;
} // .end method
public Boolean shouldUpRecreateTask ( android.app.Activity p0, android.content.Intent p1 ) {
/* .locals 1 */
/* .param p1, "activity" # Landroid/app/Activity; */
/* .param p2, "targetIntent" # Landroid/content/Intent; */
/* .prologue */
/* .line 115 */
v0 = android.support.v4.app.NavUtilsJB .shouldUpRecreateTask ( p1,p2 );
} // .end method
android.content.Intent superGetParentActivityIntent ( android.app.Activity p0 ) {
/* .locals 1 */
/* .param p1, "activity" # Landroid/app/Activity; */
/* .prologue */
/* .line 110 */
/* invoke-super {p0, p1}, Landroid/support/v4/app/NavUtils$NavUtilsImplBase;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent; */
} // .end method
