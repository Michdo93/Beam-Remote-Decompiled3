public class android.support.v4.app.Fragment$SavedState implements android.os.Parcelable {
	 /* .source "Fragment.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/Fragment; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x9 */
/* name = "SavedState" */
} // .end annotation
/* # static fields */
public static final android.os.Parcelable$Creator CREATOR;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Landroid/os/Parcelable$Creator", */
/* "<", */
/* "Landroid/support/v4/app/Fragment$SavedState;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
/* # instance fields */
final android.os.Bundle mState;
/* # direct methods */
static android.support.v4.app.Fragment$SavedState ( ) {
/* .locals 1 */
/* .prologue */
/* .line 348 */
/* new-instance v0, Landroid/support/v4/app/Fragment$SavedState$1; */
/* invoke-direct {v0}, Landroid/support/v4/app/Fragment$SavedState$1;-><init>()V */
return;
} // .end method
 android.support.v4.app.Fragment$SavedState ( ) {
/* .locals 0 */
/* .param p1, "state" # Landroid/os/Bundle; */
/* .prologue */
/* .line 327 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 328 */
this.mState = p1;
/* .line 329 */
return;
} // .end method
 android.support.v4.app.Fragment$SavedState ( ) {
/* .locals 1 */
/* .param p1, "in" # Landroid/os/Parcel; */
/* .param p2, "loader" # Ljava/lang/ClassLoader; */
/* .prologue */
/* .line 331 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 332 */
(( android.os.Parcel ) p1 ).readBundle ( ); // invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
this.mState = v0;
/* .line 333 */
if ( p2 != null) { // if-eqz p2, :cond_0
v0 = this.mState;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 334 */
v0 = this.mState;
(( android.os.Bundle ) v0 ).setClassLoader ( p2 ); // invoke-virtual {v0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
/* .line 336 */
} // :cond_0
return;
} // .end method
/* # virtual methods */
public Integer describeContents ( ) {
/* .locals 1 */
/* .prologue */
/* .line 340 */
int v0 = 0; // const/4 v0, 0x0
} // .end method
public void writeToParcel ( android.os.Parcel p0, Integer p1 ) {
/* .locals 1 */
/* .param p1, "dest" # Landroid/os/Parcel; */
/* .param p2, "flags" # I */
/* .prologue */
/* .line 345 */
v0 = this.mState;
(( android.os.Parcel ) p1 ).writeBundle ( v0 ); // invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
/* .line 346 */
return;
} // .end method
