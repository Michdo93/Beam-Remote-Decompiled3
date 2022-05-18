public class android.support.v4.app.NotificationManagerCompat {
	 /* .source "NotificationManagerCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/NotificationManagerCompat$CancelTask;, */
	 /* Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;, */
	 /* Landroid/support/v4/app/NotificationManagerCompat$Task;, */
	 /* Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;, */
	 /* Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;, */
	 /* Landroid/support/v4/app/NotificationManagerCompat$ImplIceCreamSandwich;, */
	 /* Landroid/support/v4/app/NotificationManagerCompat$ImplEclair;, */
	 /* Landroid/support/v4/app/NotificationManagerCompat$ImplBase;, */
	 /* Landroid/support/v4/app/NotificationManagerCompat$Impl; */
	 /* } */
} // .end annotation
/* # static fields */
public static final java.lang.String ACTION_BIND_SIDE_CHANNEL;
public static final java.lang.String EXTRA_USE_SIDE_CHANNEL;
private static final android.support.v4.app.NotificationManagerCompat$Impl IMPL;
static final Integer MAX_SIDE_CHANNEL_SDK_VERSION;
private static final java.lang.String SETTING_ENABLED_NOTIFICATION_LISTENERS;
private static final Integer SIDE_CHANNEL_BIND_FLAGS;
private static final Integer SIDE_CHANNEL_RETRY_BASE_INTERVAL_MS;
private static final Integer SIDE_CHANNEL_RETRY_MAX_COUNT;
private static final java.lang.String TAG;
private static java.util.Set sEnabledNotificationListenerPackages;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/Set", */
/* "<", */
/* "Ljava/lang/String;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private static java.lang.String sEnabledNotificationListeners;
private static final java.lang.Object sEnabledNotificationListenersLock;
private static final java.lang.Object sLock;
private static android.support.v4.app.NotificationManagerCompat$SideChannelManager sSideChannelManager;
/* # instance fields */
private final android.content.Context mContext;
private final android.app.NotificationManager mNotificationManager;
/* # direct methods */
static android.support.v4.app.NotificationManagerCompat ( ) {
/* .locals 2 */
/* .prologue */
/* .line 88 */
/* new-instance v0, Ljava/lang/Object; */
/* invoke-direct {v0}, Ljava/lang/Object;-><init>()V */
/* .line 92 */
/* new-instance v0, Ljava/util/HashSet; */
/* invoke-direct {v0}, Ljava/util/HashSet;-><init>()V */
/* .line 97 */
/* new-instance v0, Ljava/lang/Object; */
/* invoke-direct {v0}, Ljava/lang/Object;-><init>()V */
/* .line 165 */
/* const/16 v1, 0xe */
/* if-lt v0, v1, :cond_0 */
/* .line 166 */
/* new-instance v0, Landroid/support/v4/app/NotificationManagerCompat$ImplIceCreamSandwich; */
/* invoke-direct {v0}, Landroid/support/v4/app/NotificationManagerCompat$ImplIceCreamSandwich;-><init>()V */
/* .line 172 */
} // :goto_0
v0 = v0 = android.support.v4.app.NotificationManagerCompat.IMPL;
/* .line 173 */
return;
/* .line 167 */
} // :cond_0
int v1 = 5; // const/4 v1, 0x5
/* if-lt v0, v1, :cond_1 */
/* .line 168 */
/* new-instance v0, Landroid/support/v4/app/NotificationManagerCompat$ImplEclair; */
/* invoke-direct {v0}, Landroid/support/v4/app/NotificationManagerCompat$ImplEclair;-><init>()V */
/* .line 170 */
} // :cond_1
/* new-instance v0, Landroid/support/v4/app/NotificationManagerCompat$ImplBase; */
/* invoke-direct {v0}, Landroid/support/v4/app/NotificationManagerCompat$ImplBase;-><init>()V */
} // .end method
private android.support.v4.app.NotificationManagerCompat ( ) {
/* .locals 2 */
/* .param p1, "context" # Landroid/content/Context; */
/* .prologue */
/* .line 106 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 107 */
this.mContext = p1;
/* .line 108 */
v0 = this.mContext;
final String v1 = "notification"; // const-string v1, "notification"
(( android.content.Context ) v0 ).getSystemService ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
/* check-cast v0, Landroid/app/NotificationManager; */
this.mNotificationManager = v0;
/* .line 110 */
return;
} // .end method
static Integer access$000 ( ) { //synthethic
/* .locals 1 */
/* .prologue */
/* .line 54 */
} // .end method
public static android.support.v4.app.NotificationManagerCompat from ( android.content.Context p0 ) {
/* .locals 1 */
/* .param p0, "context" # Landroid/content/Context; */
/* .prologue */
/* .line 103 */
/* new-instance v0, Landroid/support/v4/app/NotificationManagerCompat; */
/* invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V */
} // .end method
public static java.util.Set getEnabledListenerPackages ( android.content.Context p0 ) {
/* .locals 10 */
/* .param p0, "context" # Landroid/content/Context; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Landroid/content/Context;", */
/* ")", */
/* "Ljava/util/Set", */
/* "<", */
/* "Ljava/lang/String;", */
/* ">;" */
/* } */
} // .end annotation
/* .prologue */
/* .line 233 */
(( android.content.Context ) p0 ).getContentResolver ( ); // invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
final String v9 = "enabled_notification_listeners"; // const-string v9, "enabled_notification_listeners"
android.provider.Settings$Secure .getString ( v8,v9 );
/* .line 237 */
/* .local v4, "enabledNotificationListeners":Ljava/lang/String; */
if ( v4 != null) { // if-eqz v4, :cond_2
v8 = android.support.v4.app.NotificationManagerCompat.sEnabledNotificationListeners;
v8 = (( java.lang.String ) v4 ).equals ( v8 ); // invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v8, :cond_2 */
/* .line 239 */
final String v8 = ":"; // const-string v8, ":"
(( java.lang.String ) v4 ).split ( v8 ); // invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
/* .line 240 */
/* .local v3, "components":[Ljava/lang/String; */
/* new-instance v7, Ljava/util/HashSet; */
/* array-length v8, v3 */
/* invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(I)V */
/* .line 241 */
/* .local v7, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;" */
/* move-object v0, v3 */
/* .local v0, "arr$":[Ljava/lang/String; */
/* array-length v6, v0 */
/* .local v6, "len$":I */
int v5 = 0; // const/4 v5, 0x0
/* .local v5, "i$":I */
} // :goto_0
/* if-ge v5, v6, :cond_1 */
/* aget-object v1, v0, v5 */
/* .line 242 */
/* .local v1, "component":Ljava/lang/String; */
android.content.ComponentName .unflattenFromString ( v1 );
/* .line 243 */
/* .local v2, "componentName":Landroid/content/ComponentName; */
if ( v2 != null) { // if-eqz v2, :cond_0
/* .line 244 */
(( android.content.ComponentName ) v2 ).getPackageName ( ); // invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
/* .line 241 */
} // :cond_0
/* add-int/lit8 v5, v5, 0x1 */
/* .line 247 */
} // .end local v1 # "component":Ljava/lang/String;
} // .end local v2 # "componentName":Landroid/content/ComponentName;
} // :cond_1
v9 = android.support.v4.app.NotificationManagerCompat.sEnabledNotificationListenersLock;
/* monitor-enter v9 */
/* .line 248 */
try { // :try_start_0
/* .line 249 */
/* .line 250 */
/* monitor-exit v9 */
/* :try_end_0 */
/* .catchall {:try_start_0 ..:try_end_0} :catchall_0 */
/* .line 252 */
} // .end local v0 # "arr$":[Ljava/lang/String;
} // .end local v3 # "components":[Ljava/lang/String;
} // .end local v5 # "i$":I
} // .end local v6 # "len$":I
} // .end local v7 # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
} // :cond_2
v8 = android.support.v4.app.NotificationManagerCompat.sEnabledNotificationListenerPackages;
/* .line 250 */
/* .restart local v0 # "arr$":[Ljava/lang/String; */
/* .restart local v3 # "components":[Ljava/lang/String; */
/* .restart local v5 # "i$":I */
/* .restart local v6 # "len$":I */
/* .restart local v7 # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;" */
/* :catchall_0 */
/* move-exception v8 */
try { // :try_start_1
/* monitor-exit v9 */
/* :try_end_1 */
/* .catchall {:try_start_1 ..:try_end_1} :catchall_0 */
/* throw v8 */
} // .end method
private void pushSideChannelQueue ( android.support.v4.app.NotificationManagerCompat$Task p0 ) {
/* .locals 3 */
/* .param p1, "task" # Landroid/support/v4/app/NotificationManagerCompat$Task; */
/* .prologue */
/* .line 267 */
v1 = android.support.v4.app.NotificationManagerCompat.sLock;
/* monitor-enter v1 */
/* .line 268 */
try { // :try_start_0
v0 = android.support.v4.app.NotificationManagerCompat.sSideChannelManager;
/* if-nez v0, :cond_0 */
/* .line 269 */
/* new-instance v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager; */
v2 = this.mContext;
(( android.content.Context ) v2 ).getApplicationContext ( ); // invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
/* invoke-direct {v0, v2}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;-><init>(Landroid/content/Context;)V */
/* .line 271 */
} // :cond_0
/* monitor-exit v1 */
/* :try_end_0 */
/* .catchall {:try_start_0 ..:try_end_0} :catchall_0 */
/* .line 272 */
v0 = android.support.v4.app.NotificationManagerCompat.sSideChannelManager;
(( android.support.v4.app.NotificationManagerCompat$SideChannelManager ) v0 ).queueTask ( p1 ); // invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->queueTask(Landroid/support/v4/app/NotificationManagerCompat$Task;)V
/* .line 273 */
return;
/* .line 271 */
/* :catchall_0 */
/* move-exception v0 */
try { // :try_start_1
/* monitor-exit v1 */
/* :try_end_1 */
/* .catchall {:try_start_1 ..:try_end_1} :catchall_0 */
/* throw v0 */
} // .end method
private static Boolean useSideChannelForNotification ( android.app.Notification p0 ) {
/* .locals 2 */
/* .param p0, "notification" # Landroid/app/Notification; */
/* .prologue */
/* .line 259 */
android.support.v4.app.NotificationCompat .getExtras ( p0 );
/* .line 260 */
/* .local v0, "extras":Landroid/os/Bundle; */
if ( v0 != null) { // if-eqz v0, :cond_0
final String v1 = "android.support.useSideChannel"; // const-string v1, "android.support.useSideChannel"
v1 = (( android.os.Bundle ) v0 ).getBoolean ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
if ( v1 != null) { // if-eqz v1, :cond_0
int v1 = 1; // const/4 v1, 0x1
} // :goto_0
} // :cond_0
int v1 = 0; // const/4 v1, 0x0
} // .end method
/* # virtual methods */
public void cancel ( Integer p0 ) {
/* .locals 1 */
/* .param p1, "id" # I */
/* .prologue */
/* .line 180 */
int v0 = 0; // const/4 v0, 0x0
(( android.support.v4.app.NotificationManagerCompat ) p0 ).cancel ( v0, p1 ); // invoke-virtual {p0, v0, p1}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V
/* .line 181 */
return;
} // .end method
public void cancel ( java.lang.String p0, Integer p1 ) {
/* .locals 2 */
/* .param p1, "tag" # Ljava/lang/String; */
/* .param p2, "id" # I */
/* .prologue */
/* .line 189 */
v0 = android.support.v4.app.NotificationManagerCompat.IMPL;
v1 = this.mNotificationManager;
/* .line 190 */
/* const/16 v1, 0x13 */
/* if-gt v0, v1, :cond_0 */
/* .line 191 */
/* new-instance v0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask; */
v1 = this.mContext;
(( android.content.Context ) v1 ).getPackageName ( ); // invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
/* invoke-direct {v0, v1, p2, p1}, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;-><init>(Ljava/lang/String;ILjava/lang/String;)V */
/* invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat;->pushSideChannelQueue(Landroid/support/v4/app/NotificationManagerCompat$Task;)V */
/* .line 193 */
} // :cond_0
return;
} // .end method
public void cancelAll ( ) {
/* .locals 2 */
/* .prologue */
/* .line 197 */
v0 = this.mNotificationManager;
(( android.app.NotificationManager ) v0 ).cancelAll ( ); // invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V
/* .line 198 */
/* const/16 v1, 0x13 */
/* if-gt v0, v1, :cond_0 */
/* .line 199 */
/* new-instance v0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask; */
v1 = this.mContext;
(( android.content.Context ) v1 ).getPackageName ( ); // invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
/* invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;-><init>(Ljava/lang/String;)V */
/* invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat;->pushSideChannelQueue(Landroid/support/v4/app/NotificationManagerCompat$Task;)V */
/* .line 201 */
} // :cond_0
return;
} // .end method
public void notify ( Integer p0, android.app.Notification p1 ) {
/* .locals 1 */
/* .param p1, "id" # I */
/* .param p2, "notification" # Landroid/app/Notification; */
/* .prologue */
/* .line 209 */
int v0 = 0; // const/4 v0, 0x0
(( android.support.v4.app.NotificationManagerCompat ) p0 ).notify ( v0, p1, p2 ); // invoke-virtual {p0, v0, p1, p2}, Landroid/support/v4/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
/* .line 210 */
return;
} // .end method
public void notify ( java.lang.String p0, Integer p1, android.app.Notification p2 ) {
/* .locals 2 */
/* .param p1, "tag" # Ljava/lang/String; */
/* .param p2, "id" # I */
/* .param p3, "notification" # Landroid/app/Notification; */
/* .prologue */
/* .line 219 */
v0 = android.support.v4.app.NotificationManagerCompat .useSideChannelForNotification ( p3 );
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 220 */
/* new-instance v0, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask; */
v1 = this.mContext;
(( android.content.Context ) v1 ).getPackageName ( ); // invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
/* invoke-direct {v0, v1, p2, p1, p3}, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V */
/* invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat;->pushSideChannelQueue(Landroid/support/v4/app/NotificationManagerCompat$Task;)V */
/* .line 223 */
v0 = android.support.v4.app.NotificationManagerCompat.IMPL;
v1 = this.mNotificationManager;
/* .line 227 */
} // :goto_0
return;
/* .line 225 */
} // :cond_0
v0 = android.support.v4.app.NotificationManagerCompat.IMPL;
v1 = this.mNotificationManager;
} // .end method
