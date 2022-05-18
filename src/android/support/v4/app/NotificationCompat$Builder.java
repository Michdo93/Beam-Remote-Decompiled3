public class android.support.v4.app.NotificationCompat$Builder {
	 /* .source "NotificationCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x9 */
/* name = "Builder" */
} // .end annotation
/* # static fields */
private static final Integer MAX_CHARSEQUENCE_LENGTH;
/* # instance fields */
java.util.ArrayList mActions;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/support/v4/app/NotificationCompat$Action;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
java.lang.String mCategory;
Integer mColor;
java.lang.CharSequence mContentInfo;
android.app.PendingIntent mContentIntent;
java.lang.CharSequence mContentText;
java.lang.CharSequence mContentTitle;
android.content.Context mContext;
android.os.Bundle mExtras;
android.app.PendingIntent mFullScreenIntent;
java.lang.String mGroupKey;
Boolean mGroupSummary;
android.graphics.Bitmap mLargeIcon;
Boolean mLocalOnly;
android.app.Notification mNotification;
Integer mNumber;
public java.util.ArrayList mPeople;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Ljava/lang/String;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
Integer mPriority;
Integer mProgress;
Boolean mProgressIndeterminate;
Integer mProgressMax;
android.app.Notification mPublicVersion;
Boolean mShowWhen;
java.lang.String mSortKey;
android.support.v4.app.NotificationCompat$Style mStyle;
java.lang.CharSequence mSubText;
android.widget.RemoteViews mTickerView;
Boolean mUseChronometer;
Integer mVisibility;
/* # direct methods */
public android.support.v4.app.NotificationCompat$Builder ( ) {
/* .locals 5 */
/* .param p1, "context" # Landroid/content/Context; */
/* .prologue */
int v4 = 0; // const/4 v4, 0x0
/* .line 906 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 874 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mShowWhen:Z */
/* .line 884 */
/* new-instance v0, Ljava/util/ArrayList; */
/* invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V */
this.mActions = v0;
/* .line 885 */
/* iput-boolean v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mLocalOnly:Z */
/* .line 888 */
/* iput v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mColor:I */
/* .line 889 */
/* iput v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mVisibility:I */
/* .line 892 */
/* new-instance v0, Landroid/app/Notification; */
/* invoke-direct {v0}, Landroid/app/Notification;-><init>()V */
this.mNotification = v0;
/* .line 907 */
this.mContext = p1;
/* .line 910 */
v0 = this.mNotification;
java.lang.System .currentTimeMillis ( );
/* move-result-wide v2 */
/* iput-wide v2, v0, Landroid/app/Notification;->when:J */
/* .line 911 */
v0 = this.mNotification;
int v1 = -1; // const/4 v1, -0x1
/* iput v1, v0, Landroid/app/Notification;->audioStreamType:I */
/* .line 912 */
/* iput v4, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I */
/* .line 913 */
/* new-instance v0, Ljava/util/ArrayList; */
/* invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V */
this.mPeople = v0;
/* .line 914 */
return;
} // .end method
protected static java.lang.CharSequence limitCharSequenceLength ( java.lang.CharSequence p0 ) {
/* .locals 2 */
/* .param p0, "cs" # Ljava/lang/CharSequence; */
/* .prologue */
/* const/16 v1, 0x1400 */
/* .line 1536 */
/* if-nez p0, :cond_1 */
/* .line 1540 */
} // :cond_0
} // :goto_0
/* .line 1537 */
v0 = } // :cond_1
/* if-le v0, v1, :cond_0 */
/* .line 1538 */
int v0 = 0; // const/4 v0, 0x0
} // .end method
private void setFlag ( Integer p0, Boolean p1 ) {
/* .locals 3 */
/* .param p1, "mask" # I */
/* .param p2, "value" # Z */
/* .prologue */
/* .line 1262 */
if ( p2 != null) { // if-eqz p2, :cond_0
/* .line 1263 */
v0 = this.mNotification;
/* iget v1, v0, Landroid/app/Notification;->flags:I */
/* or-int/2addr v1, p1 */
/* iput v1, v0, Landroid/app/Notification;->flags:I */
/* .line 1267 */
} // :goto_0
return;
/* .line 1265 */
} // :cond_0
v0 = this.mNotification;
/* iget v1, v0, Landroid/app/Notification;->flags:I */
/* xor-int/lit8 v2, p1, -0x1 */
/* and-int/2addr v1, v2 */
/* iput v1, v0, Landroid/app/Notification;->flags:I */
} // .end method
/* # virtual methods */
public android.support.v4.app.NotificationCompat$Builder addAction ( Integer p0, java.lang.CharSequence p1, android.app.PendingIntent p2 ) {
/* .locals 2 */
/* .param p1, "icon" # I */
/* .param p2, "title" # Ljava/lang/CharSequence; */
/* .param p3, "intent" # Landroid/app/PendingIntent; */
/* .prologue */
/* .line 1432 */
v0 = this.mActions;
/* new-instance v1, Landroid/support/v4/app/NotificationCompat$Action; */
/* invoke-direct {v1, p1, p2, p3}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V */
(( java.util.ArrayList ) v0 ).add ( v1 ); // invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
/* .line 1433 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder addAction ( android.support.v4.app.NotificationCompat$Action p0 ) {
/* .locals 1 */
/* .param p1, "action" # Landroid/support/v4/app/NotificationCompat$Action; */
/* .prologue */
/* .line 1451 */
v0 = this.mActions;
(( java.util.ArrayList ) v0 ).add ( p1 ); // invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
/* .line 1452 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder addExtras ( android.os.Bundle p0 ) {
/* .locals 1 */
/* .param p1, "extras" # Landroid/os/Bundle; */
/* .prologue */
/* .line 1371 */
if ( p1 != null) { // if-eqz p1, :cond_0
/* .line 1372 */
v0 = this.mExtras;
/* if-nez v0, :cond_1 */
/* .line 1373 */
/* new-instance v0, Landroid/os/Bundle; */
/* invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V */
this.mExtras = v0;
/* .line 1378 */
} // :cond_0
} // :goto_0
/* .line 1375 */
} // :cond_1
v0 = this.mExtras;
(( android.os.Bundle ) v0 ).putAll ( p1 ); // invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
} // .end method
public android.support.v4.app.NotificationCompat$Builder addPerson ( java.lang.String p0 ) {
/* .locals 1 */
/* .param p1, "uri" # Ljava/lang/String; */
/* .prologue */
/* .line 1314 */
v0 = this.mPeople;
(( java.util.ArrayList ) v0 ).add ( p1 ); // invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
/* .line 1315 */
} // .end method
public android.app.Notification build ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1532 */
android.support.v4.app.NotificationCompat .access$200 ( );
} // .end method
public android.support.v4.app.NotificationCompat$Builder extend ( android.support.v4.app.NotificationCompat$Extender p0 ) {
/* .locals 0 */
/* .param p1, "extender" # Landroid/support/v4/app/NotificationCompat$Extender; */
/* .prologue */
/* .line 1515 */
/* .line 1516 */
} // .end method
public android.os.Bundle getExtras ( ) {
/* .locals 1 */
/* .prologue */
/* .line 1409 */
v0 = this.mExtras;
/* if-nez v0, :cond_0 */
/* .line 1410 */
/* new-instance v0, Landroid/os/Bundle; */
/* invoke-direct {v0}, Landroid/os/Bundle;-><init>()V */
this.mExtras = v0;
/* .line 1412 */
} // :cond_0
v0 = this.mExtras;
} // .end method
public android.app.Notification getNotification ( ) {
/* .locals 1 */
/* .annotation runtime Ljava/lang/Deprecated; */
} // .end annotation
/* .prologue */
/* .line 1524 */
android.support.v4.app.NotificationCompat .access$200 ( );
} // .end method
public android.support.v4.app.NotificationCompat$Builder setAutoCancel ( Boolean p0 ) {
/* .locals 1 */
/* .param p1, "autoCancel" # Z */
/* .prologue */
/* .line 1216 */
/* const/16 v0, 0x10 */
/* invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V */
/* .line 1217 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setCategory ( java.lang.String p0 ) {
/* .locals 0 */
/* .param p1, "category" # Ljava/lang/String; */
/* .prologue */
/* .line 1239 */
this.mCategory = p1;
/* .line 1240 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setColor ( Integer p0 ) {
/* .locals 0 */
/* .param p1, "argb" # I */
/* .prologue */
/* .line 1481 */
/* iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mColor:I */
/* .line 1482 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setContent ( android.widget.RemoteViews p0 ) {
/* .locals 1 */
/* .param p1, "views" # Landroid/widget/RemoteViews; */
/* .prologue */
/* .line 1041 */
v0 = this.mNotification;
this.contentView = p1;
/* .line 1042 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setContentInfo ( java.lang.CharSequence p0 ) {
/* .locals 1 */
/* .param p1, "info" # Ljava/lang/CharSequence; */
/* .prologue */
/* .line 1022 */
android.support.v4.app.NotificationCompat$Builder .limitCharSequenceLength ( p1 );
this.mContentInfo = v0;
/* .line 1023 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setContentIntent ( android.app.PendingIntent p0 ) {
/* .locals 0 */
/* .param p1, "intent" # Landroid/app/PendingIntent; */
/* .prologue */
/* .line 1054 */
this.mContentIntent = p1;
/* .line 1055 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setContentText ( java.lang.CharSequence p0 ) {
/* .locals 1 */
/* .param p1, "text" # Ljava/lang/CharSequence; */
/* .prologue */
/* .line 990 */
android.support.v4.app.NotificationCompat$Builder .limitCharSequenceLength ( p1 );
this.mContentText = v0;
/* .line 991 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setContentTitle ( java.lang.CharSequence p0 ) {
/* .locals 1 */
/* .param p1, "title" # Ljava/lang/CharSequence; */
/* .prologue */
/* .line 982 */
android.support.v4.app.NotificationCompat$Builder .limitCharSequenceLength ( p1 );
this.mContentTitle = v0;
/* .line 983 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setDefaults ( Integer p0 ) {
/* .locals 2 */
/* .param p1, "defaults" # I */
/* .prologue */
/* .line 1254 */
v0 = this.mNotification;
/* iput p1, v0, Landroid/app/Notification;->defaults:I */
/* .line 1255 */
/* and-int/lit8 v0, p1, 0x4 */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 1256 */
v0 = this.mNotification;
/* iget v1, v0, Landroid/app/Notification;->flags:I */
/* or-int/lit8 v1, v1, 0x1 */
/* iput v1, v0, Landroid/app/Notification;->flags:I */
/* .line 1258 */
} // :cond_0
} // .end method
public android.support.v4.app.NotificationCompat$Builder setDeleteIntent ( android.app.PendingIntent p0 ) {
/* .locals 1 */
/* .param p1, "intent" # Landroid/app/PendingIntent; */
/* .prologue */
/* .line 1066 */
v0 = this.mNotification;
this.deleteIntent = p1;
/* .line 1067 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setExtras ( android.os.Bundle p0 ) {
/* .locals 0 */
/* .param p1, "extras" # Landroid/os/Bundle; */
/* .prologue */
/* .line 1394 */
this.mExtras = p1;
/* .line 1395 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setFullScreenIntent ( android.app.PendingIntent p0, Boolean p1 ) {
/* .locals 1 */
/* .param p1, "intent" # Landroid/app/PendingIntent; */
/* .param p2, "highPriority" # Z */
/* .prologue */
/* .line 1089 */
this.mFullScreenIntent = p1;
/* .line 1090 */
/* const/16 v0, 0x80 */
/* invoke-direct {p0, v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V */
/* .line 1091 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setGroup ( java.lang.String p0 ) {
/* .locals 0 */
/* .param p1, "groupKey" # Ljava/lang/String; */
/* .prologue */
/* .line 1330 */
this.mGroupKey = p1;
/* .line 1331 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setGroupSummary ( Boolean p0 ) {
/* .locals 0 */
/* .param p1, "isGroupSummary" # Z */
/* .prologue */
/* .line 1342 */
/* iput-boolean p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupSummary:Z */
/* .line 1343 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setLargeIcon ( android.graphics.Bitmap p0 ) {
/* .locals 0 */
/* .param p1, "icon" # Landroid/graphics/Bitmap; */
/* .prologue */
/* .line 1118 */
this.mLargeIcon = p1;
/* .line 1119 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setLights ( Integer p0, Integer p1, Integer p2 ) {
/* .locals 5 */
/* .param p1, "argb" # I */
/* .param p2, "onMs" # I */
/* .param p3, "offMs" # I */
/* .prologue */
int v1 = 1; // const/4 v1, 0x1
int v2 = 0; // const/4 v2, 0x0
/* .line 1175 */
v3 = this.mNotification;
/* iput p1, v3, Landroid/app/Notification;->ledARGB:I */
/* .line 1176 */
v3 = this.mNotification;
/* iput p2, v3, Landroid/app/Notification;->ledOnMS:I */
/* .line 1177 */
v3 = this.mNotification;
/* iput p3, v3, Landroid/app/Notification;->ledOffMS:I */
/* .line 1178 */
v3 = this.mNotification;
/* iget v3, v3, Landroid/app/Notification;->ledOnMS:I */
if ( v3 != null) { // if-eqz v3, :cond_0
v3 = this.mNotification;
/* iget v3, v3, Landroid/app/Notification;->ledOffMS:I */
if ( v3 != null) { // if-eqz v3, :cond_0
/* move v0, v1 */
/* .line 1179 */
/* .local v0, "showLights":Z */
} // :goto_0
v3 = this.mNotification;
v4 = this.mNotification;
/* iget v4, v4, Landroid/app/Notification;->flags:I */
/* and-int/lit8 v4, v4, -0x2 */
if ( v0 != null) { // if-eqz v0, :cond_1
} // :goto_1
/* or-int/2addr v1, v4 */
/* iput v1, v3, Landroid/app/Notification;->flags:I */
/* .line 1181 */
} // .end local v0 # "showLights":Z
} // :cond_0
/* move v0, v2 */
/* .line 1178 */
/* .restart local v0 # "showLights":Z */
} // :cond_1
/* move v1, v2 */
/* .line 1179 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setLocalOnly ( Boolean p0 ) {
/* .locals 0 */
/* .param p1, "b" # Z */
/* .prologue */
/* .line 1227 */
/* iput-boolean p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mLocalOnly:Z */
/* .line 1228 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setNumber ( Integer p0 ) {
/* .locals 0 */
/* .param p1, "number" # I */
/* .prologue */
/* .line 1014 */
/* iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I */
/* .line 1015 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setOngoing ( Boolean p0 ) {
/* .locals 1 */
/* .param p1, "ongoing" # Z */
/* .prologue */
/* .line 1196 */
int v0 = 2; // const/4 v0, 0x2
/* invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V */
/* .line 1197 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setOnlyAlertOnce ( Boolean p0 ) {
/* .locals 1 */
/* .param p1, "onlyAlertOnce" # Z */
/* .prologue */
/* .line 1205 */
/* const/16 v0, 0x8 */
/* invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setFlag(IZ)V */
/* .line 1206 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setPriority ( Integer p0 ) {
/* .locals 0 */
/* .param p1, "pri" # I */
/* .prologue */
/* .line 1287 */
/* iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I */
/* .line 1288 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setProgress ( Integer p0, Integer p1, Boolean p2 ) {
/* .locals 0 */
/* .param p1, "max" # I */
/* .param p2, "progress" # I */
/* .param p3, "indeterminate" # Z */
/* .prologue */
/* .line 1031 */
/* iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressMax:I */
/* .line 1032 */
/* iput p2, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgress:I */
/* .line 1033 */
/* iput-boolean p3, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressIndeterminate:Z */
/* .line 1034 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setPublicVersion ( android.app.Notification p0 ) {
/* .locals 0 */
/* .param p1, "n" # Landroid/app/Notification; */
/* .prologue */
/* .line 1506 */
this.mPublicVersion = p1;
/* .line 1507 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setShowWhen ( Boolean p0 ) {
/* .locals 0 */
/* .param p1, "show" # Z */
/* .prologue */
/* .line 930 */
/* iput-boolean p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mShowWhen:Z */
/* .line 931 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setSmallIcon ( Integer p0 ) {
/* .locals 1 */
/* .param p1, "icon" # I */
/* .prologue */
/* .line 958 */
v0 = this.mNotification;
/* iput p1, v0, Landroid/app/Notification;->icon:I */
/* .line 959 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setSmallIcon ( Integer p0, Integer p1 ) {
/* .locals 1 */
/* .param p1, "icon" # I */
/* .param p2, "level" # I */
/* .prologue */
/* .line 973 */
v0 = this.mNotification;
/* iput p1, v0, Landroid/app/Notification;->icon:I */
/* .line 974 */
v0 = this.mNotification;
/* iput p2, v0, Landroid/app/Notification;->iconLevel:I */
/* .line 975 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setSortKey ( java.lang.String p0 ) {
/* .locals 0 */
/* .param p1, "sortKey" # Ljava/lang/String; */
/* .prologue */
/* .line 1359 */
this.mSortKey = p1;
/* .line 1360 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setSound ( android.net.Uri p0 ) {
/* .locals 2 */
/* .param p1, "sound" # Landroid/net/Uri; */
/* .prologue */
/* .line 1131 */
v0 = this.mNotification;
this.sound = p1;
/* .line 1132 */
v0 = this.mNotification;
int v1 = -1; // const/4 v1, -0x1
/* iput v1, v0, Landroid/app/Notification;->audioStreamType:I */
/* .line 1133 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setSound ( android.net.Uri p0, Integer p1 ) {
/* .locals 1 */
/* .param p1, "sound" # Landroid/net/Uri; */
/* .param p2, "streamType" # I */
/* .prologue */
/* .line 1148 */
v0 = this.mNotification;
this.sound = p1;
/* .line 1149 */
v0 = this.mNotification;
/* iput p2, v0, Landroid/app/Notification;->audioStreamType:I */
/* .line 1150 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setStyle ( android.support.v4.app.NotificationCompat$Style p0 ) {
/* .locals 1 */
/* .param p1, "style" # Landroid/support/v4/app/NotificationCompat$Style; */
/* .prologue */
/* .line 1464 */
v0 = this.mStyle;
/* if-eq v0, p1, :cond_0 */
/* .line 1465 */
this.mStyle = p1;
/* .line 1466 */
v0 = this.mStyle;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 1467 */
v0 = this.mStyle;
(( android.support.v4.app.NotificationCompat$Style ) v0 ).setBuilder ( p0 ); // invoke-virtual {v0, p0}, Landroid/support/v4/app/NotificationCompat$Style;->setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V
/* .line 1470 */
} // :cond_0
} // .end method
public android.support.v4.app.NotificationCompat$Builder setSubText ( java.lang.CharSequence p0 ) {
/* .locals 1 */
/* .param p1, "text" # Ljava/lang/CharSequence; */
/* .prologue */
/* .line 1004 */
android.support.v4.app.NotificationCompat$Builder .limitCharSequenceLength ( p1 );
this.mSubText = v0;
/* .line 1005 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setTicker ( java.lang.CharSequence p0 ) {
/* .locals 2 */
/* .param p1, "tickerText" # Ljava/lang/CharSequence; */
/* .prologue */
/* .line 1099 */
v0 = this.mNotification;
android.support.v4.app.NotificationCompat$Builder .limitCharSequenceLength ( p1 );
this.tickerText = v1;
/* .line 1100 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setTicker ( java.lang.CharSequence p0, android.widget.RemoteViews p1 ) {
/* .locals 2 */
/* .param p1, "tickerText" # Ljava/lang/CharSequence; */
/* .param p2, "views" # Landroid/widget/RemoteViews; */
/* .prologue */
/* .line 1109 */
v0 = this.mNotification;
android.support.v4.app.NotificationCompat$Builder .limitCharSequenceLength ( p1 );
this.tickerText = v1;
/* .line 1110 */
this.mTickerView = p2;
/* .line 1111 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setUsesChronometer ( Boolean p0 ) {
/* .locals 0 */
/* .param p1, "b" # Z */
/* .prologue */
/* .line 946 */
/* iput-boolean p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z */
/* .line 947 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setVibrate ( Long[] p0 ) {
/* .locals 1 */
/* .param p1, "pattern" # [J */
/* .prologue */
/* .line 1165 */
v0 = this.mNotification;
this.vibrate = p1;
/* .line 1166 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setVisibility ( Integer p0 ) {
/* .locals 0 */
/* .param p1, "visibility" # I */
/* .prologue */
/* .line 1493 */
/* iput p1, p0, Landroid/support/v4/app/NotificationCompat$Builder;->mVisibility:I */
/* .line 1494 */
} // .end method
public android.support.v4.app.NotificationCompat$Builder setWhen ( Long p0 ) {
/* .locals 1 */
/* .param p1, "when" # J */
/* .prologue */
/* .line 921 */
v0 = this.mNotification;
/* iput-wide p1, v0, Landroid/app/Notification;->when:J */
/* .line 922 */
} // .end method
