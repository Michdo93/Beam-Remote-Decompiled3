public class android.support.v4.content.LocalBroadcastManager {
	 /* .source "LocalBroadcastManager.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;, */
	 /* Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord; */
	 /* } */
} // .end annotation
/* # static fields */
private static final Boolean DEBUG;
static final Integer MSG_EXEC_PENDING_BROADCASTS;
private static final java.lang.String TAG;
private static android.support.v4.content.LocalBroadcastManager mInstance;
private static final java.lang.Object mLock;
/* # instance fields */
private final java.util.HashMap mActions;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/HashMap", */
/* "<", */
/* "Ljava/lang/String;", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;", */
/* ">;>;" */
/* } */
} // .end annotation
} // .end field
private final android.content.Context mAppContext;
private final android.os.Handler mHandler;
private final java.util.ArrayList mPendingBroadcasts;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final java.util.HashMap mReceivers;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/HashMap", */
/* "<", */
/* "Landroid/content/BroadcastReceiver;", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/content/IntentFilter;", */
/* ">;>;" */
/* } */
} // .end annotation
} // .end field
/* # direct methods */
static android.support.v4.content.LocalBroadcastManager ( ) {
/* .locals 1 */
/* .prologue */
/* .line 96 */
/* new-instance v0, Ljava/lang/Object; */
/* invoke-direct {v0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
private android.support.v4.content.LocalBroadcastManager ( ) {
/* .locals 2 */
/* .param p1, "context" # Landroid/content/Context; */
/* .prologue */
/* .line 108 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 84 */
/* new-instance v0, Ljava/util/HashMap; */
/* invoke-direct {v0}, Ljava/util/HashMap;-><init>()V */
this.mReceivers = v0;
/* .line 86 */
/* new-instance v0, Ljava/util/HashMap; */
/* invoke-direct {v0}, Ljava/util/HashMap;-><init>()V */
this.mActions = v0;
/* .line 89 */
/* new-instance v0, Ljava/util/ArrayList; */
/* invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V */
this.mPendingBroadcasts = v0;
/* .line 109 */
this.mAppContext = p1;
/* .line 110 */
/* new-instance v0, Landroid/support/v4/content/LocalBroadcastManager$1; */
(( android.content.Context ) p1 ).getMainLooper ( ); // invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
/* invoke-direct {v0, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager$1;-><init>(Landroid/support/v4/content/LocalBroadcastManager;Landroid/os/Looper;)V */
this.mHandler = v0;
/* .line 123 */
return;
} // .end method
static void access$000 ( android.support.v4.content.LocalBroadcastManager p0 ) { //synthethic
/* .locals 0 */
/* .param p0, "x0" # Landroid/support/v4/content/LocalBroadcastManager; */
/* .prologue */
/* .line 46 */
/* invoke-direct {p0}, Landroid/support/v4/content/LocalBroadcastManager;->executePendingBroadcasts()V */
return;
} // .end method
private void executePendingBroadcasts ( ) {
/* .locals 8 */
/* .prologue */
/* .line 284 */
} // :cond_0
int v2 = 0; // const/4 v2, 0x0
/* .line 285 */
/* .local v2, "brs":[Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord; */
v6 = this.mReceivers;
/* monitor-enter v6 */
/* .line 286 */
try { // :try_start_0
v5 = this.mPendingBroadcasts;
v0 = (( java.util.ArrayList ) v5 ).size ( ); // invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
/* .line 287 */
/* .local v0, "N":I */
/* if-gtz v0, :cond_1 */
/* .line 288 */
/* monitor-exit v6 */
return;
/* .line 290 */
} // :cond_1
/* new-array v2, v0, [Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord; */
/* .line 291 */
v5 = this.mPendingBroadcasts;
(( java.util.ArrayList ) v5 ).toArray ( v2 ); // invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
/* .line 292 */
v5 = this.mPendingBroadcasts;
(( java.util.ArrayList ) v5 ).clear ( ); // invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
/* .line 293 */
/* monitor-exit v6 */
/* :try_end_0 */
/* .catchall {:try_start_0 ..:try_end_0} :catchall_0 */
/* .line 294 */
int v3 = 0; // const/4 v3, 0x0
/* .local v3, "i":I */
} // :goto_0
/* array-length v5, v2 */
/* if-ge v3, v5, :cond_0 */
/* .line 295 */
/* aget-object v1, v2, v3 */
/* .line 296 */
/* .local v1, "br":Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord; */
int v4 = 0; // const/4 v4, 0x0
/* .local v4, "j":I */
} // :goto_1
v5 = this.receivers;
v5 = (( java.util.ArrayList ) v5 ).size ( ); // invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
/* if-ge v4, v5, :cond_2 */
/* .line 297 */
v5 = this.receivers;
(( java.util.ArrayList ) v5 ).get ( v4 ); // invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v5, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord; */
v5 = this.receiver;
v6 = this.mAppContext;
v7 = this.intent;
(( android.content.BroadcastReceiver ) v5 ).onReceive ( v6, v7 ); // invoke-virtual {v5, v6, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
/* .line 296 */
/* add-int/lit8 v4, v4, 0x1 */
/* .line 293 */
} // .end local v0 # "N":I
} // .end local v1 # "br":Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
} // .end local v3 # "i":I
} // .end local v4 # "j":I
/* :catchall_0 */
/* move-exception v5 */
try { // :try_start_1
/* monitor-exit v6 */
/* :try_end_1 */
/* .catchall {:try_start_1 ..:try_end_1} :catchall_0 */
/* throw v5 */
/* .line 294 */
/* .restart local v0 # "N":I */
/* .restart local v1 # "br":Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord; */
/* .restart local v3 # "i":I */
/* .restart local v4 # "j":I */
} // :cond_2
/* add-int/lit8 v3, v3, 0x1 */
} // .end method
public static android.support.v4.content.LocalBroadcastManager getInstance ( android.content.Context p0 ) {
/* .locals 3 */
/* .param p0, "context" # Landroid/content/Context; */
/* .prologue */
/* .line 100 */
v1 = android.support.v4.content.LocalBroadcastManager.mLock;
/* monitor-enter v1 */
/* .line 101 */
try { // :try_start_0
v0 = android.support.v4.content.LocalBroadcastManager.mInstance;
/* if-nez v0, :cond_0 */
/* .line 102 */
/* new-instance v0, Landroid/support/v4/content/LocalBroadcastManager; */
(( android.content.Context ) p0 ).getApplicationContext ( ); // invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
/* invoke-direct {v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;-><init>(Landroid/content/Context;)V */
/* .line 104 */
} // :cond_0
v0 = android.support.v4.content.LocalBroadcastManager.mInstance;
/* monitor-exit v1 */
/* .line 105 */
/* :catchall_0 */
/* move-exception v0 */
/* monitor-exit v1 */
/* :try_end_0 */
/* .catchall {:try_start_0 ..:try_end_0} :catchall_0 */
/* throw v0 */
} // .end method
/* # virtual methods */
public void registerReceiver ( android.content.BroadcastReceiver p0, android.content.IntentFilter p1 ) {
/* .locals 7 */
/* .param p1, "receiver" # Landroid/content/BroadcastReceiver; */
/* .param p2, "filter" # Landroid/content/IntentFilter; */
/* .prologue */
/* .line 134 */
v6 = this.mReceivers;
/* monitor-enter v6 */
/* .line 135 */
try { // :try_start_0
/* new-instance v2, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord; */
/* invoke-direct {v2, p2, p1}, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V */
/* .line 136 */
/* .local v2, "entry":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord; */
v5 = this.mReceivers;
(( java.util.HashMap ) v5 ).get ( p1 ); // invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
/* check-cast v3, Ljava/util/ArrayList; */
/* .line 137 */
/* .local v3, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;" */
/* if-nez v3, :cond_0 */
/* .line 138 */
/* new-instance v3, Ljava/util/ArrayList; */
} // .end local v3 # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
int v5 = 1; // const/4 v5, 0x1
/* invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V */
/* .line 139 */
/* .restart local v3 # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;" */
v5 = this.mReceivers;
(( java.util.HashMap ) v5 ).put ( p1, v3 ); // invoke-virtual {v5, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
/* .line 141 */
} // :cond_0
(( java.util.ArrayList ) v3 ).add ( p2 ); // invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
/* .line 142 */
int v4 = 0; // const/4 v4, 0x0
/* .local v4, "i":I */
} // :goto_0
v5 = (( android.content.IntentFilter ) p2 ).countActions ( ); // invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I
/* if-ge v4, v5, :cond_2 */
/* .line 143 */
(( android.content.IntentFilter ) p2 ).getAction ( v4 ); // invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;
/* .line 144 */
/* .local v0, "action":Ljava/lang/String; */
v5 = this.mActions;
(( java.util.HashMap ) v5 ).get ( v0 ); // invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
/* check-cast v1, Ljava/util/ArrayList; */
/* .line 145 */
/* .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;" */
/* if-nez v1, :cond_1 */
/* .line 146 */
/* new-instance v1, Ljava/util/ArrayList; */
} // .end local v1 # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
int v5 = 1; // const/4 v5, 0x1
/* invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V */
/* .line 147 */
/* .restart local v1 # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;" */
v5 = this.mActions;
(( java.util.HashMap ) v5 ).put ( v0, v1 ); // invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
/* .line 149 */
} // :cond_1
(( java.util.ArrayList ) v1 ).add ( v2 ); // invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
/* .line 142 */
/* add-int/lit8 v4, v4, 0x1 */
/* .line 151 */
} // .end local v0 # "action":Ljava/lang/String;
} // .end local v1 # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
} // :cond_2
/* monitor-exit v6 */
/* .line 152 */
return;
/* .line 151 */
} // .end local v2 # "entry":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
} // .end local v3 # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
} // .end local v4 # "i":I
/* :catchall_0 */
/* move-exception v5 */
/* monitor-exit v6 */
/* :try_end_0 */
/* .catchall {:try_start_0 ..:try_end_0} :catchall_0 */
/* throw v5 */
} // .end method
public Boolean sendBroadcast ( android.content.Intent p0 ) {
/* .locals 17 */
/* .param p1, "intent" # Landroid/content/Intent; */
/* .prologue */
/* .line 201 */
/* move-object/from16 v0, p0 */
v15 = this.mReceivers;
/* monitor-enter v15 */
/* .line 202 */
try { // :try_start_0
/* invoke-virtual/range {p1 ..p1}, Landroid/content/Intent;->getAction()Ljava/lang/String; */
/* .line 203 */
/* .local v2, "action":Ljava/lang/String; */
/* move-object/from16 v0, p0 */
v1 = this.mAppContext;
(( android.content.Context ) v1 ).getContentResolver ( ); // invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
/* move-object/from16 v0, p1 */
(( android.content.Intent ) v0 ).resolveTypeIfNeeded ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;
/* .line 205 */
/* .local v3, "type":Ljava/lang/String; */
/* invoke-virtual/range {p1 ..p1}, Landroid/content/Intent;->getData()Landroid/net/Uri; */
/* .line 206 */
/* .local v5, "data":Landroid/net/Uri; */
/* invoke-virtual/range {p1 ..p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String; */
/* .line 207 */
/* .local v4, "scheme":Ljava/lang/String; */
/* invoke-virtual/range {p1 ..p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set; */
/* .line 209 */
/* .local v6, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;" */
v1 = /* invoke-virtual/range {p1 ..p1}, Landroid/content/Intent;->getFlags()I */
/* and-int/lit8 v1, v1, 0x8 */
if ( v1 != null) { // if-eqz v1, :cond_4
int v8 = 1; // const/4 v8, 0x1
/* .line 211 */
/* .local v8, "debug":Z */
} // :goto_0
if ( v8 != null) { // if-eqz v8, :cond_0
final String v1 = "LocalBroadcastManager"; // const-string v1, "LocalBroadcastManager"
/* new-instance v7, Ljava/lang/StringBuilder; */
/* invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V */
final String v16 = "Resolving type "; // const-string v16, "Resolving type "
/* move-object/from16 v0, v16 */
(( java.lang.StringBuilder ) v7 ).append ( v0 ); // invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v7 ).append ( v3 ); // invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v16 = " scheme "; // const-string v16, " scheme "
/* move-object/from16 v0, v16 */
(( java.lang.StringBuilder ) v7 ).append ( v0 ); // invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v7 ).append ( v4 ); // invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
final String v16 = " of intent "; // const-string v16, " of intent "
/* move-object/from16 v0, v16 */
(( java.lang.StringBuilder ) v7 ).append ( v0 ); // invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* move-object/from16 v0, p1 */
(( java.lang.StringBuilder ) v7 ).append ( v0 ); // invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v7 ).toString ( ); // invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .v ( v1,v7 );
/* .line 215 */
} // :cond_0
/* move-object/from16 v0, p0 */
v1 = this.mActions;
/* invoke-virtual/range {p1 ..p1}, Landroid/content/Intent;->getAction()Ljava/lang/String; */
(( java.util.HashMap ) v1 ).get ( v7 ); // invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
/* check-cast v9, Ljava/util/ArrayList; */
/* .line 216 */
/* .local v9, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;" */
if ( v9 != null) { // if-eqz v9, :cond_c
/* .line 217 */
if ( v8 != null) { // if-eqz v8, :cond_1
final String v1 = "LocalBroadcastManager"; // const-string v1, "LocalBroadcastManager"
/* new-instance v7, Ljava/lang/StringBuilder; */
/* invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V */
final String v16 = "Action list: "; // const-string v16, "Action list: "
/* move-object/from16 v0, v16 */
(( java.lang.StringBuilder ) v7 ).append ( v0 ); // invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v7 ).append ( v9 ); // invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v7 ).toString ( ); // invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .v ( v1,v7 );
/* .line 219 */
} // :cond_1
int v14 = 0; // const/4 v14, 0x0
/* .line 220 */
/* .local v14, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;" */
int v10 = 0; // const/4 v10, 0x0
/* .local v10, "i":I */
} // :goto_1
v1 = (( java.util.ArrayList ) v9 ).size ( ); // invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
/* if-ge v10, v1, :cond_9 */
/* .line 221 */
(( java.util.ArrayList ) v9 ).get ( v10 ); // invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v13, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord; */
/* .line 222 */
/* .local v13, "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord; */
if ( v8 != null) { // if-eqz v8, :cond_2
final String v1 = "LocalBroadcastManager"; // const-string v1, "LocalBroadcastManager"
/* new-instance v7, Ljava/lang/StringBuilder; */
/* invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V */
final String v16 = "Matching against filter "; // const-string v16, "Matching against filter "
/* move-object/from16 v0, v16 */
(( java.lang.StringBuilder ) v7 ).append ( v0 ); // invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
v0 = this.filter;
/* move-object/from16 v16, v0 */
/* move-object/from16 v0, v16 */
(( java.lang.StringBuilder ) v7 ).append ( v0 ); // invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v7 ).toString ( ); // invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .v ( v1,v7 );
/* .line 224 */
} // :cond_2
/* iget-boolean v1, v13, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z */
if ( v1 != null) { // if-eqz v1, :cond_5
/* .line 225 */
if ( v8 != null) { // if-eqz v8, :cond_3
/* .line 226 */
final String v1 = "LocalBroadcastManager"; // const-string v1, "LocalBroadcastManager"
final String v7 = " Filter\'s target already added"; // const-string v7, " Filter\'s target already added"
android.util.Log .v ( v1,v7 );
/* .line 220 */
} // :cond_3
} // :goto_2
/* add-int/lit8 v10, v10, 0x1 */
/* .line 209 */
} // .end local v8 # "debug":Z
} // .end local v9 # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
} // .end local v10 # "i":I
} // .end local v13 # "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
} // .end local v14 # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
} // :cond_4
int v8 = 0; // const/4 v8, 0x0
/* goto/16 :goto_0 */
/* .line 231 */
/* .restart local v8 # "debug":Z */
/* .restart local v9 # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;" */
/* .restart local v10 # "i":I */
/* .restart local v13 # "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord; */
/* .restart local v14 # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;" */
} // :cond_5
v1 = this.filter;
final String v7 = "LocalBroadcastManager"; // const-string v7, "LocalBroadcastManager"
v11 = /* invoke-virtual/range {v1 ..v7}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I */
/* .line 233 */
/* .local v11, "match":I */
/* if-ltz v11, :cond_8 */
/* .line 234 */
if ( v8 != null) { // if-eqz v8, :cond_6
final String v1 = "LocalBroadcastManager"; // const-string v1, "LocalBroadcastManager"
/* new-instance v7, Ljava/lang/StringBuilder; */
/* invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V */
final String v16 = " Filter matched! match=0x"; // const-string v16, " Filter matched! match=0x"
/* move-object/from16 v0, v16 */
(( java.lang.StringBuilder ) v7 ).append ( v0 ); // invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
java.lang.Integer .toHexString ( v11 );
/* move-object/from16 v0, v16 */
(( java.lang.StringBuilder ) v7 ).append ( v0 ); // invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v7 ).toString ( ); // invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .v ( v1,v7 );
/* .line 236 */
} // :cond_6
/* if-nez v14, :cond_7 */
/* .line 237 */
/* new-instance v14, Ljava/util/ArrayList; */
} // .end local v14 # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
/* invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V */
/* .line 239 */
/* .restart local v14 # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;" */
} // :cond_7
(( java.util.ArrayList ) v14 ).add ( v13 ); // invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
/* .line 240 */
int v1 = 1; // const/4 v1, 0x1
/* iput-boolean v1, v13, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z */
/* .line 267 */
} // .end local v2 # "action":Ljava/lang/String;
} // .end local v3 # "type":Ljava/lang/String;
} // .end local v4 # "scheme":Ljava/lang/String;
} // .end local v5 # "data":Landroid/net/Uri;
} // .end local v6 # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
} // .end local v8 # "debug":Z
} // .end local v9 # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
} // .end local v10 # "i":I
} // .end local v11 # "match":I
} // .end local v13 # "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
} // .end local v14 # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
/* :catchall_0 */
/* move-exception v1 */
/* monitor-exit v15 */
/* :try_end_0 */
/* .catchall {:try_start_0 ..:try_end_0} :catchall_0 */
/* throw v1 */
/* .line 242 */
/* .restart local v2 # "action":Ljava/lang/String; */
/* .restart local v3 # "type":Ljava/lang/String; */
/* .restart local v4 # "scheme":Ljava/lang/String; */
/* .restart local v5 # "data":Landroid/net/Uri; */
/* .restart local v6 # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;" */
/* .restart local v8 # "debug":Z */
/* .restart local v9 # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;" */
/* .restart local v10 # "i":I */
/* .restart local v11 # "match":I */
/* .restart local v13 # "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord; */
/* .restart local v14 # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;" */
} // :cond_8
if ( v8 != null) { // if-eqz v8, :cond_3
/* .line 244 */
/* packed-switch v11, :pswitch_data_0 */
/* .line 249 */
try { // :try_start_1
final String v12 = "unknown reason"; // const-string v12, "unknown reason"
/* .line 251 */
/* .local v12, "reason":Ljava/lang/String; */
} // :goto_3
final String v1 = "LocalBroadcastManager"; // const-string v1, "LocalBroadcastManager"
/* new-instance v7, Ljava/lang/StringBuilder; */
/* invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V */
final String v16 = " Filter did not match: "; // const-string v16, " Filter did not match: "
/* move-object/from16 v0, v16 */
(( java.lang.StringBuilder ) v7 ).append ( v0 ); // invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v7 ).append ( v12 ); // invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v7 ).toString ( ); // invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
android.util.Log .v ( v1,v7 );
/* .line 245 */
} // .end local v12 # "reason":Ljava/lang/String;
/* :pswitch_0 */
final String v12 = "action"; // const-string v12, "action"
/* .restart local v12 # "reason":Ljava/lang/String; */
/* .line 246 */
} // .end local v12 # "reason":Ljava/lang/String;
/* :pswitch_1 */
final String v12 = "category"; // const-string v12, "category"
/* .restart local v12 # "reason":Ljava/lang/String; */
/* .line 247 */
} // .end local v12 # "reason":Ljava/lang/String;
/* :pswitch_2 */
final String v12 = "data"; // const-string v12, "data"
/* .restart local v12 # "reason":Ljava/lang/String; */
/* .line 248 */
} // .end local v12 # "reason":Ljava/lang/String;
/* :pswitch_3 */
final String v12 = "type"; // const-string v12, "type"
/* .restart local v12 # "reason":Ljava/lang/String; */
/* .line 256 */
} // .end local v11 # "match":I
} // .end local v12 # "reason":Ljava/lang/String;
} // .end local v13 # "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
} // :cond_9
if ( v14 != null) { // if-eqz v14, :cond_c
/* .line 257 */
int v10 = 0; // const/4 v10, 0x0
} // :goto_4
v1 = (( java.util.ArrayList ) v14 ).size ( ); // invoke-virtual {v14}, Ljava/util/ArrayList;->size()I
/* if-ge v10, v1, :cond_a */
/* .line 258 */
(( java.util.ArrayList ) v14 ).get ( v10 ); // invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v1, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord; */
int v7 = 0; // const/4 v7, 0x0
/* iput-boolean v7, v1, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z */
/* .line 257 */
/* add-int/lit8 v10, v10, 0x1 */
/* .line 260 */
} // :cond_a
/* move-object/from16 v0, p0 */
v1 = this.mPendingBroadcasts;
/* new-instance v7, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord; */
/* move-object/from16 v0, p1 */
/* invoke-direct {v7, v0, v14}, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V */
(( java.util.ArrayList ) v1 ).add ( v7 ); // invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
/* .line 261 */
/* move-object/from16 v0, p0 */
v1 = this.mHandler;
int v7 = 1; // const/4 v7, 0x1
v1 = (( android.os.Handler ) v1 ).hasMessages ( v7 ); // invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z
/* if-nez v1, :cond_b */
/* .line 262 */
/* move-object/from16 v0, p0 */
v1 = this.mHandler;
int v7 = 1; // const/4 v7, 0x1
(( android.os.Handler ) v1 ).sendEmptyMessage ( v7 ); // invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
/* .line 264 */
} // :cond_b
int v1 = 1; // const/4 v1, 0x1
/* monitor-exit v15 */
/* .line 268 */
} // .end local v10 # "i":I
} // .end local v14 # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
} // :goto_5
/* .line 267 */
} // :cond_c
/* monitor-exit v15 */
/* :try_end_1 */
/* .catchall {:try_start_1 ..:try_end_1} :catchall_0 */
/* .line 268 */
int v1 = 0; // const/4 v1, 0x0
/* .line 244 */
/* :pswitch_data_0 */
/* .packed-switch -0x4 */
/* :pswitch_1 */
/* :pswitch_0 */
/* :pswitch_2 */
/* :pswitch_3 */
} // .end packed-switch
} // .end method
public void sendBroadcastSync ( android.content.Intent p0 ) {
/* .locals 1 */
/* .param p1, "intent" # Landroid/content/Intent; */
/* .prologue */
/* .line 277 */
v0 = (( android.support.v4.content.LocalBroadcastManager ) p0 ).sendBroadcast ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 278 */
/* invoke-direct {p0}, Landroid/support/v4/content/LocalBroadcastManager;->executePendingBroadcasts()V */
/* .line 280 */
} // :cond_0
return;
} // .end method
public void unregisterReceiver ( android.content.BroadcastReceiver p0 ) {
/* .locals 9 */
/* .param p1, "receiver" # Landroid/content/BroadcastReceiver; */
/* .prologue */
/* .line 164 */
v8 = this.mReceivers;
/* monitor-enter v8 */
/* .line 165 */
try { // :try_start_0
v7 = this.mReceivers;
(( java.util.HashMap ) v7 ).remove ( p1 ); // invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
/* check-cast v2, Ljava/util/ArrayList; */
/* .line 166 */
/* .local v2, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;" */
/* if-nez v2, :cond_0 */
/* .line 167 */
/* monitor-exit v8 */
/* .line 188 */
} // :goto_0
return;
/* .line 169 */
} // :cond_0
int v3 = 0; // const/4 v3, 0x0
/* .local v3, "i":I */
} // :goto_1
v7 = (( java.util.ArrayList ) v2 ).size ( ); // invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
/* if-ge v3, v7, :cond_5 */
/* .line 170 */
(( java.util.ArrayList ) v2 ).get ( v3 ); // invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v1, Landroid/content/IntentFilter; */
/* .line 171 */
/* .local v1, "filter":Landroid/content/IntentFilter; */
int v4 = 0; // const/4 v4, 0x0
/* .local v4, "j":I */
} // :goto_2
v7 = (( android.content.IntentFilter ) v1 ).countActions ( ); // invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I
/* if-ge v4, v7, :cond_4 */
/* .line 172 */
(( android.content.IntentFilter ) v1 ).getAction ( v4 ); // invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;
/* .line 173 */
/* .local v0, "action":Ljava/lang/String; */
v7 = this.mActions;
(( java.util.HashMap ) v7 ).get ( v0 ); // invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
/* check-cast v6, Ljava/util/ArrayList; */
/* .line 174 */
/* .local v6, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;" */
if ( v6 != null) { // if-eqz v6, :cond_3
/* .line 175 */
int v5 = 0; // const/4 v5, 0x0
/* .local v5, "k":I */
} // :goto_3
v7 = (( java.util.ArrayList ) v6 ).size ( ); // invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
/* if-ge v5, v7, :cond_2 */
/* .line 176 */
(( java.util.ArrayList ) v6 ).get ( v5 ); // invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v7, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord; */
v7 = this.receiver;
/* if-ne v7, p1, :cond_1 */
/* .line 177 */
(( java.util.ArrayList ) v6 ).remove ( v5 ); // invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
/* .line 178 */
/* add-int/lit8 v5, v5, -0x1 */
/* .line 175 */
} // :cond_1
/* add-int/lit8 v5, v5, 0x1 */
/* .line 181 */
} // :cond_2
v7 = (( java.util.ArrayList ) v6 ).size ( ); // invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
/* if-gtz v7, :cond_3 */
/* .line 182 */
v7 = this.mActions;
(( java.util.HashMap ) v7 ).remove ( v0 ); // invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
/* .line 171 */
} // .end local v5 # "k":I
} // :cond_3
/* add-int/lit8 v4, v4, 0x1 */
/* .line 169 */
} // .end local v0 # "action":Ljava/lang/String;
} // .end local v6 # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
} // :cond_4
/* add-int/lit8 v3, v3, 0x1 */
/* .line 187 */
} // .end local v1 # "filter":Landroid/content/IntentFilter;
} // .end local v4 # "j":I
} // :cond_5
/* monitor-exit v8 */
} // .end local v2 # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
} // .end local v3 # "i":I
/* :catchall_0 */
/* move-exception v7 */
/* monitor-exit v8 */
/* :try_end_0 */
/* .catchall {:try_start_0 ..:try_end_0} :catchall_0 */
/* throw v7 */
} // .end method
