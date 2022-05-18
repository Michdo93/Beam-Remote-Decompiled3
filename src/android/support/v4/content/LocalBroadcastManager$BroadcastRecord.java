class android.support.v4.content.LocalBroadcastManager$BroadcastRecord {
	 /* .source "LocalBroadcastManager.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/content/LocalBroadcastManager; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0xa */
/* name = "BroadcastRecord" */
} // .end annotation
/* # instance fields */
final android.content.Intent intent;
final java.util.ArrayList receivers;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
/* # direct methods */
 android.support.v4.content.LocalBroadcastManager$BroadcastRecord ( ) {
/* .locals 0 */
/* .param p1, "_intent" # Landroid/content/Intent; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Landroid/content/Intent;", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;", */
/* ">;)V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 73 */
/* .local p2, "_receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;" */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 74 */
this.intent = p1;
/* .line 75 */
this.receivers = p2;
/* .line 76 */
return;
} // .end method
