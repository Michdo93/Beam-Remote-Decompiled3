class android.support.v4.content.LocalBroadcastManager$ReceiverRecord {
	 /* .source "LocalBroadcastManager.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/content/LocalBroadcastManager; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0xa */
/* name = "ReceiverRecord" */
} // .end annotation
/* # instance fields */
Boolean broadcasting;
final android.content.IntentFilter filter;
final android.content.BroadcastReceiver receiver;
/* # direct methods */
 android.support.v4.content.LocalBroadcastManager$ReceiverRecord ( ) {
/* .locals 0 */
/* .param p1, "_filter" # Landroid/content/IntentFilter; */
/* .param p2, "_receiver" # Landroid/content/BroadcastReceiver; */
/* .prologue */
/* .line 52 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 53 */
this.filter = p1;
/* .line 54 */
this.receiver = p2;
/* .line 55 */
return;
} // .end method
/* # virtual methods */
public java.lang.String toString ( ) {
/* .locals 2 */
/* .prologue */
/* .line 59 */
/* new-instance v0, Ljava/lang/StringBuilder; */
/* const/16 v1, 0x80 */
/* invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V */
/* .line 60 */
/* .local v0, "builder":Ljava/lang/StringBuilder; */
final String v1 = "Receiver{"; // const-string v1, "Receiver{"
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 61 */
v1 = this.receiver;
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
/* .line 62 */
final String v1 = " filter="; // const-string v1, " filter="
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 63 */
v1 = this.filter;
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
/* .line 64 */
final String v1 = "}"; // const-string v1, "}"
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 65 */
(( java.lang.StringBuilder ) v0 ).toString ( ); // invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
} // .end method
