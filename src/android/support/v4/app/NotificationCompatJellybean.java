class android.support.v4.app.NotificationCompatJellybean {
	 /* .source "NotificationCompatJellybean.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/NotificationCompatJellybean$Builder; */
	 /* } */
} // .end annotation
/* # static fields */
static final java.lang.String EXTRA_ACTION_EXTRAS;
static final java.lang.String EXTRA_GROUP_KEY;
static final java.lang.String EXTRA_GROUP_SUMMARY;
static final java.lang.String EXTRA_LOCAL_ONLY;
static final java.lang.String EXTRA_REMOTE_INPUTS;
static final java.lang.String EXTRA_SORT_KEY;
static final java.lang.String EXTRA_USE_SIDE_CHANNEL;
private static final java.lang.String KEY_ACTION_INTENT;
private static final java.lang.String KEY_EXTRAS;
private static final java.lang.String KEY_ICON;
private static final java.lang.String KEY_REMOTE_INPUTS;
private static final java.lang.String KEY_TITLE;
public static final java.lang.String TAG;
private static java.lang.Class sActionClass;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/lang/Class", */
/* "<*>;" */
/* } */
} // .end annotation
} // .end field
private static java.lang.reflect.Field sActionIconField;
private static java.lang.reflect.Field sActionIntentField;
private static java.lang.reflect.Field sActionTitleField;
private static Boolean sActionsAccessFailed;
private static java.lang.reflect.Field sActionsField;
private static final java.lang.Object sActionsLock;
private static java.lang.reflect.Field sExtrasField;
private static Boolean sExtrasFieldAccessFailed;
private static final java.lang.Object sExtrasLock;
/* # direct methods */
static android.support.v4.app.NotificationCompatJellybean ( ) {
/* .locals 1 */
/* .prologue */
/* .line 52 */
/* new-instance v0, Ljava/lang/Object; */
/* invoke-direct {v0}, Ljava/lang/Object;-><init>()V */
/* .line 56 */
/* new-instance v0, Ljava/lang/Object; */
/* invoke-direct {v0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
 android.support.v4.app.NotificationCompatJellybean ( ) {
/* .locals 0 */
/* .prologue */
/* .line 33 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 64 */
return;
} // .end method
public static void addBigPictureStyle ( android.support.v4.app.NotificationBuilderWithBuilderAccessor p0, java.lang.CharSequence p1, Boolean p2, java.lang.CharSequence p3, android.graphics.Bitmap p4, android.graphics.Bitmap p5, Boolean p6 ) {
/* .locals 3 */
/* .param p0, "b" # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor; */
/* .param p1, "bigContentTitle" # Ljava/lang/CharSequence; */
/* .param p2, "useSummary" # Z */
/* .param p3, "summaryText" # Ljava/lang/CharSequence; */
/* .param p4, "bigPicture" # Landroid/graphics/Bitmap; */
/* .param p5, "bigLargeIcon" # Landroid/graphics/Bitmap; */
/* .param p6, "bigLargeIconSet" # Z */
/* .prologue */
/* .line 168 */
/* new-instance v1, Landroid/app/Notification$BigPictureStyle; */
/* invoke-direct {v1, v2}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V */
(( android.app.Notification$BigPictureStyle ) v1 ).setBigContentTitle ( p1 ); // invoke-virtual {v1, p1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
(( android.app.Notification$BigPictureStyle ) v1 ).bigPicture ( p4 ); // invoke-virtual {v1, p4}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
/* .line 171 */
/* .local v0, "style":Landroid/app/Notification$BigPictureStyle; */
if ( p6 != null) { // if-eqz p6, :cond_0
/* .line 172 */
(( android.app.Notification$BigPictureStyle ) v0 ).bigLargeIcon ( p5 ); // invoke-virtual {v0, p5}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
/* .line 174 */
} // :cond_0
if ( p2 != null) { // if-eqz p2, :cond_1
/* .line 175 */
(( android.app.Notification$BigPictureStyle ) v0 ).setSummaryText ( p3 ); // invoke-virtual {v0, p3}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
/* .line 177 */
} // :cond_1
return;
} // .end method
public static void addBigTextStyle ( android.support.v4.app.NotificationBuilderWithBuilderAccessor p0, java.lang.CharSequence p1, Boolean p2, java.lang.CharSequence p3, java.lang.CharSequence p4 ) {
/* .locals 3 */
/* .param p0, "b" # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor; */
/* .param p1, "bigContentTitle" # Ljava/lang/CharSequence; */
/* .param p2, "useSummary" # Z */
/* .param p3, "summaryText" # Ljava/lang/CharSequence; */
/* .param p4, "bigText" # Ljava/lang/CharSequence; */
/* .prologue */
/* .line 156 */
/* new-instance v1, Landroid/app/Notification$BigTextStyle; */
/* invoke-direct {v1, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V */
(( android.app.Notification$BigTextStyle ) v1 ).setBigContentTitle ( p1 ); // invoke-virtual {v1, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
(( android.app.Notification$BigTextStyle ) v1 ).bigText ( p4 ); // invoke-virtual {v1, p4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
/* .line 159 */
/* .local v0, "style":Landroid/app/Notification$BigTextStyle; */
if ( p2 != null) { // if-eqz p2, :cond_0
/* .line 160 */
(( android.app.Notification$BigTextStyle ) v0 ).setSummaryText ( p3 ); // invoke-virtual {v0, p3}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
/* .line 162 */
} // :cond_0
return;
} // .end method
public static void addInboxStyle ( android.support.v4.app.NotificationBuilderWithBuilderAccessor p0, java.lang.CharSequence p1, Boolean p2, java.lang.CharSequence p3, java.util.ArrayList p4 ) {
/* .locals 5 */
/* .param p0, "b" # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor; */
/* .param p1, "bigContentTitle" # Ljava/lang/CharSequence; */
/* .param p2, "useSummary" # Z */
/* .param p3, "summaryText" # Ljava/lang/CharSequence; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;", */
/* "Ljava/lang/CharSequence;", */
/* "Z", */
/* "Ljava/lang/CharSequence;", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Ljava/lang/CharSequence;", */
/* ">;)V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 182 */
/* .local p4, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;" */
/* new-instance v3, Landroid/app/Notification$InboxStyle; */
/* invoke-direct {v3, v4}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V */
(( android.app.Notification$InboxStyle ) v3 ).setBigContentTitle ( p1 ); // invoke-virtual {v3, p1}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
/* .line 184 */
/* .local v1, "style":Landroid/app/Notification$InboxStyle; */
if ( p2 != null) { // if-eqz p2, :cond_0
/* .line 185 */
(( android.app.Notification$InboxStyle ) v1 ).setSummaryText ( p3 ); // invoke-virtual {v1, p3}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
/* .line 187 */
} // :cond_0
(( java.util.ArrayList ) p4 ).iterator ( ); // invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
/* .local v0, "i$":Ljava/util/Iterator; */
v3 = } // :goto_0
if ( v3 != null) { // if-eqz v3, :cond_1
/* check-cast v2, Ljava/lang/CharSequence; */
/* .line 188 */
/* .local v2, "text":Ljava/lang/CharSequence; */
(( android.app.Notification$InboxStyle ) v1 ).addLine ( v2 ); // invoke-virtual {v1, v2}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
/* .line 190 */
} // .end local v2 # "text":Ljava/lang/CharSequence;
} // :cond_1
return;
} // .end method
public static android.util.SparseArray buildActionExtrasMap ( java.util.List p0 ) {
/* .locals 4 */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Ljava/util/List", */
/* "<", */
/* "Landroid/os/Bundle;", */
/* ">;)", */
/* "Landroid/util/SparseArray", */
/* "<", */
/* "Landroid/os/Bundle;", */
/* ">;" */
/* } */
} // .end annotation
/* .prologue */
/* .line 194 */
/* .local p0, "actionExtrasList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;" */
int v1 = 0; // const/4 v1, 0x0
/* .line 195 */
/* .local v1, "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;" */
int v3 = 0; // const/4 v3, 0x0
v2 = /* .local v3, "i":I */
/* .local v2, "count":I */
} // :goto_0
/* if-ge v3, v2, :cond_2 */
/* .line 196 */
/* check-cast v0, Landroid/os/Bundle; */
/* .line 197 */
/* .local v0, "actionExtras":Landroid/os/Bundle; */
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 198 */
/* if-nez v1, :cond_0 */
/* .line 199 */
/* new-instance v1, Landroid/util/SparseArray; */
} // .end local v1 # "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
/* invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V */
/* .line 201 */
/* .restart local v1 # "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;" */
} // :cond_0
(( android.util.SparseArray ) v1 ).put ( v3, v0 ); // invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
/* .line 195 */
} // :cond_1
/* add-int/lit8 v3, v3, 0x1 */
/* .line 204 */
} // .end local v0 # "actionExtras":Landroid/os/Bundle;
} // :cond_2
} // .end method
private static Boolean ensureActionReflectionReadyLocked ( ) {
/* .locals 5 */
/* .prologue */
int v2 = 0; // const/4 v2, 0x0
int v1 = 1; // const/4 v1, 0x1
/* .line 318 */
/* sget-boolean v3, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z */
if ( v3 != null) { // if-eqz v3, :cond_0
/* .line 337 */
} // :goto_0
/* .line 322 */
} // :cond_0
try { // :try_start_0
v3 = android.support.v4.app.NotificationCompatJellybean.sActionsField;
/* if-nez v3, :cond_1 */
/* .line 323 */
final String v3 = "android.app.Notification$Action"; // const-string v3, "android.app.Notification$Action"
java.lang.Class .forName ( v3 );
/* .line 324 */
v3 = android.support.v4.app.NotificationCompatJellybean.sActionClass;
final String v4 = "icon"; // const-string v4, "icon"
(( java.lang.Class ) v3 ).getDeclaredField ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
/* .line 325 */
v3 = android.support.v4.app.NotificationCompatJellybean.sActionClass;
final String v4 = "title"; // const-string v4, "title"
(( java.lang.Class ) v3 ).getDeclaredField ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
/* .line 326 */
v3 = android.support.v4.app.NotificationCompatJellybean.sActionClass;
final String v4 = "actionIntent"; // const-string v4, "actionIntent"
(( java.lang.Class ) v3 ).getDeclaredField ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
/* .line 327 */
/* const-class v3, Landroid/app/Notification; */
final String v4 = "actions"; // const-string v4, "actions"
(( java.lang.Class ) v3 ).getDeclaredField ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
/* .line 328 */
v3 = android.support.v4.app.NotificationCompatJellybean.sActionsField;
int v4 = 1; // const/4 v4, 0x1
(( java.lang.reflect.Field ) v3 ).setAccessible ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
/* :try_end_0 */
/* .catch Ljava/lang/ClassNotFoundException; {:try_start_0 ..:try_end_0} :catch_0 */
/* .catch Ljava/lang/NoSuchFieldException; {:try_start_0 ..:try_end_0} :catch_1 */
/* .line 337 */
} // :cond_1
} // :goto_1
/* sget-boolean v3, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z */
/* if-nez v3, :cond_2 */
} // :goto_2
/* move v2, v1 */
/* .line 330 */
/* :catch_0 */
/* move-exception v0 */
/* .line 331 */
/* .local v0, "e":Ljava/lang/ClassNotFoundException; */
final String v3 = "NotificationCompat"; // const-string v3, "NotificationCompat"
final String v4 = "Unable to access notification actions"; // const-string v4, "Unable to access notification actions"
android.util.Log .e ( v3,v4,v0 );
/* .line 332 */
android.support.v4.app.NotificationCompatJellybean.sActionsAccessFailed = (v1!= 0);
/* .line 333 */
} // .end local v0 # "e":Ljava/lang/ClassNotFoundException;
/* :catch_1 */
/* move-exception v0 */
/* .line 334 */
/* .local v0, "e":Ljava/lang/NoSuchFieldException; */
final String v3 = "NotificationCompat"; // const-string v3, "NotificationCompat"
final String v4 = "Unable to access notification actions"; // const-string v4, "Unable to access notification actions"
android.util.Log .e ( v3,v4,v0 );
/* .line 335 */
android.support.v4.app.NotificationCompatJellybean.sActionsAccessFailed = (v1!= 0);
} // .end local v0 # "e":Ljava/lang/NoSuchFieldException;
} // :cond_2
/* move v1, v2 */
/* .line 337 */
} // .end method
public static android.support.v4.app.NotificationCompatBase$Action getAction ( android.app.Notification p0, Integer p1, android.support.v4.app.NotificationCompatBase$Action$Factory p2, android.support.v4.app.RemoteInputCompatBase$RemoteInput$Factory p3 ) {
/* .locals 11 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .param p1, "actionIndex" # I */
/* .param p2, "factory" # Landroid/support/v4/app/NotificationCompatBase$Action$Factory; */
/* .param p3, "remoteInputFactory" # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory; */
/* .prologue */
/* .line 277 */
v10 = android.support.v4.app.NotificationCompatJellybean.sActionsLock;
/* monitor-enter v10 */
/* .line 279 */
try { // :try_start_0
android.support.v4.app.NotificationCompatJellybean .getActionObjectsLocked ( p0 );
/* aget-object v7, v0, p1 */
/* .line 280 */
/* .local v7, "actionObject":Ljava/lang/Object; */
int v5 = 0; // const/4 v5, 0x0
/* .line 281 */
/* .local v5, "actionExtras":Landroid/os/Bundle; */
android.support.v4.app.NotificationCompatJellybean .getExtras ( p0 );
/* .line 282 */
/* .local v9, "extras":Landroid/os/Bundle; */
if ( v9 != null) { // if-eqz v9, :cond_0
/* .line 283 */
final String v0 = "android.support.actionExtras"; // const-string v0, "android.support.actionExtras"
(( android.os.Bundle ) v9 ).getSparseParcelableArray ( v0 ); // invoke-virtual {v9, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
/* .line 285 */
/* .local v6, "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;" */
if ( v6 != null) { // if-eqz v6, :cond_0
/* .line 286 */
(( android.util.SparseArray ) v6 ).get ( p1 ); // invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
} // .end local v5 # "actionExtras":Landroid/os/Bundle;
/* check-cast v5, Landroid/os/Bundle; */
/* .line 289 */
} // .end local v6 # "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
/* .restart local v5 # "actionExtras":Landroid/os/Bundle; */
} // :cond_0
v0 = android.support.v4.app.NotificationCompatJellybean.sActionIconField;
v2 = (( java.lang.reflect.Field ) v0 ).getInt ( v7 ); // invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
v0 = android.support.v4.app.NotificationCompatJellybean.sActionTitleField;
(( java.lang.reflect.Field ) v0 ).get ( v7 ); // invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
/* check-cast v3, Ljava/lang/CharSequence; */
v0 = android.support.v4.app.NotificationCompatJellybean.sActionIntentField;
(( java.lang.reflect.Field ) v0 ).get ( v7 ); // invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
/* check-cast v4, Landroid/app/PendingIntent; */
/* move-object v0, p2 */
/* move-object v1, p3 */
/* invoke-static/range {v0 ..v5}, Landroid/support/v4/app/NotificationCompatJellybean;->readAction(Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompatBase$Action; */
/* :try_end_0 */
/* .catch Ljava/lang/IllegalAccessException; {:try_start_0 ..:try_end_0} :catch_0 */
/* .catchall {:try_start_0 ..:try_end_0} :catchall_0 */
try { // :try_start_1
/* monitor-exit v10 */
/* .line 299 */
} // .end local v5 # "actionExtras":Landroid/os/Bundle;
} // .end local v7 # "actionObject":Ljava/lang/Object;
} // .end local v9 # "extras":Landroid/os/Bundle;
} // :goto_0
/* .line 294 */
/* :catch_0 */
/* move-exception v8 */
/* .line 295 */
/* .local v8, "e":Ljava/lang/IllegalAccessException; */
final String v0 = "NotificationCompat"; // const-string v0, "NotificationCompat"
final String v1 = "Unable to access notification actions"; // const-string v1, "Unable to access notification actions"
android.util.Log .e ( v0,v1,v8 );
/* .line 296 */
int v0 = 1; // const/4 v0, 0x1
android.support.v4.app.NotificationCompatJellybean.sActionsAccessFailed = (v0!= 0);
/* .line 298 */
/* monitor-exit v10 */
/* .line 299 */
int v0 = 0; // const/4 v0, 0x0
/* .line 298 */
} // .end local v8 # "e":Ljava/lang/IllegalAccessException;
/* :catchall_0 */
/* move-exception v0 */
/* monitor-exit v10 */
/* :try_end_1 */
/* .catchall {:try_start_1 ..:try_end_1} :catchall_0 */
/* throw v0 */
} // .end method
public static Integer getActionCount ( android.app.Notification p0 ) {
/* .locals 3 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .prologue */
/* .line 268 */
v2 = android.support.v4.app.NotificationCompatJellybean.sActionsLock;
/* monitor-enter v2 */
/* .line 269 */
try { // :try_start_0
android.support.v4.app.NotificationCompatJellybean .getActionObjectsLocked ( p0 );
/* .line 270 */
/* .local v0, "actionObjects":[Ljava/lang/Object; */
if ( v0 != null) { // if-eqz v0, :cond_0
/* array-length v1, v0 */
} // :goto_0
/* monitor-exit v2 */
} // :cond_0
int v1 = 0; // const/4 v1, 0x0
/* .line 271 */
} // .end local v0 # "actionObjects":[Ljava/lang/Object;
/* :catchall_0 */
/* move-exception v1 */
/* monitor-exit v2 */
/* :try_end_0 */
/* .catchall {:try_start_0 ..:try_end_0} :catchall_0 */
/* throw v1 */
} // .end method
private static android.support.v4.app.NotificationCompatBase$Action getActionFromBundle ( android.os.Bundle p0, android.support.v4.app.NotificationCompatBase$Action$Factory p1, android.support.v4.app.RemoteInputCompatBase$RemoteInput$Factory p2 ) {
/* .locals 6 */
/* .param p0, "bundle" # Landroid/os/Bundle; */
/* .param p1, "actionFactory" # Landroid/support/v4/app/NotificationCompatBase$Action$Factory; */
/* .param p2, "remoteInputFactory" # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory; */
/* .prologue */
/* .line 358 */
final String v0 = "icon"; // const-string v0, "icon"
v1 = (( android.os.Bundle ) p0 ).getInt ( v0 ); // invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
final String v0 = "title"; // const-string v0, "title"
(( android.os.Bundle ) p0 ).getCharSequence ( v0 ); // invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
final String v0 = "actionIntent"; // const-string v0, "actionIntent"
(( android.os.Bundle ) p0 ).getParcelable ( v0 ); // invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
/* check-cast v3, Landroid/app/PendingIntent; */
final String v0 = "extras"; // const-string v0, "extras"
(( android.os.Bundle ) p0 ).getBundle ( v0 ); // invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
final String v0 = "remoteInputs"; // const-string v0, "remoteInputs"
android.support.v4.app.BundleUtil .getBundleArrayFromBundle ( p0,v0 );
android.support.v4.app.RemoteInputCompatJellybean .fromBundleArray ( v0,p2 );
/* move-object v0, p1 */
/* invoke-interface/range {v0 ..v5}, Landroid/support/v4/app/NotificationCompatBase$Action$Factory;->build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/support/v4/app/NotificationCompatBase$Action; */
} // .end method
private static java.lang.Object getActionObjectsLocked ( android.app.Notification p0 ) {
/* .locals 5 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .prologue */
int v2 = 0; // const/4 v2, 0x0
/* .line 303 */
v3 = android.support.v4.app.NotificationCompatJellybean.sActionsLock;
/* monitor-enter v3 */
/* .line 304 */
try { // :try_start_0
v1 = android.support.v4.app.NotificationCompatJellybean .ensureActionReflectionReadyLocked ( );
/* if-nez v1, :cond_0 */
/* .line 305 */
/* monitor-exit v3 */
/* :try_end_0 */
/* .catchall {:try_start_0 ..:try_end_0} :catchall_0 */
/* move-object v1, v2 */
/* .line 312 */
} // :goto_0
/* .line 308 */
} // :cond_0
try { // :try_start_1
v1 = android.support.v4.app.NotificationCompatJellybean.sActionsField;
(( java.lang.reflect.Field ) v1 ).get ( p0 ); // invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
/* check-cast v1, [Ljava/lang/Object; */
/* check-cast v1, [Ljava/lang/Object; */
/* :try_end_1 */
/* .catch Ljava/lang/IllegalAccessException; {:try_start_1 ..:try_end_1} :catch_0 */
/* .catchall {:try_start_1 ..:try_end_1} :catchall_0 */
try { // :try_start_2
/* monitor-exit v3 */
/* .line 314 */
/* :catchall_0 */
/* move-exception v1 */
/* monitor-exit v3 */
/* :try_end_2 */
/* .catchall {:try_start_2 ..:try_end_2} :catchall_0 */
/* throw v1 */
/* .line 309 */
/* :catch_0 */
/* move-exception v0 */
/* .line 310 */
/* .local v0, "e":Ljava/lang/IllegalAccessException; */
try { // :try_start_3
final String v1 = "NotificationCompat"; // const-string v1, "NotificationCompat"
final String v4 = "Unable to access notification actions"; // const-string v4, "Unable to access notification actions"
android.util.Log .e ( v1,v4,v0 );
/* .line 311 */
int v1 = 1; // const/4 v1, 0x1
android.support.v4.app.NotificationCompatJellybean.sActionsAccessFailed = (v1!= 0);
/* .line 312 */
/* monitor-exit v3 */
/* :try_end_3 */
/* .catchall {:try_start_3 ..:try_end_3} :catchall_0 */
/* move-object v1, v2 */
} // .end method
public static android.support.v4.app.NotificationCompatBase$Action getActionsFromParcelableArrayList ( java.util.ArrayList p0, android.support.v4.app.NotificationCompatBase$Action$Factory p1, android.support.v4.app.RemoteInputCompatBase$RemoteInput$Factory p2 ) {
/* .locals 3 */
/* .param p1, "actionFactory" # Landroid/support/v4/app/NotificationCompatBase$Action$Factory; */
/* .param p2, "remoteInputFactory" # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/os/Parcelable;", */
/* ">;", */
/* "Landroid/support/v4/app/NotificationCompatBase$Action$Factory;", */
/* "Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;", */
/* ")[", */
/* "Landroid/support/v4/app/NotificationCompatBase$Action;" */
/* } */
} // .end annotation
/* .prologue */
/* .line 344 */
/* .local p0, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;" */
/* if-nez p0, :cond_1 */
/* .line 345 */
int v0 = 0; // const/4 v0, 0x0
/* .line 352 */
} // :cond_0
/* .line 347 */
} // :cond_1
v2 = (( java.util.ArrayList ) p0 ).size ( ); // invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
/* .line 348 */
/* .local v0, "actions":[Landroid/support/v4/app/NotificationCompatBase$Action; */
int v1 = 0; // const/4 v1, 0x0
/* .local v1, "i":I */
} // :goto_0
/* array-length v2, v0 */
/* if-ge v1, v2, :cond_0 */
/* .line 349 */
(( java.util.ArrayList ) p0 ).get ( v1 ); // invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v2, Landroid/os/Bundle; */
android.support.v4.app.NotificationCompatJellybean .getActionFromBundle ( v2,p1,p2 );
/* aput-object v2, v0, v1 */
/* .line 348 */
/* add-int/lit8 v1, v1, 0x1 */
} // .end method
private static android.os.Bundle getBundleForAction ( android.support.v4.app.NotificationCompatBase$Action p0 ) {
/* .locals 3 */
/* .param p0, "action" # Landroid/support/v4/app/NotificationCompatBase$Action; */
/* .prologue */
/* .line 381 */
/* new-instance v0, Landroid/os/Bundle; */
/* invoke-direct {v0}, Landroid/os/Bundle;-><init>()V */
/* .line 382 */
/* .local v0, "bundle":Landroid/os/Bundle; */
final String v1 = "icon"; // const-string v1, "icon"
v2 = (( android.support.v4.app.NotificationCompatBase$Action ) p0 ).getIcon ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I
(( android.os.Bundle ) v0 ).putInt ( v1, v2 ); // invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
/* .line 383 */
final String v1 = "title"; // const-string v1, "title"
(( android.support.v4.app.NotificationCompatBase$Action ) p0 ).getTitle ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;
(( android.os.Bundle ) v0 ).putCharSequence ( v1, v2 ); // invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
/* .line 384 */
final String v1 = "actionIntent"; // const-string v1, "actionIntent"
(( android.support.v4.app.NotificationCompatBase$Action ) p0 ).getActionIntent ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;
(( android.os.Bundle ) v0 ).putParcelable ( v1, v2 ); // invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
/* .line 385 */
final String v1 = "extras"; // const-string v1, "extras"
(( android.support.v4.app.NotificationCompatBase$Action ) p0 ).getExtras ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;
(( android.os.Bundle ) v0 ).putBundle ( v1, v2 ); // invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
/* .line 386 */
final String v1 = "remoteInputs"; // const-string v1, "remoteInputs"
(( android.support.v4.app.NotificationCompatBase$Action ) p0 ).getRemoteInputs ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
android.support.v4.app.RemoteInputCompatJellybean .toBundleArray ( v2 );
(( android.os.Bundle ) v0 ).putParcelableArray ( v1, v2 ); // invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
/* .line 388 */
} // .end method
public static android.os.Bundle getExtras ( android.app.Notification p0 ) {
/* .locals 7 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .prologue */
int v3 = 0; // const/4 v3, 0x0
/* .line 212 */
v4 = android.support.v4.app.NotificationCompatJellybean.sExtrasLock;
/* monitor-enter v4 */
/* .line 213 */
try { // :try_start_0
/* sget-boolean v5, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z */
if ( v5 != null) { // if-eqz v5, :cond_0
/* .line 214 */
/* monitor-exit v4 */
/* :try_end_0 */
/* .catchall {:try_start_0 ..:try_end_0} :catchall_0 */
/* move-object v1, v3 */
/* .line 239 */
} // :goto_0
/* .line 217 */
} // :cond_0
try { // :try_start_1
v5 = android.support.v4.app.NotificationCompatJellybean.sExtrasField;
/* if-nez v5, :cond_2 */
/* .line 218 */
/* const-class v5, Landroid/app/Notification; */
final String v6 = "extras"; // const-string v6, "extras"
(( java.lang.Class ) v5 ).getDeclaredField ( v6 ); // invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
/* .line 219 */
/* .local v2, "extrasField":Ljava/lang/reflect/Field; */
/* const-class v5, Landroid/os/Bundle; */
(( java.lang.reflect.Field ) v2 ).getType ( ); // invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
v5 = (( java.lang.Class ) v5 ).isAssignableFrom ( v6 ); // invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
/* if-nez v5, :cond_1 */
/* .line 220 */
final String v5 = "NotificationCompat"; // const-string v5, "NotificationCompat"
final String v6 = "Notification.extras field is not of type Bundle"; // const-string v6, "Notification.extras field is not of type Bundle"
android.util.Log .e ( v5,v6 );
/* .line 221 */
int v5 = 1; // const/4 v5, 0x1
android.support.v4.app.NotificationCompatJellybean.sExtrasFieldAccessFailed = (v5!= 0);
/* :try_end_1 */
/* .catch Ljava/lang/IllegalAccessException; {:try_start_1 ..:try_end_1} :catch_0 */
/* .catch Ljava/lang/NoSuchFieldException; {:try_start_1 ..:try_end_1} :catch_1 */
/* .catchall {:try_start_1 ..:try_end_1} :catchall_0 */
/* .line 222 */
try { // :try_start_2
/* monitor-exit v4 */
/* :try_end_2 */
/* .catchall {:try_start_2 ..:try_end_2} :catchall_0 */
/* move-object v1, v3 */
/* .line 224 */
} // :cond_1
int v5 = 1; // const/4 v5, 0x1
try { // :try_start_3
(( java.lang.reflect.Field ) v2 ).setAccessible ( v5 ); // invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
/* .line 225 */
/* .line 227 */
} // .end local v2 # "extrasField":Ljava/lang/reflect/Field;
} // :cond_2
v5 = android.support.v4.app.NotificationCompatJellybean.sExtrasField;
(( java.lang.reflect.Field ) v5 ).get ( p0 ); // invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
/* check-cast v1, Landroid/os/Bundle; */
/* .line 228 */
/* .local v1, "extras":Landroid/os/Bundle; */
/* if-nez v1, :cond_3 */
/* .line 229 */
/* new-instance v1, Landroid/os/Bundle; */
} // .end local v1 # "extras":Landroid/os/Bundle;
/* invoke-direct {v1}, Landroid/os/Bundle;-><init>()V */
/* .line 230 */
/* .restart local v1 # "extras":Landroid/os/Bundle; */
v5 = android.support.v4.app.NotificationCompatJellybean.sExtrasField;
(( java.lang.reflect.Field ) v5 ).set ( p0, v1 ); // invoke-virtual {v5, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
/* :try_end_3 */
/* .catch Ljava/lang/IllegalAccessException; {:try_start_3 ..:try_end_3} :catch_0 */
/* .catch Ljava/lang/NoSuchFieldException; {:try_start_3 ..:try_end_3} :catch_1 */
/* .catchall {:try_start_3 ..:try_end_3} :catchall_0 */
/* .line 232 */
} // :cond_3
try { // :try_start_4
/* monitor-exit v4 */
/* .line 240 */
} // .end local v1 # "extras":Landroid/os/Bundle;
/* :catchall_0 */
/* move-exception v3 */
/* monitor-exit v4 */
/* :try_end_4 */
/* .catchall {:try_start_4 ..:try_end_4} :catchall_0 */
/* throw v3 */
/* .line 233 */
/* :catch_0 */
/* move-exception v0 */
/* .line 234 */
/* .local v0, "e":Ljava/lang/IllegalAccessException; */
try { // :try_start_5
final String v5 = "NotificationCompat"; // const-string v5, "NotificationCompat"
final String v6 = "Unable to access notification extras"; // const-string v6, "Unable to access notification extras"
android.util.Log .e ( v5,v6,v0 );
/* .line 238 */
} // .end local v0 # "e":Ljava/lang/IllegalAccessException;
} // :goto_1
int v5 = 1; // const/4 v5, 0x1
android.support.v4.app.NotificationCompatJellybean.sExtrasFieldAccessFailed = (v5!= 0);
/* .line 239 */
/* monitor-exit v4 */
/* move-object v1, v3 */
/* .line 235 */
/* :catch_1 */
/* move-exception v0 */
/* .line 236 */
/* .local v0, "e":Ljava/lang/NoSuchFieldException; */
final String v5 = "NotificationCompat"; // const-string v5, "NotificationCompat"
final String v6 = "Unable to access notification extras"; // const-string v6, "Unable to access notification extras"
android.util.Log .e ( v5,v6,v0 );
/* :try_end_5 */
/* .catchall {:try_start_5 ..:try_end_5} :catchall_0 */
} // .end method
public static java.lang.String getGroup ( android.app.Notification p0 ) {
/* .locals 2 */
/* .param p0, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 396 */
android.support.v4.app.NotificationCompatJellybean .getExtras ( p0 );
final String v1 = "android.support.groupKey"; // const-string v1, "android.support.groupKey"
(( android.os.Bundle ) v0 ).getString ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
} // .end method
public static Boolean getLocalOnly ( android.app.Notification p0 ) {
/* .locals 2 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .prologue */
/* .line 392 */
android.support.v4.app.NotificationCompatJellybean .getExtras ( p0 );
final String v1 = "android.support.localOnly"; // const-string v1, "android.support.localOnly"
v0 = (( android.os.Bundle ) v0 ).getBoolean ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
} // .end method
public static java.util.ArrayList getParcelableArrayListForActions ( android.support.v4.app.NotificationCompatBase$Action[] p0 ) {
/* .locals 6 */
/* .param p0, "actions" # [Landroid/support/v4/app/NotificationCompatBase$Action; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "([", */
/* "Landroid/support/v4/app/NotificationCompatBase$Action;", */
/* ")", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/os/Parcelable;", */
/* ">;" */
/* } */
} // .end annotation
/* .prologue */
/* .line 370 */
/* if-nez p0, :cond_1 */
/* .line 371 */
int v4 = 0; // const/4 v4, 0x0
/* .line 377 */
} // :cond_0
/* .line 373 */
} // :cond_1
/* new-instance v4, Ljava/util/ArrayList; */
/* array-length v5, p0 */
/* invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V */
/* .line 374 */
/* .local v4, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;" */
/* move-object v1, p0 */
/* .local v1, "arr$":[Landroid/support/v4/app/NotificationCompatBase$Action; */
/* array-length v3, v1 */
/* .local v3, "len$":I */
int v2 = 0; // const/4 v2, 0x0
/* .local v2, "i$":I */
} // :goto_0
/* if-ge v2, v3, :cond_0 */
/* aget-object v0, v1, v2 */
/* .line 375 */
/* .local v0, "action":Landroid/support/v4/app/NotificationCompatBase$Action; */
android.support.v4.app.NotificationCompatJellybean .getBundleForAction ( v0 );
(( java.util.ArrayList ) v4 ).add ( v5 ); // invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
/* .line 374 */
/* add-int/lit8 v2, v2, 0x1 */
} // .end method
public static java.lang.String getSortKey ( android.app.Notification p0 ) {
/* .locals 2 */
/* .param p0, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 404 */
android.support.v4.app.NotificationCompatJellybean .getExtras ( p0 );
final String v1 = "android.support.sortKey"; // const-string v1, "android.support.sortKey"
(( android.os.Bundle ) v0 ).getString ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
} // .end method
public static Boolean isGroupSummary ( android.app.Notification p0 ) {
/* .locals 2 */
/* .param p0, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 400 */
android.support.v4.app.NotificationCompatJellybean .getExtras ( p0 );
final String v1 = "android.support.isGroupSummary"; // const-string v1, "android.support.isGroupSummary"
v0 = (( android.os.Bundle ) v0 ).getBoolean ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
} // .end method
public static android.support.v4.app.NotificationCompatBase$Action readAction ( android.support.v4.app.NotificationCompatBase$Action$Factory p0, android.support.v4.app.RemoteInputCompatBase$RemoteInput$Factory p1, Integer p2, java.lang.CharSequence p3, android.app.PendingIntent p4, android.os.Bundle p5 ) {
/* .locals 6 */
/* .param p0, "factory" # Landroid/support/v4/app/NotificationCompatBase$Action$Factory; */
/* .param p1, "remoteInputFactory" # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory; */
/* .param p2, "icon" # I */
/* .param p3, "title" # Ljava/lang/CharSequence; */
/* .param p4, "actionIntent" # Landroid/app/PendingIntent; */
/* .param p5, "extras" # Landroid/os/Bundle; */
/* .prologue */
/* .line 247 */
int v5 = 0; // const/4 v5, 0x0
/* .line 248 */
/* .local v5, "remoteInputs":[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput; */
if ( p5 != null) { // if-eqz p5, :cond_0
/* .line 249 */
final String v0 = "android.support.remoteInputs"; // const-string v0, "android.support.remoteInputs"
android.support.v4.app.BundleUtil .getBundleArrayFromBundle ( p5,v0 );
android.support.v4.app.RemoteInputCompatJellybean .fromBundleArray ( v0,p1 );
} // :cond_0
/* move-object v0, p0 */
/* move v1, p2 */
/* move-object v2, p3 */
/* move-object v3, p4 */
/* move-object v4, p5 */
/* .line 253 */
/* invoke-interface/range {v0 ..v5}, Landroid/support/v4/app/NotificationCompatBase$Action$Factory;->build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/support/v4/app/NotificationCompatBase$Action; */
} // .end method
public static android.os.Bundle writeActionAndGetExtras ( android.app.Notification$Builder p0, android.support.v4.app.NotificationCompatBase$Action p1 ) {
/* .locals 4 */
/* .param p0, "builder" # Landroid/app/Notification$Builder; */
/* .param p1, "action" # Landroid/support/v4/app/NotificationCompatBase$Action; */
/* .prologue */
/* .line 258 */
v1 = (( android.support.v4.app.NotificationCompatBase$Action ) p1 ).getIcon ( ); // invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I
(( android.support.v4.app.NotificationCompatBase$Action ) p1 ).getTitle ( ); // invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;
(( android.support.v4.app.NotificationCompatBase$Action ) p1 ).getActionIntent ( ); // invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;
(( android.app.Notification$Builder ) p0 ).addAction ( v1, v2, v3 ); // invoke-virtual {p0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
/* .line 259 */
/* new-instance v0, Landroid/os/Bundle; */
(( android.support.v4.app.NotificationCompatBase$Action ) p1 ).getExtras ( ); // invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;
/* invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V */
/* .line 260 */
/* .local v0, "actionExtras":Landroid/os/Bundle; */
(( android.support.v4.app.NotificationCompatBase$Action ) p1 ).getRemoteInputs ( ); // invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
if ( v1 != null) { // if-eqz v1, :cond_0
/* .line 261 */
final String v1 = "android.support.remoteInputs"; // const-string v1, "android.support.remoteInputs"
(( android.support.v4.app.NotificationCompatBase$Action ) p1 ).getRemoteInputs ( ); // invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
android.support.v4.app.RemoteInputCompatJellybean .toBundleArray ( v2 );
(( android.os.Bundle ) v0 ).putParcelableArray ( v1, v2 ); // invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
/* .line 264 */
} // :cond_0
} // .end method
