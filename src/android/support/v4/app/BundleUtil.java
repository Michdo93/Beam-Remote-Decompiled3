class android.support.v4.app.BundleUtil {
	 /* .source "BundleUtil.java" */
	 /* # direct methods */
	 android.support.v4.app.BundleUtil ( ) {
		 /* .locals 0 */
		 /* .prologue */
		 /* .line 11 */
		 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
		 return;
	 } // .end method
	 public static android.os.Bundle getBundleArrayFromBundle ( android.os.Bundle p0, java.lang.String p1 ) {
		 /* .locals 4 */
		 /* .param p0, "bundle" # Landroid/os/Bundle; */
		 /* .param p1, "key" # Ljava/lang/String; */
		 /* .prologue */
		 /* .line 18 */
		 (( android.os.Bundle ) p0 ).getParcelableArray ( p1 ); // invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
		 /* .line 19 */
		 /* .local v0, "array":[Landroid/os/Parcelable; */
		 /* instance-of v2, v0, [Landroid/os/Bundle; */
		 /* if-nez v2, :cond_0 */
		 /* if-nez v0, :cond_1 */
		 /* .line 20 */
	 } // :cond_0
	 /* check-cast v0, [Landroid/os/Bundle; */
} // .end local v0 # "array":[Landroid/os/Parcelable;
/* check-cast v0, [Landroid/os/Bundle; */
/* move-object v1, v0 */
/* .line 25 */
} // :goto_0
/* .line 22 */
/* .restart local v0 # "array":[Landroid/os/Parcelable; */
} // :cond_1
/* array-length v2, v0 */
/* const-class v3, [Landroid/os/Bundle; */
java.util.Arrays .copyOf ( v0,v2,v3 );
/* check-cast v1, [Landroid/os/Bundle; */
/* .line 24 */
/* .local v1, "typedArray":[Landroid/os/Bundle; */
(( android.os.Bundle ) p0 ).putParcelableArray ( p1, v1 ); // invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
} // .end method
