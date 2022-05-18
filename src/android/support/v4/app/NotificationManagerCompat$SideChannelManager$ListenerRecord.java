class android.support.v4.app.NotificationManagerCompat$SideChannelManager$ListenerRecord {
	 /* .source "NotificationManagerCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0xa */
/* name = "ListenerRecord" */
} // .end annotation
/* # instance fields */
public Boolean bound;
public final android.content.ComponentName componentName;
public Integer retryCount;
public android.support.v4.app.INotificationSideChannel service;
public java.util.LinkedList taskQueue;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/LinkedList", */
/* "<", */
/* "Landroid/support/v4/app/NotificationManagerCompat$Task;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
/* # direct methods */
public android.support.v4.app.NotificationManagerCompat$SideChannelManager$ListenerRecord ( ) {
/* .locals 2 */
/* .param p1, "componentName" # Landroid/content/ComponentName; */
/* .prologue */
int v1 = 0; // const/4 v1, 0x0
/* .line 540 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 532 */
/* iput-boolean v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z */
/* .line 536 */
/* new-instance v0, Ljava/util/LinkedList; */
/* invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V */
this.taskQueue = v0;
/* .line 538 */
/* iput v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I */
/* .line 541 */
this.componentName = p1;
/* .line 542 */
return;
} // .end method
