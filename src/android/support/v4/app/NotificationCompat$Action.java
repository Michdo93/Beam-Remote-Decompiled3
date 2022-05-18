public class android.support.v4.app.NotificationCompat$Action extends android.support.v4.app.NotificationCompatBase$Action {
	 /* .source "NotificationCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x9 */
/* name = "Action" */
} // .end annotation
/* .annotation system Ldalvik/annotation/MemberClasses; */
/* value = { */
/* Landroid/support/v4/app/NotificationCompat$Action$WearableExtender;, */
/* Landroid/support/v4/app/NotificationCompat$Action$Extender;, */
/* Landroid/support/v4/app/NotificationCompat$Action$Builder; */
/* } */
} // .end annotation
/* # static fields */
public static final android.support.v4.app.NotificationCompatBase$Action$Factory FACTORY;
/* # instance fields */
public android.app.PendingIntent actionIntent;
public Integer icon;
private final android.os.Bundle mExtras;
private final android.support.v4.app.RemoteInput mRemoteInputs;
public java.lang.CharSequence title;
/* # direct methods */
static android.support.v4.app.NotificationCompat$Action ( ) {
/* .locals 1 */
/* .prologue */
/* .line 2135 */
/* new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$1; */
/* invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$Action$1;-><init>()V */
return;
} // .end method
public android.support.v4.app.NotificationCompat$Action ( ) {
/* .locals 6 */
/* .param p1, "icon" # I */
/* .param p2, "title" # Ljava/lang/CharSequence; */
/* .param p3, "intent" # Landroid/app/PendingIntent; */
/* .prologue */
/* .line 1791 */
/* new-instance v4, Landroid/os/Bundle; */
/* invoke-direct {v4}, Landroid/os/Bundle;-><init>()V */
int v5 = 0; // const/4 v5, 0x0
/* move-object v0, p0 */
/* move v1, p1 */
/* move-object v2, p2 */
/* move-object v3, p3 */
/* invoke-direct/range {v0 ..v5}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;)V */
/* .line 1792 */
return;
} // .end method
private android.support.v4.app.NotificationCompat$Action ( ) {
/* .locals 1 */
/* .param p1, "icon" # I */
/* .param p2, "title" # Ljava/lang/CharSequence; */
/* .param p3, "intent" # Landroid/app/PendingIntent; */
/* .param p4, "extras" # Landroid/os/Bundle; */
/* .param p5, "remoteInputs" # [Landroid/support/v4/app/RemoteInput; */
/* .prologue */
/* .line 1795 */
/* invoke-direct {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;-><init>()V */
/* .line 1796 */
/* iput p1, p0, Landroid/support/v4/app/NotificationCompat$Action;->icon:I */
/* .line 1797 */
android.support.v4.app.NotificationCompat$Builder .limitCharSequenceLength ( p2 );
this.title = v0;
/* .line 1798 */
this.actionIntent = p3;
/* .line 1799 */
if ( p4 != null) { // if-eqz p4, :cond_0
} // .end local p4 # "extras":Landroid/os/Bundle;
} // :goto_0
this.mExtras = p4;
/* .line 1800 */
this.mRemoteInputs = p5;
/* .line 1801 */
return;
/* .line 1799 */
/* .restart local p4 # "extras":Landroid/os/Bundle; */
} // :cond_0
/* new-instance p4, Landroid/os/Bundle; */
} // .end local p4 # "extras":Landroid/os/Bundle;
/* invoke-direct {p4}, Landroid/os/Bundle;-><init>()V */
} // .end method
 android.support.v4.app.NotificationCompat$Action ( ) { //synthethic
/* .locals 0 */
/* .param p1, "x0" # I */
/* .param p2, "x1" # Ljava/lang/CharSequence; */
/* .param p3, "x2" # Landroid/app/PendingIntent; */
/* .param p4, "x3" # Landroid/os/Bundle; */
/* .param p5, "x4" # [Landroid/support/v4/app/RemoteInput; */
/* .param p6, "x5" # Landroid/support/v4/app/NotificationCompat$1; */
/* .prologue */
/* .line 1772 */
/* invoke-direct/range {p0 ..p5}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;)V */
return;
} // .end method
static android.os.Bundle access$300 ( android.support.v4.app.NotificationCompat$Action p0 ) { //synthethic
/* .locals 1 */
/* .param p0, "x0" # Landroid/support/v4/app/NotificationCompat$Action; */
/* .prologue */
/* .line 1772 */
v0 = this.mExtras;
} // .end method
/* # virtual methods */
protected android.app.PendingIntent getActionIntent ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1815 */
v0 = this.actionIntent;
} // .end method
public android.os.Bundle getExtras ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1823 */
v0 = this.mExtras;
} // .end method
protected Integer getIcon ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1805 */
/* iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->icon:I */
} // .end method
public android.support.v4.app.RemoteInput getRemoteInputs ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1832 */
v0 = this.mRemoteInputs;
} // .end method
public android.support.v4.app.RemoteInputCompatBase$RemoteInput getRemoteInputs ( ) { //bridge//synthethic
/* .locals 1 */
/* .prologue */
/* .line 1772 */
(( android.support.v4.app.NotificationCompat$Action ) p0 ).getRemoteInputs ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;
} // .end method
protected java.lang.CharSequence getTitle ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1810 */
v0 = this.title;
} // .end method
