public abstract class android.support.v4.app.LoaderManager {
	 /* .source "LoaderManager.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/LoaderManager$LoaderCallbacks; */
	 /* } */
} // .end annotation
/* # direct methods */
public android.support.v4.app.LoaderManager ( ) {
	 /* .locals 0 */
	 /* .prologue */
	 /* .line 39 */
	 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
	 /* .line 43 */
	 return;
} // .end method
public static void enableDebugLogging ( Boolean p0 ) {
	 /* .locals 0 */
	 /* .param p0, "enabled" # Z */
	 /* .prologue */
	 /* .line 177 */
	 android.support.v4.app.LoaderManagerImpl.DEBUG = (p0!= 0);
	 /* .line 178 */
	 return;
} // .end method
/* # virtual methods */
public abstract void destroyLoader ( Integer p0 ) {
} // .end method
public abstract void dump ( java.lang.String p0, java.io.FileDescriptor p1, java.io.PrintWriter p2, java.lang.String[] p3 ) {
} // .end method
public abstract android.support.v4.content.Loader getLoader ( Integer p0 ) {
	 /* .annotation system Ldalvik/annotation/Signature; */
	 /* value = { */
	 /* "<D:", */
	 /* "Ljava/lang/Object;", */
	 /* ">(I)", */
	 /* "Landroid/support/v4/content/Loader", */
	 /* "<TD;>;" */
	 /* } */
} // .end annotation
} // .end method
public Boolean hasRunningLoaders ( ) {
/* .locals 1 */
/* .prologue */
/* .line 184 */
int v0 = 0; // const/4 v0, 0x0
} // .end method
public abstract android.support.v4.content.Loader initLoader ( Integer p0, android.os.Bundle p1, android.support.v4.app.LoaderManager$LoaderCallbacks p2 ) {
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "<D:", */
/* "Ljava/lang/Object;", */
/* ">(I", */
/* "Landroid/os/Bundle;", */
/* "Landroid/support/v4/app/LoaderManager$LoaderCallbacks", */
/* "<TD;>;)", */
/* "Landroid/support/v4/content/Loader", */
/* "<TD;>;" */
/* } */
} // .end annotation
} // .end method
public abstract android.support.v4.content.Loader restartLoader ( Integer p0, android.os.Bundle p1, android.support.v4.app.LoaderManager$LoaderCallbacks p2 ) {
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "<D:", */
/* "Ljava/lang/Object;", */
/* ">(I", */
/* "Landroid/os/Bundle;", */
/* "Landroid/support/v4/app/LoaderManager$LoaderCallbacks", */
/* "<TD;>;)", */
/* "Landroid/support/v4/content/Loader", */
/* "<TD;>;" */
/* } */
} // .end annotation
} // .end method
