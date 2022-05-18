public class android.support.v4.app.NotificationCompat {
	 /* .source "NotificationCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/NotificationCompat$1;, */
	 /* Landroid/support/v4/app/NotificationCompat$CarExtender;, */
	 /* Landroid/support/v4/app/NotificationCompat$WearableExtender;, */
	 /* Landroid/support/v4/app/NotificationCompat$Extender;, */
	 /* Landroid/support/v4/app/NotificationCompat$Action;, */
	 /* Landroid/support/v4/app/NotificationCompat$InboxStyle;, */
	 /* Landroid/support/v4/app/NotificationCompat$BigTextStyle;, */
	 /* Landroid/support/v4/app/NotificationCompat$BigPictureStyle;, */
	 /* Landroid/support/v4/app/NotificationCompat$Style;, */
	 /* Landroid/support/v4/app/NotificationCompat$Builder;, */
	 /* Landroid/support/v4/app/NotificationCompat$NotificationCompatImplApi21;, */
	 /* Landroid/support/v4/app/NotificationCompat$NotificationCompatImplApi20;, */
	 /* Landroid/support/v4/app/NotificationCompat$NotificationCompatImplKitKat;, */
	 /* Landroid/support/v4/app/NotificationCompat$NotificationCompatImplJellybean;, */
	 /* Landroid/support/v4/app/NotificationCompat$NotificationCompatImplIceCreamSandwich;, */
	 /* Landroid/support/v4/app/NotificationCompat$NotificationCompatImplHoneycomb;, */
	 /* Landroid/support/v4/app/NotificationCompat$NotificationCompatImplGingerbread;, */
	 /* Landroid/support/v4/app/NotificationCompat$NotificationCompatImplBase;, */
	 /* Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl; */
	 /* } */
} // .end annotation
/* # static fields */
public static final java.lang.String CATEGORY_ALARM;
public static final java.lang.String CATEGORY_CALL;
public static final java.lang.String CATEGORY_EMAIL;
public static final java.lang.String CATEGORY_ERROR;
public static final java.lang.String CATEGORY_EVENT;
public static final java.lang.String CATEGORY_MESSAGE;
public static final java.lang.String CATEGORY_PROGRESS;
public static final java.lang.String CATEGORY_PROMO;
public static final java.lang.String CATEGORY_RECOMMENDATION;
public static final java.lang.String CATEGORY_SERVICE;
public static final java.lang.String CATEGORY_SOCIAL;
public static final java.lang.String CATEGORY_STATUS;
public static final java.lang.String CATEGORY_SYSTEM;
public static final java.lang.String CATEGORY_TRANSPORT;
public static final Integer COLOR_DEFAULT;
public static final Integer DEFAULT_ALL;
public static final Integer DEFAULT_LIGHTS;
public static final Integer DEFAULT_SOUND;
public static final Integer DEFAULT_VIBRATE;
public static final java.lang.String EXTRA_BACKGROUND_IMAGE_URI;
public static final java.lang.String EXTRA_BIG_TEXT;
public static final java.lang.String EXTRA_COMPACT_ACTIONS;
public static final java.lang.String EXTRA_INFO_TEXT;
public static final java.lang.String EXTRA_LARGE_ICON;
public static final java.lang.String EXTRA_LARGE_ICON_BIG;
public static final java.lang.String EXTRA_MEDIA_SESSION;
public static final java.lang.String EXTRA_PEOPLE;
public static final java.lang.String EXTRA_PICTURE;
public static final java.lang.String EXTRA_PROGRESS;
public static final java.lang.String EXTRA_PROGRESS_INDETERMINATE;
public static final java.lang.String EXTRA_PROGRESS_MAX;
public static final java.lang.String EXTRA_SHOW_CHRONOMETER;
public static final java.lang.String EXTRA_SHOW_WHEN;
public static final java.lang.String EXTRA_SMALL_ICON;
public static final java.lang.String EXTRA_SUB_TEXT;
public static final java.lang.String EXTRA_SUMMARY_TEXT;
public static final java.lang.String EXTRA_TEMPLATE;
public static final java.lang.String EXTRA_TEXT;
public static final java.lang.String EXTRA_TEXT_LINES;
public static final java.lang.String EXTRA_TITLE;
public static final java.lang.String EXTRA_TITLE_BIG;
public static final Integer FLAG_AUTO_CANCEL;
public static final Integer FLAG_FOREGROUND_SERVICE;
public static final Integer FLAG_GROUP_SUMMARY;
public static final Integer FLAG_HIGH_PRIORITY;
public static final Integer FLAG_INSISTENT;
public static final Integer FLAG_LOCAL_ONLY;
public static final Integer FLAG_NO_CLEAR;
public static final Integer FLAG_ONGOING_EVENT;
public static final Integer FLAG_ONLY_ALERT_ONCE;
public static final Integer FLAG_SHOW_LIGHTS;
private static final android.support.v4.app.NotificationCompat$NotificationCompatImpl IMPL;
public static final Integer PRIORITY_DEFAULT;
public static final Integer PRIORITY_HIGH;
public static final Integer PRIORITY_LOW;
public static final Integer PRIORITY_MAX;
public static final Integer PRIORITY_MIN;
public static final Integer STREAM_DEFAULT;
public static final Integer VISIBILITY_PRIVATE;
public static final Integer VISIBILITY_PUBLIC;
public static final Integer VISIBILITY_SECRET;
/* # direct methods */
static android.support.v4.app.NotificationCompat ( ) {
	 /* .locals 2 */
	 /* .prologue */
	 /* .line 815 */
	 /* const/16 v1, 0x15 */
	 /* if-lt v0, v1, :cond_0 */
	 /* .line 816 */
	 /* new-instance v0, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplApi21; */
	 /* invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplApi21;-><init>()V */
	 /* .line 832 */
} // :goto_0
return;
/* .line 817 */
} // :cond_0
/* const/16 v1, 0x14 */
/* if-lt v0, v1, :cond_1 */
/* .line 818 */
/* new-instance v0, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplApi20; */
/* invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplApi20;-><init>()V */
/* .line 819 */
} // :cond_1
/* const/16 v1, 0x13 */
/* if-lt v0, v1, :cond_2 */
/* .line 820 */
/* new-instance v0, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplKitKat; */
/* invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplKitKat;-><init>()V */
/* .line 821 */
} // :cond_2
/* const/16 v1, 0x10 */
/* if-lt v0, v1, :cond_3 */
/* .line 822 */
/* new-instance v0, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplJellybean; */
/* invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplJellybean;-><init>()V */
/* .line 823 */
} // :cond_3
/* const/16 v1, 0xe */
/* if-lt v0, v1, :cond_4 */
/* .line 824 */
/* new-instance v0, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplIceCreamSandwich; */
/* invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplIceCreamSandwich;-><init>()V */
/* .line 825 */
} // :cond_4
/* const/16 v1, 0xb */
/* if-lt v0, v1, :cond_5 */
/* .line 826 */
/* new-instance v0, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplHoneycomb; */
/* invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplHoneycomb;-><init>()V */
/* .line 827 */
} // :cond_5
/* const/16 v1, 0x9 */
/* if-lt v0, v1, :cond_6 */
/* .line 828 */
/* new-instance v0, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplGingerbread; */
/* invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplGingerbread;-><init>()V */
/* .line 830 */
} // :cond_6
/* new-instance v0, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplBase; */
/* invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplBase;-><init>()V */
} // .end method
public android.support.v4.app.NotificationCompat ( ) {
/* .locals 0 */
/* .prologue */
/* .line 41 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 2904 */
return;
} // .end method
static void access$000 ( android.support.v4.app.NotificationBuilderWithActions p0, java.util.ArrayList p1 ) { //synthethic
/* .locals 0 */
/* .param p0, "x0" # Landroid/support/v4/app/NotificationBuilderWithActions; */
/* .param p1, "x1" # Ljava/util/ArrayList; */
/* .prologue */
/* .line 41 */
android.support.v4.app.NotificationCompat .addActionsToBuilder ( p0,p1 );
return;
} // .end method
static void access$100 ( android.support.v4.app.NotificationBuilderWithBuilderAccessor p0, android.support.v4.app.NotificationCompat$Style p1 ) { //synthethic
/* .locals 0 */
/* .param p0, "x0" # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor; */
/* .param p1, "x1" # Landroid/support/v4/app/NotificationCompat$Style; */
/* .prologue */
/* .line 41 */
android.support.v4.app.NotificationCompat .addStyleToBuilderJellybean ( p0,p1 );
return;
} // .end method
static android.support.v4.app.NotificationCompat$NotificationCompatImpl access$200 ( ) { //synthethic
/* .locals 1 */
/* .prologue */
/* .line 41 */
v0 = android.support.v4.app.NotificationCompat.IMPL;
} // .end method
static android.app.Notification access$500 ( android.os.Bundle p0, java.lang.String p1 ) { //synthethic
/* .locals 1 */
/* .param p0, "x0" # Landroid/os/Bundle; */
/* .param p1, "x1" # Ljava/lang/String; */
/* .prologue */
/* .line 41 */
android.support.v4.app.NotificationCompat .getNotificationArrayFromBundle ( p0,p1 );
} // .end method
private static void addActionsToBuilder ( android.support.v4.app.NotificationBuilderWithActions p0, java.util.ArrayList p1 ) {
/* .locals 3 */
/* .param p0, "builder" # Landroid/support/v4/app/NotificationBuilderWithActions; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Landroid/support/v4/app/NotificationBuilderWithActions;", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/support/v4/app/NotificationCompat$Action;", */
/* ">;)V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 779 */
/* .local p1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/NotificationCompat$Action;>;" */
(( java.util.ArrayList ) p1 ).iterator ( ); // invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
/* .local v1, "i$":Ljava/util/Iterator; */
v2 = } // :goto_0
if ( v2 != null) { // if-eqz v2, :cond_0
/* check-cast v0, Landroid/support/v4/app/NotificationCompat$Action; */
/* .line 780 */
/* .local v0, "action":Landroid/support/v4/app/NotificationCompat$Action; */
/* .line 782 */
} // .end local v0 # "action":Landroid/support/v4/app/NotificationCompat$Action;
} // :cond_0
return;
} // .end method
private static void addStyleToBuilderJellybean ( android.support.v4.app.NotificationBuilderWithBuilderAccessor p0, android.support.v4.app.NotificationCompat$Style p1 ) {
/* .locals 10 */
/* .param p0, "builder" # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor; */
/* .param p1, "style" # Landroid/support/v4/app/NotificationCompat$Style; */
/* .prologue */
/* .line 786 */
if ( p1 != null) { // if-eqz p1, :cond_0
/* .line 787 */
/* instance-of v0, p1, Landroid/support/v4/app/NotificationCompat$BigTextStyle; */
if ( v0 != null) { // if-eqz v0, :cond_1
/* move-object v8, p1 */
/* .line 788 */
/* check-cast v8, Landroid/support/v4/app/NotificationCompat$BigTextStyle; */
/* .line 789 */
/* .local v8, "bigTextStyle":Landroid/support/v4/app/NotificationCompat$BigTextStyle; */
v0 = this.mBigContentTitle;
/* iget-boolean v1, v8, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->mSummaryTextSet:Z */
v2 = this.mSummaryText;
v3 = this.mBigText;
android.support.v4.app.NotificationCompatJellybean .addBigTextStyle ( p0,v0,v1,v2,v3 );
/* .line 812 */
} // .end local v8 # "bigTextStyle":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
} // :cond_0
} // :goto_0
return;
/* .line 794 */
} // :cond_1
/* instance-of v0, p1, Landroid/support/v4/app/NotificationCompat$InboxStyle; */
if ( v0 != null) { // if-eqz v0, :cond_2
/* move-object v9, p1 */
/* .line 795 */
/* check-cast v9, Landroid/support/v4/app/NotificationCompat$InboxStyle; */
/* .line 796 */
/* .local v9, "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle; */
v0 = this.mBigContentTitle;
/* iget-boolean v1, v9, Landroid/support/v4/app/NotificationCompat$InboxStyle;->mSummaryTextSet:Z */
v2 = this.mSummaryText;
v3 = this.mTexts;
android.support.v4.app.NotificationCompatJellybean .addInboxStyle ( p0,v0,v1,v2,v3 );
/* .line 801 */
} // .end local v9 # "inboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
} // :cond_2
/* instance-of v0, p1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle; */
if ( v0 != null) { // if-eqz v0, :cond_0
/* move-object v7, p1 */
/* .line 802 */
/* check-cast v7, Landroid/support/v4/app/NotificationCompat$BigPictureStyle; */
/* .line 803 */
/* .local v7, "bigPictureStyle":Landroid/support/v4/app/NotificationCompat$BigPictureStyle; */
v1 = this.mBigContentTitle;
/* iget-boolean v2, v7, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->mSummaryTextSet:Z */
v3 = this.mSummaryText;
v4 = this.mPicture;
v5 = this.mBigLargeIcon;
/* iget-boolean v6, v7, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->mBigLargeIconSet:Z */
/* move-object v0, p0 */
/* invoke-static/range {v0 ..v6}, Landroid/support/v4/app/NotificationCompatJellybean;->addBigPictureStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V */
} // .end method
public static android.support.v4.app.NotificationCompat$Action getAction ( android.app.Notification p0, Integer p1 ) {
/* .locals 1 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .param p1, "actionIndex" # I */
/* .prologue */
/* .line 3271 */
v0 = android.support.v4.app.NotificationCompat.IMPL;
} // .end method
public static Integer getActionCount ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .prologue */
/* .line 3261 */
v0 = v0 = android.support.v4.app.NotificationCompat.IMPL;
} // .end method
public static java.lang.String getCategory ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .prologue */
/* .line 3280 */
v0 = android.support.v4.app.NotificationCompat.IMPL;
} // .end method
public static android.os.Bundle getExtras ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .prologue */
/* .line 3253 */
v0 = android.support.v4.app.NotificationCompat.IMPL;
} // .end method
public static java.lang.String getGroup ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .prologue */
/* .line 3298 */
v0 = android.support.v4.app.NotificationCompat.IMPL;
} // .end method
public static Boolean getLocalOnly ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .prologue */
/* .line 3290 */
v0 = v0 = android.support.v4.app.NotificationCompat.IMPL;
} // .end method
private static android.app.Notification getNotificationArrayFromBundle ( android.os.Bundle p0, java.lang.String p1 ) {
/* .locals 4 */
/* .param p0, "bundle" # Landroid/os/Bundle; */
/* .param p1, "key" # Ljava/lang/String; */
/* .prologue */
/* .line 3235 */
(( android.os.Bundle ) p0 ).getParcelableArray ( p1 ); // invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
/* .line 3236 */
/* .local v0, "array":[Landroid/os/Parcelable; */
/* instance-of v3, v0, [Landroid/app/Notification; */
/* if-nez v3, :cond_0 */
/* if-nez v0, :cond_1 */
/* .line 3237 */
} // :cond_0
/* check-cast v0, [Landroid/app/Notification; */
} // .end local v0 # "array":[Landroid/os/Parcelable;
/* check-cast v0, [Landroid/app/Notification; */
/* move-object v2, v0 */
/* .line 3244 */
} // :goto_0
/* .line 3239 */
/* .restart local v0 # "array":[Landroid/os/Parcelable; */
} // :cond_1
/* array-length v3, v0 */
/* new-array v2, v3, [Landroid/app/Notification; */
/* .line 3240 */
/* .local v2, "typedArray":[Landroid/app/Notification; */
int v1 = 0; // const/4 v1, 0x0
/* .local v1, "i":I */
} // :goto_1
/* array-length v3, v0 */
/* if-ge v1, v3, :cond_2 */
/* .line 3241 */
/* aget-object v3, v0, v1 */
/* check-cast v3, Landroid/app/Notification; */
/* aput-object v3, v2, v1 */
/* .line 3240 */
/* add-int/lit8 v1, v1, 0x1 */
/* .line 3243 */
} // :cond_2
(( android.os.Bundle ) p0 ).putParcelableArray ( p1, v2 ); // invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
} // .end method
public static java.lang.String getSortKey ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .prologue */
/* .line 3324 */
v0 = android.support.v4.app.NotificationCompat.IMPL;
} // .end method
public static Boolean isGroupSummary ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .prologue */
/* .line 3308 */
v0 = v0 = android.support.v4.app.NotificationCompat.IMPL;
} // .end method
