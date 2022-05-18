class android.support.v4.app.NotificationManagerCompat$CancelTask implements android.support.v4.app.NotificationManagerCompat$Task {
	 /* .source "NotificationManagerCompat.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationManagerCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0xa */
/* name = "CancelTask" */
} // .end annotation
/* # instance fields */
final Boolean all;
final Integer id;
final java.lang.String packageName;
final java.lang.String tag;
/* # direct methods */
public android.support.v4.app.NotificationManagerCompat$CancelTask ( ) {
/* .locals 1 */
/* .param p1, "packageName" # Ljava/lang/String; */
/* .prologue */
/* .line 595 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 596 */
this.packageName = p1;
/* .line 597 */
int v0 = 0; // const/4 v0, 0x0
/* iput v0, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->id:I */
/* .line 598 */
int v0 = 0; // const/4 v0, 0x0
this.tag = v0;
/* .line 599 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->all:Z */
/* .line 600 */
return;
} // .end method
public android.support.v4.app.NotificationManagerCompat$CancelTask ( ) {
/* .locals 1 */
/* .param p1, "packageName" # Ljava/lang/String; */
/* .param p2, "id" # I */
/* .param p3, "tag" # Ljava/lang/String; */
/* .prologue */
/* .line 602 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 603 */
this.packageName = p1;
/* .line 604 */
/* iput p2, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->id:I */
/* .line 605 */
this.tag = p3;
/* .line 606 */
int v0 = 0; // const/4 v0, 0x0
/* iput-boolean v0, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->all:Z */
/* .line 607 */
return;
} // .end method
/* # virtual methods */
public void send ( android.support.v4.app.INotificationSideChannel p0 ) {
/* .locals 3 */
/* .param p1, "service" # Landroid/support/v4/app/INotificationSideChannel; */
/* .annotation system Ldalvik/annotation/Throws; */
/* value = { */
/* Landroid/os/RemoteException; */
/* } */
} // .end annotation
/* .prologue */
/* .line 611 */
/* iget-boolean v0, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->all:Z */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 612 */
v0 = this.packageName;
/* .line 616 */
} // :goto_0
return;
/* .line 614 */
} // :cond_0
v0 = this.packageName;
/* iget v1, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->id:I */
v2 = this.tag;
} // .end method
public java.lang.String toString ( ) {
/* .locals 3 */
/* .prologue */
/* .line 619 */
/* new-instance v0, Ljava/lang/StringBuilder; */
final String v1 = "CancelTask["; // const-string v1, "CancelTask["
/* invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V */
/* .line 620 */
/* .local v0, "sb":Ljava/lang/StringBuilder; */
final String v1 = "packageName:"; // const-string v1, "packageName:"
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
v2 = this.packageName;
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 621 */
final String v1 = ", id:"; // const-string v1, ", id:"
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* iget v2, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->id:I */
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
/* .line 622 */
final String v1 = ", tag:"; // const-string v1, ", tag:"
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
v2 = this.tag;
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 623 */
final String v1 = ", all:"; // const-string v1, ", all:"
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* iget-boolean v2, p0, Landroid/support/v4/app/NotificationManagerCompat$CancelTask;->all:Z */
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
/* .line 624 */
final String v1 = "]"; // const-string v1, "]"
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 625 */
(( java.lang.StringBuilder ) v0 ).toString ( ); // invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
} // .end method
