class android.support.v4.app.NotificationCompatKitKat {
	 /* .source "NotificationCompatKitKat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/NotificationCompatKitKat$Builder; */
	 /* } */
} // .end annotation
/* # direct methods */
 android.support.v4.app.NotificationCompatKitKat ( ) {
	 /* .locals 0 */
	 /* .prologue */
	 /* .line 30 */
	 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
	 /* .line 31 */
	 return;
} // .end method
public static android.support.v4.app.NotificationCompatBase$Action getAction ( android.app.Notification p0, Integer p1, android.support.v4.app.NotificationCompatBase$Action$Factory p2, android.support.v4.app.RemoteInputCompatBase$RemoteInput$Factory p3 ) {
	 /* .locals 8 */
	 /* .param p0, "notif" # Landroid/app/Notification; */
	 /* .param p1, "actionIndex" # I */
	 /* .param p2, "factory" # Landroid/support/v4/app/NotificationCompatBase$Action$Factory; */
	 /* .param p3, "remoteInputFactory" # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory; */
	 /* .prologue */
	 /* .line 129 */
	 v0 = this.actions;
	 /* aget-object v6, v0, p1 */
	 /* .line 130 */
	 /* .local v6, "action":Landroid/app/Notification$Action; */
	 int v5 = 0; // const/4 v5, 0x0
	 /* .line 131 */
	 /* .local v5, "actionExtras":Landroid/os/Bundle; */
	 v0 = this.extras;
	 final String v1 = "android.support.actionExtras"; // const-string v1, "android.support.actionExtras"
	 (( android.os.Bundle ) v0 ).getSparseParcelableArray ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
	 /* .line 133 */
	 /* .local v7, "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;" */
	 if ( v7 != null) { // if-eqz v7, :cond_0
		 /* .line 134 */
		 (( android.util.SparseArray ) v7 ).get ( p1 ); // invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
	 } // .end local v5 # "actionExtras":Landroid/os/Bundle;
	 /* check-cast v5, Landroid/os/Bundle; */
	 /* .line 136 */
	 /* .restart local v5 # "actionExtras":Landroid/os/Bundle; */
} // :cond_0
/* iget v2, v6, Landroid/app/Notification$Action;->icon:I */
v3 = this.title;
v4 = this.actionIntent;
/* move-object v0, p2 */
/* move-object v1, p3 */
/* invoke-static/range {v0 ..v5}, Landroid/support/v4/app/NotificationCompatJellybean;->readAction(Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompatBase$Action; */
} // .end method
public static Integer getActionCount ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .prologue */
/* .line 123 */
v0 = this.actions;
if ( v0 != null) { // if-eqz v0, :cond_0
	 v0 = this.actions;
	 /* array-length v0, v0 */
} // :goto_0
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
} // .end method
public static android.os.Bundle getExtras ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .prologue */
/* .line 119 */
v0 = this.extras;
} // .end method
public static java.lang.String getGroup ( android.app.Notification p0 ) {
/* .locals 2 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .prologue */
/* .line 145 */
v0 = this.extras;
final String v1 = "android.support.groupKey"; // const-string v1, "android.support.groupKey"
(( android.os.Bundle ) v0 ).getString ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
} // .end method
public static Boolean getLocalOnly ( android.app.Notification p0 ) {
/* .locals 2 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .prologue */
/* .line 141 */
v0 = this.extras;
final String v1 = "android.support.localOnly"; // const-string v1, "android.support.localOnly"
v0 = (( android.os.Bundle ) v0 ).getBoolean ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
} // .end method
public static java.lang.String getSortKey ( android.app.Notification p0 ) {
/* .locals 2 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .prologue */
/* .line 153 */
v0 = this.extras;
final String v1 = "android.support.sortKey"; // const-string v1, "android.support.sortKey"
(( android.os.Bundle ) v0 ).getString ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
} // .end method
public static Boolean isGroupSummary ( android.app.Notification p0 ) {
/* .locals 2 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .prologue */
/* .line 149 */
v0 = this.extras;
final String v1 = "android.support.isGroupSummary"; // const-string v1, "android.support.isGroupSummary"
v0 = (( android.os.Bundle ) v0 ).getBoolean ( v1 ); // invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
} // .end method
