class android.support.v4.app.INotificationSideChannel$Stub$Proxy implements android.support.v4.app.INotificationSideChannel {
	 /* .source "INotificationSideChannel.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/INotificationSideChannel$Stub; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0xa */
/* name = "Proxy" */
} // .end annotation
/* # instance fields */
private android.os.IBinder mRemote;
/* # direct methods */
 android.support.v4.app.INotificationSideChannel$Stub$Proxy ( ) {
/* .locals 0 */
/* .param p1, "remote" # Landroid/os/IBinder; */
/* .prologue */
/* .line 97 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 98 */
this.mRemote = p1;
/* .line 99 */
return;
} // .end method
/* # virtual methods */
public android.os.IBinder asBinder ( ) {
/* .locals 1 */
/* .prologue */
/* .line 102 */
v0 = this.mRemote;
} // .end method
public void cancel ( java.lang.String p0, Integer p1, java.lang.String p2 ) {
/* .locals 5 */
/* .param p1, "packageName" # Ljava/lang/String; */
/* .param p2, "id" # I */
/* .param p3, "tag" # Ljava/lang/String; */
/* .annotation system Ldalvik/annotation/Throws; */
/* value = { */
/* Landroid/os/RemoteException; */
/* } */
} // .end annotation
/* .prologue */
/* .line 137 */
android.os.Parcel .obtain ( );
/* .line 139 */
/* .local v0, "_data":Landroid/os/Parcel; */
try { // :try_start_0
final String v1 = "android.support.v4.app.INotificationSideChannel"; // const-string v1, "android.support.v4.app.INotificationSideChannel"
(( android.os.Parcel ) v0 ).writeInterfaceToken ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
/* .line 140 */
(( android.os.Parcel ) v0 ).writeString ( p1 ); // invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
/* .line 141 */
(( android.os.Parcel ) v0 ).writeInt ( p2 ); // invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V
/* .line 142 */
(( android.os.Parcel ) v0 ).writeString ( p3 ); // invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
/* .line 143 */
v1 = this.mRemote;
int v2 = 2; // const/4 v2, 0x2
int v3 = 0; // const/4 v3, 0x0
int v4 = 1; // const/4 v4, 0x1
/* :try_end_0 */
/* .catchall {:try_start_0 ..:try_end_0} :catchall_0 */
/* .line 146 */
(( android.os.Parcel ) v0 ).recycle ( ); // invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
/* .line 148 */
return;
/* .line 146 */
/* :catchall_0 */
/* move-exception v1 */
(( android.os.Parcel ) v0 ).recycle ( ); // invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
/* throw v1 */
} // .end method
public void cancelAll ( java.lang.String p0 ) {
/* .locals 5 */
/* .param p1, "packageName" # Ljava/lang/String; */
/* .annotation system Ldalvik/annotation/Throws; */
/* value = { */
/* Landroid/os/RemoteException; */
/* } */
} // .end annotation
/* .prologue */
/* .line 154 */
android.os.Parcel .obtain ( );
/* .line 156 */
/* .local v0, "_data":Landroid/os/Parcel; */
try { // :try_start_0
final String v1 = "android.support.v4.app.INotificationSideChannel"; // const-string v1, "android.support.v4.app.INotificationSideChannel"
(( android.os.Parcel ) v0 ).writeInterfaceToken ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
/* .line 157 */
(( android.os.Parcel ) v0 ).writeString ( p1 ); // invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
/* .line 158 */
v1 = this.mRemote;
int v2 = 3; // const/4 v2, 0x3
int v3 = 0; // const/4 v3, 0x0
int v4 = 1; // const/4 v4, 0x1
/* :try_end_0 */
/* .catchall {:try_start_0 ..:try_end_0} :catchall_0 */
/* .line 161 */
(( android.os.Parcel ) v0 ).recycle ( ); // invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
/* .line 163 */
return;
/* .line 161 */
/* :catchall_0 */
/* move-exception v1 */
(( android.os.Parcel ) v0 ).recycle ( ); // invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
/* throw v1 */
} // .end method
public java.lang.String getInterfaceDescriptor ( ) {
/* .locals 1 */
/* .prologue */
/* .line 106 */
final String v0 = "android.support.v4.app.INotificationSideChannel"; // const-string v0, "android.support.v4.app.INotificationSideChannel"
} // .end method
public void notify ( java.lang.String p0, Integer p1, java.lang.String p2, android.app.Notification p3 ) {
/* .locals 5 */
/* .param p1, "packageName" # Ljava/lang/String; */
/* .param p2, "id" # I */
/* .param p3, "tag" # Ljava/lang/String; */
/* .param p4, "notification" # Landroid/app/Notification; */
/* .annotation system Ldalvik/annotation/Throws; */
/* value = { */
/* Landroid/os/RemoteException; */
/* } */
} // .end annotation
/* .prologue */
/* .line 113 */
android.os.Parcel .obtain ( );
/* .line 115 */
/* .local v0, "_data":Landroid/os/Parcel; */
try { // :try_start_0
final String v1 = "android.support.v4.app.INotificationSideChannel"; // const-string v1, "android.support.v4.app.INotificationSideChannel"
(( android.os.Parcel ) v0 ).writeInterfaceToken ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
/* .line 116 */
(( android.os.Parcel ) v0 ).writeString ( p1 ); // invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
/* .line 117 */
(( android.os.Parcel ) v0 ).writeInt ( p2 ); // invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V
/* .line 118 */
(( android.os.Parcel ) v0 ).writeString ( p3 ); // invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
/* .line 119 */
if ( p4 != null) { // if-eqz p4, :cond_0
	 /* .line 120 */
	 int v1 = 1; // const/4 v1, 0x1
	 (( android.os.Parcel ) v0 ).writeInt ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
	 /* .line 121 */
	 int v1 = 0; // const/4 v1, 0x0
	 (( android.app.Notification ) p4 ).writeToParcel ( v0, v1 ); // invoke-virtual {p4, v0, v1}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V
	 /* .line 126 */
} // :goto_0
v1 = this.mRemote;
int v2 = 1; // const/4 v2, 0x1
int v3 = 0; // const/4 v3, 0x0
int v4 = 1; // const/4 v4, 0x1
/* :try_end_0 */
/* .catchall {:try_start_0 ..:try_end_0} :catchall_0 */
/* .line 129 */
(( android.os.Parcel ) v0 ).recycle ( ); // invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
/* .line 131 */
return;
/* .line 124 */
} // :cond_0
int v1 = 0; // const/4 v1, 0x0
try { // :try_start_1
(( android.os.Parcel ) v0 ).writeInt ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
/* :try_end_1 */
/* .catchall {:try_start_1 ..:try_end_1} :catchall_0 */
/* .line 129 */
/* :catchall_0 */
/* move-exception v1 */
(( android.os.Parcel ) v0 ).recycle ( ); // invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
/* throw v1 */
} // .end method
