public abstract class android.support.v4.app.NotificationCompat$Style {
	 /* .source "NotificationCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x409 */
/* name = "Style" */
} // .end annotation
/* # instance fields */
java.lang.CharSequence mBigContentTitle;
android.support.v4.app.NotificationCompat$Builder mBuilder;
java.lang.CharSequence mSummaryText;
Boolean mSummaryTextSet;
/* # direct methods */
public android.support.v4.app.NotificationCompat$Style ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1551 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 1555 */
int v0 = 0; // const/4 v0, 0x0
/* iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$Style;->mSummaryTextSet:Z */
return;
} // .end method
/* # virtual methods */
public android.app.Notification build ( ) {
/* .locals 2 */
/* .prologue */
/* .line 1567 */
int v0 = 0; // const/4 v0, 0x0
/* .line 1568 */
/* .local v0, "notification":Landroid/app/Notification; */
v1 = this.mBuilder;
if ( v1 != null) { // if-eqz v1, :cond_0
	 /* .line 1569 */
	 v1 = this.mBuilder;
	 (( android.support.v4.app.NotificationCompat$Builder ) v1 ).build ( ); // invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;
	 /* .line 1571 */
} // :cond_0
} // .end method
public void setBuilder ( android.support.v4.app.NotificationCompat$Builder p0 ) {
/* .locals 1 */
/* .param p1, "builder" # Landroid/support/v4/app/NotificationCompat$Builder; */
/* .prologue */
/* .line 1558 */
v0 = this.mBuilder;
/* if-eq v0, p1, :cond_0 */
/* .line 1559 */
this.mBuilder = p1;
/* .line 1560 */
v0 = this.mBuilder;
if ( v0 != null) { // if-eqz v0, :cond_0
	 /* .line 1561 */
	 v0 = this.mBuilder;
	 (( android.support.v4.app.NotificationCompat$Builder ) v0 ).setStyle ( p0 ); // invoke-virtual {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
	 /* .line 1564 */
} // :cond_0
return;
} // .end method
