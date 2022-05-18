class android.support.v4.app.NotificationCompatSideChannelService$NotificationSideChannelStub extends android.support.v4.app.INotificationSideChannel$Stub {
	 /* .source "NotificationCompatSideChannelService.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationCompatSideChannelService; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x2 */
/* name = "NotificationSideChannelStub" */
} // .end annotation
/* # instance fields */
final android.support.v4.app.NotificationCompatSideChannelService this$0; //synthetic
/* # direct methods */
private android.support.v4.app.NotificationCompatSideChannelService$NotificationSideChannelStub ( ) {
/* .locals 0 */
/* .prologue */
/* .line 73 */
this.this$0 = p1;
/* invoke-direct {p0}, Landroid/support/v4/app/INotificationSideChannel$Stub;-><init>()V */
return;
} // .end method
 android.support.v4.app.NotificationCompatSideChannelService$NotificationSideChannelStub ( ) { //synthethic
/* .locals 0 */
/* .param p1, "x0" # Landroid/support/v4/app/NotificationCompatSideChannelService; */
/* .param p2, "x1" # Landroid/support/v4/app/NotificationCompatSideChannelService$1; */
/* .prologue */
/* .line 73 */
/* invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;-><init>(Landroid/support/v4/app/NotificationCompatSideChannelService;)V */
return;
} // .end method
/* # virtual methods */
public void cancel ( java.lang.String p0, Integer p1, java.lang.String p2 ) {
/* .locals 4 */
/* .param p1, "packageName" # Ljava/lang/String; */
/* .param p2, "id" # I */
/* .param p3, "tag" # Ljava/lang/String; */
/* .annotation system Ldalvik/annotation/Throws; */
/* value = { */
/* Landroid/os/RemoteException; */
/* } */
} // .end annotation
/* .prologue */
/* .line 88 */
v2 = this.this$0;
v3 = android.support.v4.app.NotificationCompatSideChannelService$NotificationSideChannelStub .getCallingUid ( );
android.support.v4.app.NotificationCompatSideChannelService .access$100 ( v2,v3,p1 );
/* .line 89 */
android.support.v4.app.NotificationCompatSideChannelService$NotificationSideChannelStub .clearCallingIdentity ( );
/* move-result-wide v0 */
/* .line 91 */
/* .local v0, "idToken":J */
try { // :try_start_0
v2 = this.this$0;
(( android.support.v4.app.NotificationCompatSideChannelService ) v2 ).cancel ( p1, p2, p3 ); // invoke-virtual {v2, p1, p2, p3}, Landroid/support/v4/app/NotificationCompatSideChannelService;->cancel(Ljava/lang/String;ILjava/lang/String;)V
/* :try_end_0 */
/* .catchall {:try_start_0 ..:try_end_0} :catchall_0 */
/* .line 93 */
android.support.v4.app.NotificationCompatSideChannelService$NotificationSideChannelStub .restoreCallingIdentity ( v0,v1 );
/* .line 95 */
return;
/* .line 93 */
/* :catchall_0 */
/* move-exception v2 */
android.support.v4.app.NotificationCompatSideChannelService$NotificationSideChannelStub .restoreCallingIdentity ( v0,v1 );
/* throw v2 */
} // .end method
public void cancelAll ( java.lang.String p0 ) {
/* .locals 4 */
/* .param p1, "packageName" # Ljava/lang/String; */
/* .prologue */
/* .line 99 */
v2 = this.this$0;
v3 = android.support.v4.app.NotificationCompatSideChannelService$NotificationSideChannelStub .getCallingUid ( );
android.support.v4.app.NotificationCompatSideChannelService .access$100 ( v2,v3,p1 );
/* .line 100 */
android.support.v4.app.NotificationCompatSideChannelService$NotificationSideChannelStub .clearCallingIdentity ( );
/* move-result-wide v0 */
/* .line 102 */
/* .local v0, "idToken":J */
try { // :try_start_0
	 v2 = this.this$0;
	 (( android.support.v4.app.NotificationCompatSideChannelService ) v2 ).cancelAll ( p1 ); // invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompatSideChannelService;->cancelAll(Ljava/lang/String;)V
	 /* :try_end_0 */
	 /* .catchall {:try_start_0 ..:try_end_0} :catchall_0 */
	 /* .line 104 */
	 android.support.v4.app.NotificationCompatSideChannelService$NotificationSideChannelStub .restoreCallingIdentity ( v0,v1 );
	 /* .line 106 */
	 return;
	 /* .line 104 */
	 /* :catchall_0 */
	 /* move-exception v2 */
	 android.support.v4.app.NotificationCompatSideChannelService$NotificationSideChannelStub .restoreCallingIdentity ( v0,v1 );
	 /* throw v2 */
} // .end method
public void notify ( java.lang.String p0, Integer p1, java.lang.String p2, android.app.Notification p3 ) {
	 /* .locals 4 */
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
/* .line 77 */
v2 = this.this$0;
v3 = android.support.v4.app.NotificationCompatSideChannelService$NotificationSideChannelStub .getCallingUid ( );
android.support.v4.app.NotificationCompatSideChannelService .access$100 ( v2,v3,p1 );
/* .line 78 */
android.support.v4.app.NotificationCompatSideChannelService$NotificationSideChannelStub .clearCallingIdentity ( );
/* move-result-wide v0 */
/* .line 80 */
/* .local v0, "idToken":J */
try { // :try_start_0
	 v2 = this.this$0;
	 (( android.support.v4.app.NotificationCompatSideChannelService ) v2 ).notify ( p1, p2, p3, p4 ); // invoke-virtual {v2, p1, p2, p3, p4}, Landroid/support/v4/app/NotificationCompatSideChannelService;->notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
	 /* :try_end_0 */
	 /* .catchall {:try_start_0 ..:try_end_0} :catchall_0 */
	 /* .line 82 */
	 android.support.v4.app.NotificationCompatSideChannelService$NotificationSideChannelStub .restoreCallingIdentity ( v0,v1 );
	 /* .line 84 */
	 return;
	 /* .line 82 */
	 /* :catchall_0 */
	 /* move-exception v2 */
	 android.support.v4.app.NotificationCompatSideChannelService$NotificationSideChannelStub .restoreCallingIdentity ( v0,v1 );
	 /* throw v2 */
} // .end method
