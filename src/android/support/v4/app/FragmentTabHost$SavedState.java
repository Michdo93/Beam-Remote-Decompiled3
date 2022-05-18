class android.support.v4.app.FragmentTabHost$SavedState extends android.view.View$BaseSavedState {
	 /* .source "FragmentTabHost.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/FragmentTabHost; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x8 */
/* name = "SavedState" */
} // .end annotation
/* # static fields */
public static final android.os.Parcelable$Creator CREATOR;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Landroid/os/Parcelable$Creator", */
/* "<", */
/* "Landroid/support/v4/app/FragmentTabHost$SavedState;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
/* # instance fields */
java.lang.String curTab;
/* # direct methods */
static android.support.v4.app.FragmentTabHost$SavedState ( ) {
/* .locals 1 */
/* .prologue */
/* .line 115 */
/* new-instance v0, Landroid/support/v4/app/FragmentTabHost$SavedState$1; */
/* invoke-direct {v0}, Landroid/support/v4/app/FragmentTabHost$SavedState$1;-><init>()V */
return;
} // .end method
private android.support.v4.app.FragmentTabHost$SavedState ( ) {
/* .locals 1 */
/* .param p1, "in" # Landroid/os/Parcel; */
/* .prologue */
/* .line 98 */
/* invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V */
/* .line 99 */
(( android.os.Parcel ) p1 ).readString ( ); // invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
this.curTab = v0;
/* .line 100 */
return;
} // .end method
 android.support.v4.app.FragmentTabHost$SavedState ( ) { //synthethic
/* .locals 0 */
/* .param p1, "x0" # Landroid/os/Parcel; */
/* .param p2, "x1" # Landroid/support/v4/app/FragmentTabHost$1; */
/* .prologue */
/* .line 90 */
/* invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentTabHost$SavedState;-><init>(Landroid/os/Parcel;)V */
return;
} // .end method
 android.support.v4.app.FragmentTabHost$SavedState ( ) {
/* .locals 0 */
/* .param p1, "superState" # Landroid/os/Parcelable; */
/* .prologue */
/* .line 94 */
/* invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V */
/* .line 95 */
return;
} // .end method
/* # virtual methods */
public java.lang.String toString ( ) {
/* .locals 2 */
/* .prologue */
/* .line 110 */
/* new-instance v0, Ljava/lang/StringBuilder; */
/* invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V */
final String v1 = "FragmentTabHost.SavedState{"; // const-string v1, "FragmentTabHost.SavedState{"
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
v1 = java.lang.System .identityHashCode ( p0 );
java.lang.Integer .toHexString ( v1 );
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v1 = " curTab="; // const-string v1, " curTab="
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
v1 = this.curTab;
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v1 = "}"; // const-string v1, "}"
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v0 ).toString ( ); // invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
} // .end method
public void writeToParcel ( android.os.Parcel p0, Integer p1 ) {
/* .locals 1 */
/* .param p1, "out" # Landroid/os/Parcel; */
/* .param p2, "flags" # I */
/* .prologue */
/* .line 104 */
/* invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V */
/* .line 105 */
v0 = this.curTab;
(( android.os.Parcel ) p1 ).writeString ( v0 ); // invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
/* .line 106 */
return;
} // .end method
