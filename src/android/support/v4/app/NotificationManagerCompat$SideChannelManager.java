class android.support.v4.app.NotificationManagerCompat$SideChannelManager implements android.os.Handler$Callback implements android.content.ServiceConnection {
	 /* .source "NotificationManagerCompat.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationManagerCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0xa */
/* name = "SideChannelManager" */
} // .end annotation
/* .annotation system Ldalvik/annotation/MemberClasses; */
/* value = { */
/* Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord; */
/* } */
} // .end annotation
/* # static fields */
private static final java.lang.String KEY_BINDER;
private static final Integer MSG_QUEUE_TASK;
private static final Integer MSG_RETRY_LISTENER_QUEUE;
private static final Integer MSG_SERVICE_CONNECTED;
private static final Integer MSG_SERVICE_DISCONNECTED;
/* # instance fields */
private java.util.Set mCachedEnabledPackages;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/Set", */
/* "<", */
/* "Ljava/lang/String;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final android.content.Context mContext;
private final android.os.Handler mHandler;
private final android.os.HandlerThread mHandlerThread;
private final java.util.Map mRecordMap;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/Map", */
/* "<", */
/* "Landroid/content/ComponentName;", */
/* "Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
/* # direct methods */
public android.support.v4.app.NotificationManagerCompat$SideChannelManager ( ) {
/* .locals 2 */
/* .param p1, "context" # Landroid/content/Context; */
/* .prologue */
/* .line 294 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 290 */
/* new-instance v0, Ljava/util/HashMap; */
/* invoke-direct {v0}, Ljava/util/HashMap;-><init>()V */
this.mRecordMap = v0;
/* .line 292 */
/* new-instance v0, Ljava/util/HashSet; */
/* invoke-direct {v0}, Ljava/util/HashSet;-><init>()V */
this.mCachedEnabledPackages = v0;
/* .line 295 */
this.mContext = p1;
/* .line 296 */
/* new-instance v0, Landroid/os/HandlerThread; */
final String v1 = "NotificationManagerCompat"; // const-string v1, "NotificationManagerCompat"
/* invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V */
this.mHandlerThread = v0;
/* .line 297 */
v0 = this.mHandlerThread;
(( android.os.HandlerThread ) v0 ).start ( ); // invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
/* .line 298 */
/* new-instance v0, Landroid/os/Handler; */
v1 = this.mHandlerThread;
(( android.os.HandlerThread ) v1 ).getLooper ( ); // invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
/* invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V */
this.mHandler = v0;
/* .line 299 */
return;
} // .end method
private Boolean ensureServiceBound ( android.support.v4.app.NotificationManagerCompat$SideChannelManager$ListenerRecord p0 ) {
/* .locals 4 */
/* .param p1, "record" # Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord; */
/* .prologue */
/* .line 434 */
/* iget-boolean v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z */
if ( v1 != null) { // if-eqz v1, :cond_0
/* .line 435 */
int v1 = 1; // const/4 v1, 0x1
/* .line 445 */
} // :goto_0
/* .line 437 */
} // :cond_0
/* new-instance v1, Landroid/content/Intent; */
final String v2 = "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"; // const-string v2, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"
/* invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V */
v2 = this.componentName;
(( android.content.Intent ) v1 ).setComponent ( v2 ); // invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
/* .line 438 */
/* .local v0, "intent":Landroid/content/Intent; */
v1 = this.mContext;
v2 = android.support.v4.app.NotificationManagerCompat .access$000 ( );
v1 = (( android.content.Context ) v1 ).bindService ( v0, p0, v2 ); // invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
/* iput-boolean v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z */
/* .line 439 */
/* iget-boolean v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z */
if ( v1 != null) { // if-eqz v1, :cond_1
/* .line 440 */
int v1 = 0; // const/4 v1, 0x0
/* iput v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I */
/* .line 445 */
} // :goto_1
/* iget-boolean v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z */
/* .line 442 */
} // :cond_1
final String v1 = "NotifManCompat"; // const-string v1, "NotifManCompat"
/* new-instance v2, Ljava/lang/StringBuilder; */
/* invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V */
final String v3 = "Unable to bind to listener "; // const-string v3, "Unable to bind to listener "
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
v3 = this.componentName;
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).toString ( ); // invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .w ( v1,v2 );
/* .line 443 */
v1 = this.mContext;
(( android.content.Context ) v1 ).unbindService ( p0 ); // invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
} // .end method
private void ensureServiceUnbound ( android.support.v4.app.NotificationManagerCompat$SideChannelManager$ListenerRecord p0 ) {
/* .locals 1 */
/* .param p1, "record" # Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord; */
/* .prologue */
/* .line 452 */
/* iget-boolean v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 453 */
v0 = this.mContext;
(( android.content.Context ) v0 ).unbindService ( p0 ); // invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
/* .line 454 */
int v0 = 0; // const/4 v0, 0x0
/* iput-boolean v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z */
/* .line 456 */
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
this.service = v0;
/* .line 457 */
return;
} // .end method
private void handleQueueTask ( android.support.v4.app.NotificationManagerCompat$Task p0 ) {
/* .locals 3 */
/* .param p1, "task" # Landroid/support/v4/app/NotificationManagerCompat$Task; */
/* .prologue */
/* .line 330 */
/* invoke-direct {p0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->updateListenerMap()V */
/* .line 331 */
v2 = this.mRecordMap;
/* .local v0, "i$":Ljava/util/Iterator; */
v2 = } // :goto_0
if ( v2 != null) { // if-eqz v2, :cond_0
/* check-cast v1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord; */
/* .line 332 */
/* .local v1, "record":Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord; */
v2 = this.taskQueue;
(( java.util.LinkedList ) v2 ).add ( p1 ); // invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
/* .line 333 */
/* invoke-direct {p0, v1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->processListenerQueue(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V */
/* .line 335 */
} // .end local v1 # "record":Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
} // :cond_0
return;
} // .end method
private void handleRetryListenerQueue ( android.content.ComponentName p0 ) {
/* .locals 2 */
/* .param p1, "componentName" # Landroid/content/ComponentName; */
/* .prologue */
/* .line 354 */
v1 = this.mRecordMap;
/* check-cast v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord; */
/* .line 355 */
/* .local v0, "record":Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord; */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 356 */
/* invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->processListenerQueue(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V */
/* .line 358 */
} // :cond_0
return;
} // .end method
private void handleServiceConnected ( android.content.ComponentName p0, android.os.IBinder p1 ) {
/* .locals 2 */
/* .param p1, "componentName" # Landroid/content/ComponentName; */
/* .param p2, "iBinder" # Landroid/os/IBinder; */
/* .prologue */
/* .line 338 */
v1 = this.mRecordMap;
/* check-cast v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord; */
/* .line 339 */
/* .local v0, "record":Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord; */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 340 */
android.support.v4.app.INotificationSideChannel$Stub .asInterface ( p2 );
this.service = v1;
/* .line 341 */
int v1 = 0; // const/4 v1, 0x0
/* iput v1, v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I */
/* .line 342 */
/* invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->processListenerQueue(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V */
/* .line 344 */
} // :cond_0
return;
} // .end method
private void handleServiceDisconnected ( android.content.ComponentName p0 ) {
/* .locals 2 */
/* .param p1, "componentName" # Landroid/content/ComponentName; */
/* .prologue */
/* .line 347 */
v1 = this.mRecordMap;
/* check-cast v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord; */
/* .line 348 */
/* .local v0, "record":Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord; */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 349 */
/* invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->ensureServiceUnbound(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V */
/* .line 351 */
} // :cond_0
return;
} // .end method
private void processListenerQueue ( android.support.v4.app.NotificationManagerCompat$SideChannelManager$ListenerRecord p0 ) {
/* .locals 6 */
/* .param p1, "record" # Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord; */
/* .prologue */
int v5 = 3; // const/4 v5, 0x3
/* .line 488 */
final String v2 = "NotifManCompat"; // const-string v2, "NotifManCompat"
v2 = android.util.Log .isLoggable ( v2,v5 );
if ( v2 != null) { // if-eqz v2, :cond_0
/* .line 489 */
final String v2 = "NotifManCompat"; // const-string v2, "NotifManCompat"
/* new-instance v3, Ljava/lang/StringBuilder; */
/* invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V */
final String v4 = "Processing component "; // const-string v4, "Processing component "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
v4 = this.componentName;
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
final String v4 = ", "; // const-string v4, ", "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
v4 = this.taskQueue;
v4 = (( java.util.LinkedList ) v4 ).size ( ); // invoke-virtual {v4}, Ljava/util/LinkedList;->size()I
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
final String v4 = " queued tasks"; // const-string v4, " queued tasks"
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).toString ( ); // invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .d ( v2,v3 );
/* .line 492 */
} // :cond_0
v2 = this.taskQueue;
v2 = (( java.util.LinkedList ) v2 ).isEmpty ( ); // invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z
if ( v2 != null) { // if-eqz v2, :cond_2
/* .line 526 */
} // :cond_1
} // :goto_0
return;
/* .line 495 */
} // :cond_2
v2 = /* invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->ensureServiceBound(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)Z */
if ( v2 != null) { // if-eqz v2, :cond_3
v2 = this.service;
/* if-nez v2, :cond_6 */
/* .line 497 */
} // :cond_3
/* invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->scheduleListenerRetry(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V */
/* .line 507 */
/* .local v1, "task":Landroid/support/v4/app/NotificationManagerCompat$Task; */
} // :cond_4
try { // :try_start_0
final String v2 = "NotifManCompat"; // const-string v2, "NotifManCompat"
int v3 = 3; // const/4 v3, 0x3
v2 = android.util.Log .isLoggable ( v2,v3 );
if ( v2 != null) { // if-eqz v2, :cond_5
/* .line 508 */
final String v2 = "NotifManCompat"; // const-string v2, "NotifManCompat"
/* new-instance v3, Ljava/lang/StringBuilder; */
/* invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V */
final String v4 = "Sending task "; // const-string v4, "Sending task "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).append ( v1 ); // invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).toString ( ); // invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .d ( v2,v3 );
/* .line 510 */
} // :cond_5
v2 = this.service;
/* .line 511 */
v2 = this.taskQueue;
(( java.util.LinkedList ) v2 ).remove ( ); // invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;
/* :try_end_0 */
/* .catch Landroid/os/DeadObjectException; {:try_start_0 ..:try_end_0} :catch_0 */
/* .catch Landroid/os/RemoteException; {:try_start_0 ..:try_end_0} :catch_1 */
/* .line 502 */
} // .end local v1 # "task":Landroid/support/v4/app/NotificationManagerCompat$Task;
} // :cond_6
v2 = this.taskQueue;
(( java.util.LinkedList ) v2 ).peek ( ); // invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;
/* check-cast v1, Landroid/support/v4/app/NotificationManagerCompat$Task; */
/* .line 503 */
/* .restart local v1 # "task":Landroid/support/v4/app/NotificationManagerCompat$Task; */
/* if-nez v1, :cond_4 */
/* .line 522 */
} // :cond_7
} // :goto_1
v2 = this.taskQueue;
v2 = (( java.util.LinkedList ) v2 ).isEmpty ( ); // invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z
/* if-nez v2, :cond_1 */
/* .line 524 */
/* invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->scheduleListenerRetry(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V */
/* .line 512 */
/* :catch_0 */
/* move-exception v0 */
/* .line 513 */
/* .local v0, "e":Landroid/os/DeadObjectException; */
final String v2 = "NotifManCompat"; // const-string v2, "NotifManCompat"
v2 = android.util.Log .isLoggable ( v2,v5 );
if ( v2 != null) { // if-eqz v2, :cond_7
/* .line 514 */
final String v2 = "NotifManCompat"; // const-string v2, "NotifManCompat"
/* new-instance v3, Ljava/lang/StringBuilder; */
/* invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V */
final String v4 = "Remote service has died: "; // const-string v4, "Remote service has died: "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
v4 = this.componentName;
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).toString ( ); // invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .d ( v2,v3 );
/* .line 517 */
} // .end local v0 # "e":Landroid/os/DeadObjectException;
/* :catch_1 */
/* move-exception v0 */
/* .line 518 */
/* .local v0, "e":Landroid/os/RemoteException; */
final String v2 = "NotifManCompat"; // const-string v2, "NotifManCompat"
/* new-instance v3, Ljava/lang/StringBuilder; */
/* invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V */
final String v4 = "RemoteException communicating with "; // const-string v4, "RemoteException communicating with "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
v4 = this.componentName;
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).toString ( ); // invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .w ( v2,v3,v0 );
} // .end method
private void scheduleListenerRetry ( android.support.v4.app.NotificationManagerCompat$SideChannelManager$ListenerRecord p0 ) {
/* .locals 6 */
/* .param p1, "record" # Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord; */
/* .prologue */
int v5 = 3; // const/4 v5, 0x3
/* .line 465 */
v2 = this.mHandler;
v3 = this.componentName;
v2 = (( android.os.Handler ) v2 ).hasMessages ( v5, v3 ); // invoke-virtual {v2, v5, v3}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z
if ( v2 != null) { // if-eqz v2, :cond_0
/* .line 481 */
} // :goto_0
return;
/* .line 468 */
} // :cond_0
/* iget v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I */
/* add-int/lit8 v2, v2, 0x1 */
/* iput v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I */
/* .line 469 */
/* iget v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I */
int v3 = 6; // const/4 v3, 0x6
/* if-le v2, v3, :cond_1 */
/* .line 470 */
final String v2 = "NotifManCompat"; // const-string v2, "NotifManCompat"
/* new-instance v3, Ljava/lang/StringBuilder; */
/* invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V */
final String v4 = "Giving up on delivering "; // const-string v4, "Giving up on delivering "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
v4 = this.taskQueue;
v4 = (( java.util.LinkedList ) v4 ).size ( ); // invoke-virtual {v4}, Ljava/util/LinkedList;->size()I
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
final String v4 = " tasks to "; // const-string v4, " tasks to "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
v4 = this.componentName;
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
final String v4 = " after "; // const-string v4, " after "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* iget v4, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I */
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
final String v4 = " retries"; // const-string v4, " retries"
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).toString ( ); // invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .w ( v2,v3 );
/* .line 472 */
v2 = this.taskQueue;
(( java.util.LinkedList ) v2 ).clear ( ); // invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V
/* .line 475 */
} // :cond_1
int v2 = 1; // const/4 v2, 0x1
/* iget v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I */
/* add-int/lit8 v3, v3, -0x1 */
/* shl-int/2addr v2, v3 */
/* mul-int/lit16 v0, v2, 0x3e8 */
/* .line 476 */
/* .local v0, "delayMs":I */
final String v2 = "NotifManCompat"; // const-string v2, "NotifManCompat"
v2 = android.util.Log .isLoggable ( v2,v5 );
if ( v2 != null) { // if-eqz v2, :cond_2
/* .line 477 */
final String v2 = "NotifManCompat"; // const-string v2, "NotifManCompat"
/* new-instance v3, Ljava/lang/StringBuilder; */
/* invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V */
final String v4 = "Scheduling retry for "; // const-string v4, "Scheduling retry for "
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).append ( v0 ); // invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
final String v4 = " ms"; // const-string v4, " ms"
(( java.lang.StringBuilder ) v3 ).append ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v3 ).toString ( ); // invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .d ( v2,v3 );
/* .line 479 */
} // :cond_2
v2 = this.mHandler;
v3 = this.componentName;
(( android.os.Handler ) v2 ).obtainMessage ( v5, v3 ); // invoke-virtual {v2, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
/* .line 480 */
/* .local v1, "msg":Landroid/os/Message; */
v2 = this.mHandler;
/* int-to-long v4, v0 */
(( android.os.Handler ) v2 ).sendMessageDelayed ( v1, v4, v5 ); // invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
/* goto/16 :goto_0 */
} // .end method
private void updateListenerMap ( ) {
/* .locals 12 */
/* .prologue */
int v11 = 3; // const/4 v11, 0x3
/* .line 383 */
v8 = this.mContext;
android.support.v4.app.NotificationManagerCompat .getEnabledListenerPackages ( v8 );
/* .line 384 */
/* .local v2, "enabledPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;" */
v8 = v8 = this.mCachedEnabledPackages;
if ( v8 != null) { // if-eqz v8, :cond_1
/* .line 427 */
} // :cond_0
return;
/* .line 388 */
} // :cond_1
this.mCachedEnabledPackages = v2;
/* .line 389 */
v8 = this.mContext;
(( android.content.Context ) v8 ).getPackageManager ( ); // invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
/* new-instance v9, Landroid/content/Intent; */
/* invoke-direct {v9}, Landroid/content/Intent;-><init>()V */
final String v10 = "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"; // const-string v10, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"
(( android.content.Intent ) v9 ).setAction ( v10 ); // invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
int v10 = 4; // const/4 v10, 0x4
(( android.content.pm.PackageManager ) v8 ).queryIntentServices ( v9, v10 ); // invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
/* .line 391 */
/* .local v7, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;" */
/* new-instance v1, Ljava/util/HashSet; */
/* invoke-direct {v1}, Ljava/util/HashSet;-><init>()V */
/* .line 392 */
/* .local v1, "enabledComponents":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;" */
/* .local v4, "i$":Ljava/util/Iterator; */
} // :cond_2
v8 = } // :goto_0
if ( v8 != null) { // if-eqz v8, :cond_4
/* check-cast v6, Landroid/content/pm/ResolveInfo; */
/* .line 393 */
/* .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo; */
v8 = this.serviceInfo;
v8 = v8 = this.packageName;
if ( v8 != null) { // if-eqz v8, :cond_2
/* .line 396 */
/* new-instance v0, Landroid/content/ComponentName; */
v8 = this.serviceInfo;
v8 = this.packageName;
v9 = this.serviceInfo;
v9 = this.name;
/* invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V */
/* .line 398 */
/* .local v0, "componentName":Landroid/content/ComponentName; */
v8 = this.serviceInfo;
v8 = this.permission;
if ( v8 != null) { // if-eqz v8, :cond_3
/* .line 399 */
final String v8 = "NotifManCompat"; // const-string v8, "NotifManCompat"
/* new-instance v9, Ljava/lang/StringBuilder; */
/* invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V */
final String v10 = "Permission present on component "; // const-string v10, "Permission present on component "
(( java.lang.StringBuilder ) v9 ).append ( v10 ); // invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v9 ).append ( v0 ); // invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
final String v10 = ", not adding listener record."; // const-string v10, ", not adding listener record."
(( java.lang.StringBuilder ) v9 ).append ( v10 ); // invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v9 ).toString ( ); // invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .w ( v8,v9 );
/* .line 403 */
} // :cond_3
/* .line 406 */
} // .end local v0 # "componentName":Landroid/content/ComponentName;
} // .end local v6 # "resolveInfo":Landroid/content/pm/ResolveInfo;
} // :cond_4
} // :cond_5
v8 = } // :goto_1
if ( v8 != null) { // if-eqz v8, :cond_7
/* check-cast v0, Landroid/content/ComponentName; */
/* .line 407 */
/* .restart local v0 # "componentName":Landroid/content/ComponentName; */
v8 = v8 = this.mRecordMap;
/* if-nez v8, :cond_5 */
/* .line 408 */
final String v8 = "NotifManCompat"; // const-string v8, "NotifManCompat"
v8 = android.util.Log .isLoggable ( v8,v11 );
if ( v8 != null) { // if-eqz v8, :cond_6
/* .line 409 */
final String v8 = "NotifManCompat"; // const-string v8, "NotifManCompat"
/* new-instance v9, Ljava/lang/StringBuilder; */
/* invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V */
final String v10 = "Adding listener record for "; // const-string v10, "Adding listener record for "
(( java.lang.StringBuilder ) v9 ).append ( v10 ); // invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v9 ).append ( v0 ); // invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v9 ).toString ( ); // invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .d ( v8,v9 );
/* .line 411 */
} // :cond_6
v8 = this.mRecordMap;
/* new-instance v9, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord; */
/* invoke-direct {v9, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;-><init>(Landroid/content/ComponentName;)V */
/* .line 415 */
} // .end local v0 # "componentName":Landroid/content/ComponentName;
} // :cond_7
v8 = this.mRecordMap;
/* .line 417 */
/* .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;>;>;" */
} // :cond_8
v8 = } // :goto_2
if ( v8 != null) { // if-eqz v8, :cond_0
/* .line 418 */
/* check-cast v3, Ljava/util/Map$Entry; */
/* .line 419 */
v8 = /* .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;>;" */
/* if-nez v8, :cond_8 */
/* .line 420 */
final String v8 = "NotifManCompat"; // const-string v8, "NotifManCompat"
v8 = android.util.Log .isLoggable ( v8,v11 );
if ( v8 != null) { // if-eqz v8, :cond_9
/* .line 421 */
final String v8 = "NotifManCompat"; // const-string v8, "NotifManCompat"
/* new-instance v9, Ljava/lang/StringBuilder; */
/* invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V */
final String v10 = "Removing listener record for "; // const-string v10, "Removing listener record for "
(( java.lang.StringBuilder ) v9 ).append ( v10 ); // invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v9 ).append ( v10 ); // invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v9 ).toString ( ); // invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .d ( v8,v9 );
/* .line 423 */
} // :cond_9
/* check-cast v8, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord; */
/* invoke-direct {p0, v8}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->ensureServiceUnbound(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V */
/* .line 424 */
} // .end method
/* # virtual methods */
public Boolean handleMessage ( android.os.Message p0 ) {
/* .locals 4 */
/* .param p1, "msg" # Landroid/os/Message; */
/* .prologue */
int v2 = 1; // const/4 v2, 0x1
/* .line 311 */
/* iget v1, p1, Landroid/os/Message;->what:I */
/* packed-switch v1, :pswitch_data_0 */
/* .line 326 */
int v1 = 0; // const/4 v1, 0x0
} // :goto_0
/* .line 313 */
/* :pswitch_0 */
v1 = this.obj;
/* check-cast v1, Landroid/support/v4/app/NotificationManagerCompat$Task; */
/* invoke-direct {p0, v1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->handleQueueTask(Landroid/support/v4/app/NotificationManagerCompat$Task;)V */
/* move v1, v2 */
/* .line 314 */
/* .line 316 */
/* :pswitch_1 */
v0 = this.obj;
/* check-cast v0, Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent; */
/* .line 317 */
/* .local v0, "event":Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent; */
v1 = this.componentName;
v3 = this.iBinder;
/* invoke-direct {p0, v1, v3}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->handleServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V */
/* move v1, v2 */
/* .line 318 */
/* .line 320 */
} // .end local v0 # "event":Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;
/* :pswitch_2 */
v1 = this.obj;
/* check-cast v1, Landroid/content/ComponentName; */
/* invoke-direct {p0, v1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->handleServiceDisconnected(Landroid/content/ComponentName;)V */
/* move v1, v2 */
/* .line 321 */
/* .line 323 */
/* :pswitch_3 */
v1 = this.obj;
/* check-cast v1, Landroid/content/ComponentName; */
/* invoke-direct {p0, v1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->handleRetryListenerQueue(Landroid/content/ComponentName;)V */
/* move v1, v2 */
/* .line 324 */
/* .line 311 */
/* :pswitch_data_0 */
/* .packed-switch 0x0 */
/* :pswitch_0 */
/* :pswitch_1 */
/* :pswitch_2 */
/* :pswitch_3 */
} // .end packed-switch
} // .end method
public void onServiceConnected ( android.content.ComponentName p0, android.os.IBinder p1 ) {
/* .locals 3 */
/* .param p1, "componentName" # Landroid/content/ComponentName; */
/* .param p2, "iBinder" # Landroid/os/IBinder; */
/* .prologue */
/* .line 362 */
final String v0 = "NotifManCompat"; // const-string v0, "NotifManCompat"
int v1 = 3; // const/4 v1, 0x3
v0 = android.util.Log .isLoggable ( v0,v1 );
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 363 */
final String v0 = "NotifManCompat"; // const-string v0, "NotifManCompat"
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
final String v2 = "Connected to service "; // const-string v2, "Connected to service "
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).append ( p1 ); // invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .d ( v0,v1 );
/* .line 365 */
} // :cond_0
v0 = this.mHandler;
int v1 = 1; // const/4 v1, 0x1
/* new-instance v2, Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent; */
/* invoke-direct {v2, p1, p2}, Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;-><init>(Landroid/content/ComponentName;Landroid/os/IBinder;)V */
(( android.os.Handler ) v0 ).obtainMessage ( v1, v2 ); // invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
(( android.os.Message ) v0 ).sendToTarget ( ); // invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
/* .line 368 */
return;
} // .end method
public void onServiceDisconnected ( android.content.ComponentName p0 ) {
/* .locals 3 */
/* .param p1, "componentName" # Landroid/content/ComponentName; */
/* .prologue */
/* .line 372 */
final String v0 = "NotifManCompat"; // const-string v0, "NotifManCompat"
int v1 = 3; // const/4 v1, 0x3
v0 = android.util.Log .isLoggable ( v0,v1 );
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 373 */
final String v0 = "NotifManCompat"; // const-string v0, "NotifManCompat"
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
final String v2 = "Disconnected from service "; // const-string v2, "Disconnected from service "
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).append ( p1 ); // invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .d ( v0,v1 );
/* .line 375 */
} // :cond_0
v0 = this.mHandler;
int v1 = 2; // const/4 v1, 0x2
(( android.os.Handler ) v0 ).obtainMessage ( v1, p1 ); // invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
(( android.os.Message ) v0 ).sendToTarget ( ); // invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
/* .line 376 */
return;
} // .end method
public void queueTask ( android.support.v4.app.NotificationManagerCompat$Task p0 ) {
/* .locals 2 */
/* .param p1, "task" # Landroid/support/v4/app/NotificationManagerCompat$Task; */
/* .prologue */
/* .line 306 */
v0 = this.mHandler;
int v1 = 0; // const/4 v1, 0x0
(( android.os.Handler ) v0 ).obtainMessage ( v1, p1 ); // invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
(( android.os.Message ) v0 ).sendToTarget ( ); // invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
/* .line 307 */
return;
} // .end method
