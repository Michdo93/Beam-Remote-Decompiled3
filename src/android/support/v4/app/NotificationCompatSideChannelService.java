public abstract class android.support.v4.app.NotificationCompatSideChannelService extends android.app.Service {
	 /* .source "NotificationCompatSideChannelService.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/NotificationCompatSideChannelService$1;, */
	 /* Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub; */
	 /* } */
} // .end annotation
/* # direct methods */
public android.support.v4.app.NotificationCompatSideChannelService ( ) {
	 /* .locals 0 */
	 /* .prologue */
	 /* .line 44 */
	 /* invoke-direct {p0}, Landroid/app/Service;-><init>()V */
	 /* .line 73 */
	 return;
} // .end method
static void access$100 ( android.support.v4.app.NotificationCompatSideChannelService p0, Integer p1, java.lang.String p2 ) { //synthethic
	 /* .locals 0 */
	 /* .param p0, "x0" # Landroid/support/v4/app/NotificationCompatSideChannelService; */
	 /* .param p1, "x1" # I */
	 /* .param p2, "x2" # Ljava/lang/String; */
	 /* .prologue */
	 /* .line 44 */
	 /* invoke-direct {p0, p1, p2}, Landroid/support/v4/app/NotificationCompatSideChannelService;->checkPermission(ILjava/lang/String;)V */
	 return;
} // .end method
private void checkPermission ( Integer p0, java.lang.String p1 ) {
	 /* .locals 7 */
	 /* .param p1, "callingUid" # I */
	 /* .param p2, "packageName" # Ljava/lang/String; */
	 /* .prologue */
	 /* .line 110 */
	 (( android.support.v4.app.NotificationCompatSideChannelService ) p0 ).getPackageManager ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatSideChannelService;->getPackageManager()Landroid/content/pm/PackageManager;
	 (( android.content.pm.PackageManager ) v4 ).getPackagesForUid ( p1 ); // invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;
	 /* .local v0, "arr$":[Ljava/lang/String; */
	 /* array-length v2, v0 */
	 /* .local v2, "len$":I */
	 int v1 = 0; // const/4 v1, 0x0
	 /* .local v1, "i$":I */
} // :goto_0
/* if-ge v1, v2, :cond_1 */
/* aget-object v3, v0, v1 */
/* .line 111 */
/* .local v3, "validPackage":Ljava/lang/String; */
v4 = (( java.lang.String ) v3 ).equals ( p2 ); // invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
if ( v4 != null) { // if-eqz v4, :cond_0
	 /* .line 112 */
	 return;
	 /* .line 110 */
} // :cond_0
/* add-int/lit8 v1, v1, 0x1 */
/* .line 115 */
} // .end local v3 # "validPackage":Ljava/lang/String;
} // :cond_1
/* new-instance v4, Ljava/lang/SecurityException; */
/* new-instance v5, Ljava/lang/StringBuilder; */
/* invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V */
final String v6 = "NotificationSideChannelService: Uid "; // const-string v6, "NotificationSideChannelService: Uid "
(( java.lang.StringBuilder ) v5 ).append ( v6 ); // invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v5 ).append ( p1 ); // invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
final String v6 = " is not authorized for package "; // const-string v6, " is not authorized for package "
(( java.lang.StringBuilder ) v5 ).append ( v6 ); // invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v5 ).append ( p2 ); // invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v5 ).toString ( ); // invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V */
/* throw v4 */
} // .end method
/* # virtual methods */
public abstract void cancel ( java.lang.String p0, Integer p1, java.lang.String p2 ) {
} // .end method
public abstract void cancelAll ( java.lang.String p0 ) {
} // .end method
public abstract void notify ( java.lang.String p0, Integer p1, java.lang.String p2, android.app.Notification p3 ) {
} // .end method
public android.os.IBinder onBind ( android.content.Intent p0 ) {
/* .locals 3 */
/* .param p1, "intent" # Landroid/content/Intent; */
/* .prologue */
int v0 = 0; // const/4 v0, 0x0
/* .line 47 */
(( android.content.Intent ) p1 ).getAction ( ); // invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
final String v2 = "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"; // const-string v2, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"
v1 = (( java.lang.String ) v1 ).equals ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
if ( v1 != null) { // if-eqz v1, :cond_0
/* .line 50 */
/* const/16 v2, 0x13 */
/* if-le v1, v2, :cond_1 */
/* .line 55 */
} // :cond_0
} // :goto_0
/* .line 53 */
} // :cond_1
/* new-instance v1, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub; */
/* invoke-direct {v1, p0, v0}, Landroid/support/v4/app/NotificationCompatSideChannelService$NotificationSideChannelStub;-><init>(Landroid/support/v4/app/NotificationCompatSideChannelService;Landroid/support/v4/app/NotificationCompatSideChannelService$1;)V */
/* move-object v0, v1 */
} // .end method
