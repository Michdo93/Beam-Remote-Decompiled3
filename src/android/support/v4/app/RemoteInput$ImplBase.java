class android.support.v4.app.RemoteInput$ImplBase implements android.support.v4.app.RemoteInput$Impl {
	 /* .source "RemoteInput.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/RemoteInput; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x8 */
/* name = "ImplBase" */
} // .end annotation
/* # direct methods */
 android.support.v4.app.RemoteInput$ImplBase ( ) {
/* .locals 0 */
/* .prologue */
/* .line 215 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
/* # virtual methods */
public void addResultsToIntent ( android.support.v4.app.RemoteInput[] p0, android.content.Intent p1, android.os.Bundle p2 ) {
/* .locals 2 */
/* .param p1, "remoteInputs" # [Landroid/support/v4/app/RemoteInput; */
/* .param p2, "intent" # Landroid/content/Intent; */
/* .param p3, "results" # Landroid/os/Bundle; */
/* .prologue */
/* .line 224 */
final String v0 = "RemoteInput"; // const-string v0, "RemoteInput"
final String v1 = "RemoteInput is only supported from API Level 16"; // const-string v1, "RemoteInput is only supported from API Level 16"
android.util.Log .w ( v0,v1 );
/* .line 225 */
return;
} // .end method
public android.os.Bundle getResultsFromIntent ( android.content.Intent p0 ) {
/* .locals 2 */
/* .param p1, "intent" # Landroid/content/Intent; */
/* .prologue */
/* .line 218 */
final String v0 = "RemoteInput"; // const-string v0, "RemoteInput"
final String v1 = "RemoteInput is only supported from API Level 16"; // const-string v1, "RemoteInput is only supported from API Level 16"
android.util.Log .w ( v0,v1 );
/* .line 219 */
int v0 = 0; // const/4 v0, 0x0
} // .end method
