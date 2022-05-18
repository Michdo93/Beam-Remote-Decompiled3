public abstract class android.support.v4.app.INotificationSideChannel$Stub extends android.os.Binder implements android.support.v4.app.INotificationSideChannel {
	 /* .source "INotificationSideChannel.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/INotificationSideChannel; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x409 */
/* name = "Stub" */
} // .end annotation
/* .annotation system Ldalvik/annotation/MemberClasses; */
/* value = { */
/* Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy; */
/* } */
} // .end annotation
/* # static fields */
private static final java.lang.String DESCRIPTOR;
static final Integer TRANSACTION_cancel;
static final Integer TRANSACTION_cancelAll;
static final Integer TRANSACTION_notify;
/* # direct methods */
public android.support.v4.app.INotificationSideChannel$Stub ( ) {
/* .locals 1 */
/* .prologue */
/* .line 20 */
/* invoke-direct {p0}, Landroid/os/Binder;-><init>()V */
/* .line 21 */
final String v0 = "android.support.v4.app.INotificationSideChannel"; // const-string v0, "android.support.v4.app.INotificationSideChannel"
(( android.support.v4.app.INotificationSideChannel$Stub ) p0 ).attachInterface ( p0, v0 ); // invoke-virtual {p0, p0, v0}, Landroid/support/v4/app/INotificationSideChannel$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
/* .line 22 */
return;
} // .end method
public static android.support.v4.app.INotificationSideChannel asInterface ( android.os.IBinder p0 ) {
/* .locals 2 */
/* .param p0, "obj" # Landroid/os/IBinder; */
/* .prologue */
/* .line 29 */
/* if-nez p0, :cond_0 */
/* .line 30 */
int v0 = 0; // const/4 v0, 0x0
/* .line 36 */
} // :goto_0
/* .line 32 */
} // :cond_0
final String v1 = "android.support.v4.app.INotificationSideChannel"; // const-string v1, "android.support.v4.app.INotificationSideChannel"
/* .line 33 */
/* .local v0, "iin":Landroid/os/IInterface; */
if ( v0 != null) { // if-eqz v0, :cond_1
/* instance-of v1, v0, Landroid/support/v4/app/INotificationSideChannel; */
if ( v1 != null) { // if-eqz v1, :cond_1
/* .line 34 */
/* check-cast v0, Landroid/support/v4/app/INotificationSideChannel; */
/* .line 36 */
} // :cond_1
/* new-instance v0, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy; */
} // .end local v0 # "iin":Landroid/os/IInterface;
/* invoke-direct {v0, p0}, Landroid/support/v4/app/INotificationSideChannel$Stub$Proxy;-><init>(Landroid/os/IBinder;)V */
} // .end method
/* # virtual methods */
public android.os.IBinder asBinder ( ) {
/* .locals 0 */
/* .prologue */
/* .line 40 */
} // .end method
public Boolean onTransact ( Integer p0, android.os.Parcel p1, android.os.Parcel p2, Integer p3 ) {
/* .locals 6 */
/* .param p1, "code" # I */
/* .param p2, "data" # Landroid/os/Parcel; */
/* .param p3, "reply" # Landroid/os/Parcel; */
/* .param p4, "flags" # I */
/* .annotation system Ldalvik/annotation/Throws; */
/* value = { */
/* Landroid/os/RemoteException; */
/* } */
} // .end annotation
/* .prologue */
int v4 = 1; // const/4 v4, 0x1
/* .line 44 */
/* sparse-switch p1, :sswitch_data_0 */
/* .line 91 */
v4 = /* invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z */
} // :goto_0
/* .line 48 */
/* :sswitch_0 */
final String v5 = "android.support.v4.app.INotificationSideChannel"; // const-string v5, "android.support.v4.app.INotificationSideChannel"
(( android.os.Parcel ) p3 ).writeString ( v5 ); // invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
/* .line 53 */
/* :sswitch_1 */
final String v5 = "android.support.v4.app.INotificationSideChannel"; // const-string v5, "android.support.v4.app.INotificationSideChannel"
(( android.os.Parcel ) p2 ).enforceInterface ( v5 ); // invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
/* .line 55 */
(( android.os.Parcel ) p2 ).readString ( ); // invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
/* .line 57 */
/* .local v0, "_arg0":Ljava/lang/String; */
v1 = (( android.os.Parcel ) p2 ).readInt ( ); // invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
/* .line 59 */
/* .local v1, "_arg1":I */
(( android.os.Parcel ) p2 ).readString ( ); // invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
/* .line 61 */
/* .local v2, "_arg2":Ljava/lang/String; */
v5 = (( android.os.Parcel ) p2 ).readInt ( ); // invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
if ( v5 != null) { // if-eqz v5, :cond_0
/* .line 62 */
v5 = android.app.Notification.CREATOR;
/* check-cast v3, Landroid/app/Notification; */
/* .line 67 */
/* .local v3, "_arg3":Landroid/app/Notification; */
} // :goto_1
(( android.support.v4.app.INotificationSideChannel$Stub ) p0 ).notify ( v0, v1, v2, v3 ); // invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/v4/app/INotificationSideChannel$Stub;->notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
/* .line 65 */
} // .end local v3 # "_arg3":Landroid/app/Notification;
} // :cond_0
int v3 = 0; // const/4 v3, 0x0
/* .restart local v3 # "_arg3":Landroid/app/Notification; */
/* .line 72 */
} // .end local v0 # "_arg0":Ljava/lang/String;
} // .end local v1 # "_arg1":I
} // .end local v2 # "_arg2":Ljava/lang/String;
} // .end local v3 # "_arg3":Landroid/app/Notification;
/* :sswitch_2 */
final String v5 = "android.support.v4.app.INotificationSideChannel"; // const-string v5, "android.support.v4.app.INotificationSideChannel"
(( android.os.Parcel ) p2 ).enforceInterface ( v5 ); // invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
/* .line 74 */
(( android.os.Parcel ) p2 ).readString ( ); // invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
/* .line 76 */
/* .restart local v0 # "_arg0":Ljava/lang/String; */
v1 = (( android.os.Parcel ) p2 ).readInt ( ); // invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
/* .line 78 */
/* .restart local v1 # "_arg1":I */
(( android.os.Parcel ) p2 ).readString ( ); // invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
/* .line 79 */
/* .restart local v2 # "_arg2":Ljava/lang/String; */
(( android.support.v4.app.INotificationSideChannel$Stub ) p0 ).cancel ( v0, v1, v2 ); // invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/INotificationSideChannel$Stub;->cancel(Ljava/lang/String;ILjava/lang/String;)V
/* .line 84 */
} // .end local v0 # "_arg0":Ljava/lang/String;
} // .end local v1 # "_arg1":I
} // .end local v2 # "_arg2":Ljava/lang/String;
/* :sswitch_3 */
final String v5 = "android.support.v4.app.INotificationSideChannel"; // const-string v5, "android.support.v4.app.INotificationSideChannel"
(( android.os.Parcel ) p2 ).enforceInterface ( v5 ); // invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
/* .line 86 */
(( android.os.Parcel ) p2 ).readString ( ); // invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
/* .line 87 */
/* .restart local v0 # "_arg0":Ljava/lang/String; */
(( android.support.v4.app.INotificationSideChannel$Stub ) p0 ).cancelAll ( v0 ); // invoke-virtual {p0, v0}, Landroid/support/v4/app/INotificationSideChannel$Stub;->cancelAll(Ljava/lang/String;)V
/* .line 44 */
/* :sswitch_data_0 */
/* .sparse-switch */
/* 0x1 -> :sswitch_1 */
/* 0x2 -> :sswitch_2 */
/* 0x3 -> :sswitch_3 */
/* 0x5f4e5446 -> :sswitch_0 */
} // .end sparse-switch
} // .end method
