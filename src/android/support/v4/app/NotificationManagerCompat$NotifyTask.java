class android.support.v4.app.NotificationManagerCompat$NotifyTask implements android.support.v4.app.NotificationManagerCompat$Task {
	 /* .source "NotificationManagerCompat.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationManagerCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0xa */
/* name = "NotifyTask" */
} // .end annotation
/* # instance fields */
final Integer id;
final android.app.Notification notif;
final java.lang.String packageName;
final java.lang.String tag;
/* # direct methods */
public android.support.v4.app.NotificationManagerCompat$NotifyTask ( ) {
/* .locals 0 */
/* .param p1, "packageName" # Ljava/lang/String; */
/* .param p2, "id" # I */
/* .param p3, "tag" # Ljava/lang/String; */
/* .param p4, "notif" # Landroid/app/Notification; */
/* .prologue */
/* .line 567 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 568 */
this.packageName = p1;
/* .line 569 */
/* iput p2, p0, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;->id:I */
/* .line 570 */
this.tag = p3;
/* .line 571 */
this.notif = p4;
/* .line 572 */
return;
} // .end method
/* # virtual methods */
public void send ( android.support.v4.app.INotificationSideChannel p0 ) {
/* .locals 4 */
/* .param p1, "service" # Landroid/support/v4/app/INotificationSideChannel; */
/* .annotation system Ldalvik/annotation/Throws; */
/* value = { */
/* Landroid/os/RemoteException; */
/* } */
} // .end annotation
/* .prologue */
/* .line 576 */
v0 = this.packageName;
/* iget v1, p0, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;->id:I */
v2 = this.tag;
v3 = this.notif;
/* .line 577 */
return;
} // .end method
public java.lang.String toString ( ) {
/* .locals 3 */
/* .prologue */
/* .line 580 */
/* new-instance v0, Ljava/lang/StringBuilder; */
final String v1 = "NotifyTask["; // const-string v1, "NotifyTask["
/* invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V */
/* .line 581 */
/* .local v0, "sb":Ljava/lang/StringBuilder; */
final String v1 = "packageName:"; // const-string v1, "packageName:"
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
v2 = this.packageName;
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 582 */
final String v1 = ", id:"; // const-string v1, ", id:"
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* iget v2, p0, Landroid/support/v4/app/NotificationManagerCompat$NotifyTask;->id:I */
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
/* .line 583 */
final String v1 = ", tag:"; // const-string v1, ", tag:"
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
v2 = this.tag;
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 584 */
final String v1 = "]"; // const-string v1, "]"
(( java.lang.StringBuilder ) v0 ).append ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 585 */
(( java.lang.StringBuilder ) v0 ).toString ( ); // invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
} // .end method
