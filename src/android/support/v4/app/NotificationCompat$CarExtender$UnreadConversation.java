public class android.support.v4.app.NotificationCompat$CarExtender$UnreadConversation extends android.support.v4.app.NotificationCompatBase$UnreadConversation {
	 /* .source "NotificationCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationCompat$CarExtender; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x9 */
/* name = "UnreadConversation" */
} // .end annotation
/* .annotation system Ldalvik/annotation/MemberClasses; */
/* value = { */
/* Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder; */
/* } */
} // .end annotation
/* # static fields */
static final android.support.v4.app.NotificationCompatBase$UnreadConversation$Factory FACTORY;
/* # instance fields */
private final Long mLatestTimestamp;
private final java.lang.String mMessages;
private final java.lang.String mParticipants;
private final android.app.PendingIntent mReadPendingIntent;
private final android.support.v4.app.RemoteInput mRemoteInput;
private final android.app.PendingIntent mReplyPendingIntent;
/* # direct methods */
static android.support.v4.app.NotificationCompat$CarExtender$UnreadConversation ( ) {
/* .locals 1 */
/* .prologue */
/* .line 3120 */
/* new-instance v0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$1; */
/* invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$1;-><init>()V */
return;
} // .end method
 android.support.v4.app.NotificationCompat$CarExtender$UnreadConversation ( ) {
/* .locals 0 */
/* .param p1, "messages" # [Ljava/lang/String; */
/* .param p2, "remoteInput" # Landroid/support/v4/app/RemoteInput; */
/* .param p3, "replyPendingIntent" # Landroid/app/PendingIntent; */
/* .param p4, "readPendingIntent" # Landroid/app/PendingIntent; */
/* .param p5, "participants" # [Ljava/lang/String; */
/* .param p6, "latestTimestamp" # J */
/* .prologue */
/* .line 3051 */
/* invoke-direct {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;-><init>()V */
/* .line 3052 */
this.mMessages = p1;
/* .line 3053 */
this.mRemoteInput = p2;
/* .line 3054 */
this.mReadPendingIntent = p4;
/* .line 3055 */
this.mReplyPendingIntent = p3;
/* .line 3056 */
this.mParticipants = p5;
/* .line 3057 */
/* iput-wide p6, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mLatestTimestamp:J */
/* .line 3058 */
return;
} // .end method
/* # virtual methods */
Long getLatestTimestamp ( ) {
/* .locals 2 */
/* .prologue */
/* .line 3116 */
/* iget-wide v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->mLatestTimestamp:J */
/* return-wide v0 */
} // .end method
java.lang.String getMessages ( ) {
/* .locals 1 */
/* .prologue */
/* .line 3065 */
v0 = this.mMessages;
} // .end method
java.lang.String getParticipant ( ) {
/* .locals 2 */
/* .prologue */
/* .line 3108 */
v0 = this.mParticipants;
/* array-length v0, v0 */
/* if-lez v0, :cond_0 */
v0 = this.mParticipants;
int v1 = 0; // const/4 v1, 0x0
/* aget-object v0, v0, v1 */
} // :goto_0
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
} // .end method
java.lang.String getParticipants ( ) {
/* .locals 1 */
/* .prologue */
/* .line 3100 */
v0 = this.mParticipants;
} // .end method
android.app.PendingIntent getReadPendingIntent ( ) {
/* .locals 1 */
/* .prologue */
/* .line 3092 */
v0 = this.mReadPendingIntent;
} // .end method
android.support.v4.app.RemoteInput getRemoteInput ( ) {
/* .locals 1 */
/* .prologue */
/* .line 3074 */
v0 = this.mRemoteInput;
} // .end method
android.support.v4.app.RemoteInputCompatBase$RemoteInput getRemoteInput ( ) { //bridge//synthethic
/* .locals 1 */
/* .prologue */
/* .line 3041 */
(( android.support.v4.app.NotificationCompat$CarExtender$UnreadConversation ) p0 ).getRemoteInput ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->getRemoteInput()Landroid/support/v4/app/RemoteInput;
} // .end method
android.app.PendingIntent getReplyPendingIntent ( ) {
/* .locals 1 */
/* .prologue */
/* .line 3083 */
v0 = this.mReplyPendingIntent;
} // .end method
