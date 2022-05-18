public class android.support.v4.app.NotificationCompat$BigTextStyle extends android.support.v4.app.NotificationCompat$Style {
	 /* .source "NotificationCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x9 */
/* name = "BigTextStyle" */
} // .end annotation
/* # instance fields */
java.lang.CharSequence mBigText;
/* # direct methods */
public android.support.v4.app.NotificationCompat$BigTextStyle ( ) {
/* .locals 0 */
/* .prologue */
/* .line 1667 */
/* invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V */
/* .line 1668 */
return;
} // .end method
public android.support.v4.app.NotificationCompat$BigTextStyle ( ) {
/* .locals 0 */
/* .param p1, "builder" # Landroid/support/v4/app/NotificationCompat$Builder; */
/* .prologue */
/* .line 1670 */
/* invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V */
/* .line 1671 */
(( android.support.v4.app.NotificationCompat$BigTextStyle ) p0 ).setBuilder ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V
/* .line 1672 */
return;
} // .end method
/* # virtual methods */
public android.support.v4.app.NotificationCompat$BigTextStyle bigText ( java.lang.CharSequence p0 ) {
/* .locals 1 */
/* .param p1, "cs" # Ljava/lang/CharSequence; */
/* .prologue */
/* .line 1697 */
android.support.v4.app.NotificationCompat$Builder .limitCharSequenceLength ( p1 );
this.mBigText = v0;
/* .line 1698 */
} // .end method
public android.support.v4.app.NotificationCompat$BigTextStyle setBigContentTitle ( java.lang.CharSequence p0 ) {
/* .locals 1 */
/* .param p1, "title" # Ljava/lang/CharSequence; */
/* .prologue */
/* .line 1679 */
android.support.v4.app.NotificationCompat$Builder .limitCharSequenceLength ( p1 );
this.mBigContentTitle = v0;
/* .line 1680 */
} // .end method
public android.support.v4.app.NotificationCompat$BigTextStyle setSummaryText ( java.lang.CharSequence p0 ) {
/* .locals 1 */
/* .param p1, "cs" # Ljava/lang/CharSequence; */
/* .prologue */
/* .line 1687 */
android.support.v4.app.NotificationCompat$Builder .limitCharSequenceLength ( p1 );
this.mSummaryText = v0;
/* .line 1688 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z */
/* .line 1689 */
} // .end method
