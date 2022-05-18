class android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl extends android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl {
	 /* .source "AccessibilityServiceInfoCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x8 */
/* name = "AccessibilityServiceInfoIcsImpl" */
} // .end annotation
/* # direct methods */
 android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl ( ) {
/* .locals 0 */
/* .prologue */
/* .line 67 */
/* invoke-direct {p0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl;-><init>()V */
return;
} // .end method
/* # virtual methods */
public Boolean getCanRetrieveWindowContent ( android.accessibilityservice.AccessibilityServiceInfo p0 ) {
/* .locals 1 */
/* .param p1, "info" # Landroid/accessibilityservice/AccessibilityServiceInfo; */
/* .prologue */
/* .line 71 */
v0 = android.support.v4.accessibilityservice.AccessibilityServiceInfoCompatIcs .getCanRetrieveWindowContent ( p1 );
} // .end method
public Integer getCapabilities ( android.accessibilityservice.AccessibilityServiceInfo p0 ) {
/* .locals 1 */
/* .param p1, "info" # Landroid/accessibilityservice/AccessibilityServiceInfo; */
/* .prologue */
/* .line 96 */
v0 = (( android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl ) p0 ).getCanRetrieveWindowContent ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl;->getCanRetrieveWindowContent(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
if ( v0 != null) { // if-eqz v0, :cond_0
	 /* .line 97 */
	 int v0 = 1; // const/4 v0, 0x1
	 /* .line 99 */
} // :goto_0
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
} // .end method
public java.lang.String getDescription ( android.accessibilityservice.AccessibilityServiceInfo p0 ) {
/* .locals 1 */
/* .param p1, "info" # Landroid/accessibilityservice/AccessibilityServiceInfo; */
/* .prologue */
/* .line 76 */
android.support.v4.accessibilityservice.AccessibilityServiceInfoCompatIcs .getDescription ( p1 );
} // .end method
public java.lang.String getId ( android.accessibilityservice.AccessibilityServiceInfo p0 ) {
/* .locals 1 */
/* .param p1, "info" # Landroid/accessibilityservice/AccessibilityServiceInfo; */
/* .prologue */
/* .line 81 */
android.support.v4.accessibilityservice.AccessibilityServiceInfoCompatIcs .getId ( p1 );
} // .end method
public android.content.pm.ResolveInfo getResolveInfo ( android.accessibilityservice.AccessibilityServiceInfo p0 ) {
/* .locals 1 */
/* .param p1, "info" # Landroid/accessibilityservice/AccessibilityServiceInfo; */
/* .prologue */
/* .line 86 */
android.support.v4.accessibilityservice.AccessibilityServiceInfoCompatIcs .getResolveInfo ( p1 );
} // .end method
public java.lang.String getSettingsActivityName ( android.accessibilityservice.AccessibilityServiceInfo p0 ) {
/* .locals 1 */
/* .param p1, "info" # Landroid/accessibilityservice/AccessibilityServiceInfo; */
/* .prologue */
/* .line 91 */
android.support.v4.accessibilityservice.AccessibilityServiceInfoCompatIcs .getSettingsActivityName ( p1 );
} // .end method
