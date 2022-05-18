public class android.support.v4.app.NotificationCompat$CarExtender$UnreadConversation$Builder {
	 /* .source "NotificationCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x9 */
/* name = "Builder" */
} // .end annotation
/* # instance fields */
private Long mLatestTimestamp;
private final java.util.List mMessages;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/List", */
/* "<", */
/* "Ljava/lang/String;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final java.lang.String mParticipant;
private android.app.PendingIntent mReadPendingIntent;
private android.support.v4.app.RemoteInput mRemoteInput;
private android.app.PendingIntent mReplyPendingIntent;
/* # direct methods */
public android.support.v4.app.NotificationCompat$CarExtender$UnreadConversation$Builder ( ) {
/* .locals 1 */
/* .param p1, "name" # Ljava/lang/String; */
/* .prologue */
/* .line 3149 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 3137 */
/* new-instance v0, Ljava/util/ArrayList; */
/* invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V */
this.mMessages = v0;
/* .line 3150 */
this.mParticipant = p1;
/* .line 3151 */
return;
} // .end method
/* # virtual methods */
public android.support.v4.app.NotificationCompat$CarExtender$UnreadConversation$Builder addMessage ( java.lang.String p0 ) {
/* .locals 1 */
/* .param p1, "message" # Ljava/lang/String; */
/* .prologue */
/* .line 3162 */
v0 = this.mMessages;
/* .line 3163 */
} // .end method
public android.support.v4.app.NotificationCompat$CarExtender$UnreadConversation build ( ) {
/* .locals 8 */
/* .prologue */
/* .line 3219 */
v0 = this.mMessages;
v2 = v2 = this.mMessages;
/* new-array v2, v2, [Ljava/lang/String; */
/* check-cast v1, [Ljava/lang/String; */
/* .line 3220 */
/* .local v1, "messages":[Ljava/lang/String; */
int v0 = 1; // const/4 v0, 0x1
/* new-array v5, v0, [Ljava/lang/String; */
int v0 = 0; // const/4 v0, 0x0
v2 = this.mParticipant;
/* aput-object v2, v5, v0 */
/* .line 3221 */
/* .local v5, "participants":[Ljava/lang/String; */
/* new-instance v0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation; */
v2 = this.mRemoteInput;
v3 = this.mReplyPendingIntent;
v4 = this.mReadPendingIntent;
/* iget-wide v6, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mLatestTimestamp:J */
/* invoke-direct/range {v0 ..v7}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroid/support/v4/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V */
} // .end method
public android.support.v4.app.NotificationCompat$CarExtender$UnreadConversation$Builder setLatestTimestamp ( Long p0 ) {
/* .locals 1 */
/* .param p1, "timestamp" # J */
/* .prologue */
/* .line 3209 */
/* iput-wide p1, p0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$Builder;->mLatestTimestamp:J */
/* .line 3210 */
} // .end method
public android.support.v4.app.NotificationCompat$CarExtender$UnreadConversation$Builder setReadPendingIntent ( android.app.PendingIntent p0 ) {
/* .locals 0 */
/* .param p1, "pendingIntent" # Landroid/app/PendingIntent; */
/* .prologue */
/* .line 3193 */
this.mReadPendingIntent = p1;
/* .line 3194 */
} // .end method
public android.support.v4.app.NotificationCompat$CarExtender$UnreadConversation$Builder setReplyAction ( android.app.PendingIntent p0, android.support.v4.app.RemoteInput p1 ) {
/* .locals 0 */
/* .param p1, "pendingIntent" # Landroid/app/PendingIntent; */
/* .param p2, "remoteInput" # Landroid/support/v4/app/RemoteInput; */
/* .prologue */
/* .line 3179 */
this.mRemoteInput = p2;
/* .line 3180 */
this.mReplyPendingIntent = p1;
/* .line 3182 */
} // .end method
