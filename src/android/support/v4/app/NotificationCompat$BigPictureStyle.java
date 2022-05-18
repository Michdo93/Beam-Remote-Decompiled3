public class android.support.v4.app.NotificationCompat$BigPictureStyle extends android.support.v4.app.NotificationCompat$Style {
	 /* .source "NotificationCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x9 */
/* name = "BigPictureStyle" */
} // .end annotation
/* # instance fields */
android.graphics.Bitmap mBigLargeIcon;
Boolean mBigLargeIconSet;
android.graphics.Bitmap mPicture;
/* # direct methods */
public android.support.v4.app.NotificationCompat$BigPictureStyle ( ) {
/* .locals 0 */
/* .prologue */
/* .line 1600 */
/* invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V */
/* .line 1601 */
return;
} // .end method
public android.support.v4.app.NotificationCompat$BigPictureStyle ( ) {
/* .locals 0 */
/* .param p1, "builder" # Landroid/support/v4/app/NotificationCompat$Builder; */
/* .prologue */
/* .line 1603 */
/* invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V */
/* .line 1604 */
(( android.support.v4.app.NotificationCompat$BigPictureStyle ) p0 ).setBuilder ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V
/* .line 1605 */
return;
} // .end method
/* # virtual methods */
public android.support.v4.app.NotificationCompat$BigPictureStyle bigLargeIcon ( android.graphics.Bitmap p0 ) {
/* .locals 1 */
/* .param p1, "b" # Landroid/graphics/Bitmap; */
/* .prologue */
/* .line 1637 */
this.mBigLargeIcon = p1;
/* .line 1638 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z */
/* .line 1639 */
} // .end method
public android.support.v4.app.NotificationCompat$BigPictureStyle bigPicture ( android.graphics.Bitmap p0 ) {
/* .locals 0 */
/* .param p1, "b" # Landroid/graphics/Bitmap; */
/* .prologue */
/* .line 1629 */
this.mPicture = p1;
/* .line 1630 */
} // .end method
public android.support.v4.app.NotificationCompat$BigPictureStyle setBigContentTitle ( java.lang.CharSequence p0 ) {
/* .locals 1 */
/* .param p1, "title" # Ljava/lang/CharSequence; */
/* .prologue */
/* .line 1612 */
android.support.v4.app.NotificationCompat$Builder .limitCharSequenceLength ( p1 );
this.mBigContentTitle = v0;
/* .line 1613 */
} // .end method
public android.support.v4.app.NotificationCompat$BigPictureStyle setSummaryText ( java.lang.CharSequence p0 ) {
/* .locals 1 */
/* .param p1, "cs" # Ljava/lang/CharSequence; */
/* .prologue */
/* .line 1620 */
android.support.v4.app.NotificationCompat$Builder .limitCharSequenceLength ( p1 );
this.mSummaryText = v0;
/* .line 1621 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z */
/* .line 1622 */
} // .end method
