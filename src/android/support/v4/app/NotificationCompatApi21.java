class android.support.v4.app.NotificationCompatApi21 {
	 /* .source "NotificationCompatApi21.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/NotificationCompatApi21$Builder; */
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
private static final java.lang.String KEY_AUTHOR;
private static final java.lang.String KEY_MESSAGES;
private static final java.lang.String KEY_ON_READ;
private static final java.lang.String KEY_ON_REPLY;
private static final java.lang.String KEY_PARTICIPANTS;
private static final java.lang.String KEY_REMOTE_INPUT;
private static final java.lang.String KEY_TEXT;
private static final java.lang.String KEY_TIMESTAMP;
/* # direct methods */
 android.support.v4.app.NotificationCompatApi21 ( ) {
	 /* .locals 0 */
	 /* .prologue */
	 /* .line 29 */
	 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
	 /* .line 55 */
	 return;
} // .end method
private static android.app.RemoteInput fromCompatRemoteInput ( android.support.v4.app.RemoteInputCompatBase$RemoteInput p0 ) {
	 /* .locals 2 */
	 /* .param p0, "src" # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput; */
	 /* .prologue */
	 /* .line 205 */
	 /* new-instance v0, Landroid/app/RemoteInput$Builder; */
	 (( android.support.v4.app.RemoteInputCompatBase$RemoteInput ) p0 ).getResultKey ( ); // invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;
	 /* invoke-direct {v0, v1}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V */
	 (( android.support.v4.app.RemoteInputCompatBase$RemoteInput ) p0 ).getLabel ( ); // invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getLabel()Ljava/lang/CharSequence;
	 (( android.app.RemoteInput$Builder ) v0 ).setLabel ( v1 ); // invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;
	 (( android.support.v4.app.RemoteInputCompatBase$RemoteInput ) p0 ).getChoices ( ); // invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getChoices()[Ljava/lang/CharSequence;
	 (( android.app.RemoteInput$Builder ) v0 ).setChoices ( v1 ); // invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;
	 v1 = 	 (( android.support.v4.app.RemoteInputCompatBase$RemoteInput ) p0 ).getAllowFreeFormInput ( ); // invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getAllowFreeFormInput()Z
	 (( android.app.RemoteInput$Builder ) v0 ).setAllowFreeFormInput ( v1 ); // invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;
	 (( android.support.v4.app.RemoteInputCompatBase$RemoteInput ) p0 ).getExtras ( ); // invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getExtras()Landroid/os/Bundle;
	 (( android.app.RemoteInput$Builder ) v0 ).addExtras ( v1 ); // invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;
	 (( android.app.RemoteInput$Builder ) v0 ).build ( ); // invoke-virtual {v0}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;
} // .end method
static android.os.Bundle getBundleForUnreadConversation ( android.support.v4.app.NotificationCompatBase$UnreadConversation p0 ) {
	 /* .locals 10 */
	 /* .param p0, "uc" # Landroid/support/v4/app/NotificationCompatBase$UnreadConversation; */
	 /* .prologue */
	 /* .line 128 */
	 /* if-nez p0, :cond_0 */
	 /* .line 129 */
	 int v1 = 0; // const/4 v1, 0x0
	 /* .line 152 */
} // :goto_0
/* .line 131 */
} // :cond_0
/* new-instance v1, Landroid/os/Bundle; */
/* invoke-direct {v1}, Landroid/os/Bundle;-><init>()V */
/* .line 132 */
/* .local v1, "b":Landroid/os/Bundle; */
int v0 = 0; // const/4 v0, 0x0
/* .line 133 */
/* .local v0, "author":Ljava/lang/String; */
(( android.support.v4.app.NotificationCompatBase$UnreadConversation ) p0 ).getParticipants ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getParticipants()[Ljava/lang/String;
if ( v6 != null) { // if-eqz v6, :cond_1
(( android.support.v4.app.NotificationCompatBase$UnreadConversation ) p0 ).getParticipants ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getParticipants()[Ljava/lang/String;
/* array-length v6, v6 */
int v7 = 1; // const/4 v7, 0x1
/* if-le v6, v7, :cond_1 */
/* .line 134 */
(( android.support.v4.app.NotificationCompatBase$UnreadConversation ) p0 ).getParticipants ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getParticipants()[Ljava/lang/String;
int v7 = 0; // const/4 v7, 0x0
/* aget-object v0, v6, v7 */
/* .line 136 */
} // :cond_1
(( android.support.v4.app.NotificationCompatBase$UnreadConversation ) p0 ).getMessages ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getMessages()[Ljava/lang/String;
/* array-length v6, v6 */
/* new-array v4, v6, [Landroid/os/Parcelable; */
/* .line 137 */
/* .local v4, "messages":[Landroid/os/Parcelable; */
int v2 = 0; // const/4 v2, 0x0
/* .local v2, "i":I */
} // :goto_1
/* array-length v6, v4 */
/* if-ge v2, v6, :cond_2 */
/* .line 138 */
/* new-instance v3, Landroid/os/Bundle; */
/* invoke-direct {v3}, Landroid/os/Bundle;-><init>()V */
/* .line 139 */
/* .local v3, "m":Landroid/os/Bundle; */
final String v6 = "text"; // const-string v6, "text"
(( android.support.v4.app.NotificationCompatBase$UnreadConversation ) p0 ).getMessages ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getMessages()[Ljava/lang/String;
/* aget-object v7, v7, v2 */
(( android.os.Bundle ) v3 ).putString ( v6, v7 ); // invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
/* .line 140 */
final String v6 = "author"; // const-string v6, "author"
(( android.os.Bundle ) v3 ).putString ( v6, v0 ); // invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
/* .line 141 */
/* aput-object v3, v4, v2 */
/* .line 137 */
/* add-int/lit8 v2, v2, 0x1 */
/* .line 143 */
} // .end local v3 # "m":Landroid/os/Bundle;
} // :cond_2
final String v6 = "messages"; // const-string v6, "messages"
(( android.os.Bundle ) v1 ).putParcelableArray ( v6, v4 ); // invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
/* .line 144 */
(( android.support.v4.app.NotificationCompatBase$UnreadConversation ) p0 ).getRemoteInput ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getRemoteInput()Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
/* .line 145 */
/* .local v5, "remoteInput":Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput; */
if ( v5 != null) { // if-eqz v5, :cond_3
/* .line 146 */
final String v6 = "remote_input"; // const-string v6, "remote_input"
android.support.v4.app.NotificationCompatApi21 .fromCompatRemoteInput ( v5 );
(( android.os.Bundle ) v1 ).putParcelable ( v6, v7 ); // invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
/* .line 148 */
} // :cond_3
final String v6 = "on_reply"; // const-string v6, "on_reply"
(( android.support.v4.app.NotificationCompatBase$UnreadConversation ) p0 ).getReplyPendingIntent ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getReplyPendingIntent()Landroid/app/PendingIntent;
(( android.os.Bundle ) v1 ).putParcelable ( v6, v7 ); // invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
/* .line 149 */
final String v6 = "on_read"; // const-string v6, "on_read"
(( android.support.v4.app.NotificationCompatBase$UnreadConversation ) p0 ).getReadPendingIntent ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getReadPendingIntent()Landroid/app/PendingIntent;
(( android.os.Bundle ) v1 ).putParcelable ( v6, v7 ); // invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
/* .line 150 */
final String v6 = "participants"; // const-string v6, "participants"
(( android.support.v4.app.NotificationCompatBase$UnreadConversation ) p0 ).getParticipants ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getParticipants()[Ljava/lang/String;
(( android.os.Bundle ) v1 ).putStringArray ( v6, v7 ); // invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
/* .line 151 */
final String v6 = "timestamp"; // const-string v6, "timestamp"
(( android.support.v4.app.NotificationCompatBase$UnreadConversation ) p0 ).getLatestTimestamp ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getLatestTimestamp()J
/* move-result-wide v8 */
(( android.os.Bundle ) v1 ).putLong ( v6, v8, v9 ); // invoke-virtual {v1, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
} // .end method
public static java.lang.String getCategory ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .prologue */
/* .line 124 */
v0 = this.category;
} // .end method
static android.support.v4.app.NotificationCompatBase$UnreadConversation getUnreadConversationFromBundle ( android.os.Bundle p0, android.support.v4.app.NotificationCompatBase$UnreadConversation$Factory p1, android.support.v4.app.RemoteInputCompatBase$RemoteInput$Factory p2 ) {
/* .locals 13 */
/* .param p0, "b" # Landroid/os/Bundle; */
/* .param p1, "factory" # Landroid/support/v4/app/NotificationCompatBase$UnreadConversation$Factory; */
/* .param p2, "remoteInputFactory" # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory; */
/* .prologue */
int v2 = 0; // const/4 v2, 0x0
/* .line 158 */
/* if-nez p0, :cond_1 */
/* .line 195 */
} // :cond_0
} // :goto_0
/* .line 161 */
} // :cond_1
final String v0 = "messages"; // const-string v0, "messages"
(( android.os.Bundle ) p0 ).getParcelableArray ( v0 ); // invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
/* .line 162 */
/* .local v9, "parcelableMessages":[Landroid/os/Parcelable; */
int v1 = 0; // const/4 v1, 0x0
/* .line 163 */
/* .local v1, "messages":[Ljava/lang/String; */
if ( v9 != null) { // if-eqz v9, :cond_3
/* .line 164 */
/* array-length v0, v9 */
/* new-array v12, v0, [Ljava/lang/String; */
/* .line 165 */
/* .local v12, "tmp":[Ljava/lang/String; */
int v11 = 1; // const/4 v11, 0x1
/* .line 166 */
/* .local v11, "success":Z */
int v8 = 0; // const/4 v8, 0x0
/* .local v8, "i":I */
} // :goto_1
/* array-length v0, v12 */
/* if-ge v8, v0, :cond_2 */
/* .line 167 */
/* aget-object v0, v9, v8 */
/* instance-of v0, v0, Landroid/os/Bundle; */
/* if-nez v0, :cond_5 */
/* .line 168 */
int v11 = 0; // const/4 v11, 0x0
/* .line 177 */
} // :cond_2
} // :goto_2
if ( v11 != null) { // if-eqz v11, :cond_0
/* .line 178 */
/* move-object v1, v12 */
/* .line 184 */
} // .end local v8 # "i":I
} // .end local v11 # "success":Z
} // .end local v12 # "tmp":[Ljava/lang/String;
} // :cond_3
final String v0 = "on_read"; // const-string v0, "on_read"
(( android.os.Bundle ) p0 ).getParcelable ( v0 ); // invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
/* check-cast v4, Landroid/app/PendingIntent; */
/* .line 185 */
/* .local v4, "onRead":Landroid/app/PendingIntent; */
final String v0 = "on_reply"; // const-string v0, "on_reply"
(( android.os.Bundle ) p0 ).getParcelable ( v0 ); // invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
/* check-cast v3, Landroid/app/PendingIntent; */
/* .line 187 */
/* .local v3, "onReply":Landroid/app/PendingIntent; */
final String v0 = "remote_input"; // const-string v0, "remote_input"
(( android.os.Bundle ) p0 ).getParcelable ( v0 ); // invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
/* check-cast v10, Landroid/app/RemoteInput; */
/* .line 189 */
/* .local v10, "remoteInput":Landroid/app/RemoteInput; */
final String v0 = "participants"; // const-string v0, "participants"
(( android.os.Bundle ) p0 ).getStringArray ( v0 ); // invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;
/* .line 190 */
/* .local v5, "participants":[Ljava/lang/String; */
if ( v5 != null) { // if-eqz v5, :cond_0
/* array-length v0, v5 */
int v6 = 1; // const/4 v6, 0x1
/* if-ne v0, v6, :cond_0 */
/* .line 195 */
if ( v10 != null) { // if-eqz v10, :cond_4
android.support.v4.app.NotificationCompatApi21 .toCompatRemoteInput ( v10,p2 );
} // :cond_4
final String v0 = "timestamp"; // const-string v0, "timestamp"
(( android.os.Bundle ) p0 ).getLong ( v0 ); // invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
/* move-result-wide v6 */
/* move-object v0, p1 */
/* invoke-interface/range {v0 ..v7}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;->build([Ljava/lang/String;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)Landroid/support/v4/app/NotificationCompatBase$UnreadConversation; */
/* .line 171 */
} // .end local v3 # "onReply":Landroid/app/PendingIntent;
} // .end local v4 # "onRead":Landroid/app/PendingIntent;
} // .end local v5 # "participants":[Ljava/lang/String;
} // .end local v10 # "remoteInput":Landroid/app/RemoteInput;
/* .restart local v8 # "i":I */
/* .restart local v11 # "success":Z */
/* .restart local v12 # "tmp":[Ljava/lang/String; */
} // :cond_5
/* aget-object v0, v9, v8 */
/* check-cast v0, Landroid/os/Bundle; */
final String v6 = "text"; // const-string v6, "text"
(( android.os.Bundle ) v0 ).getString ( v6 ); // invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
/* aput-object v0, v12, v8 */
/* .line 172 */
/* aget-object v0, v12, v8 */
/* if-nez v0, :cond_6 */
/* .line 173 */
int v11 = 0; // const/4 v11, 0x0
/* .line 174 */
/* .line 166 */
} // :cond_6
/* add-int/lit8 v8, v8, 0x1 */
} // .end method
private static android.support.v4.app.RemoteInputCompatBase$RemoteInput toCompatRemoteInput ( android.app.RemoteInput p0, android.support.v4.app.RemoteInputCompatBase$RemoteInput$Factory p1 ) {
/* .locals 6 */
/* .param p0, "remoteInput" # Landroid/app/RemoteInput; */
/* .param p1, "factory" # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory; */
/* .prologue */
/* .line 216 */
(( android.app.RemoteInput ) p0 ).getResultKey ( ); // invoke-virtual {p0}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;
(( android.app.RemoteInput ) p0 ).getLabel ( ); // invoke-virtual {p0}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;
(( android.app.RemoteInput ) p0 ).getChoices ( ); // invoke-virtual {p0}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;
v4 = (( android.app.RemoteInput ) p0 ).getAllowFreeFormInput ( ); // invoke-virtual {p0}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z
(( android.app.RemoteInput ) p0 ).getExtras ( ); // invoke-virtual {p0}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;
/* move-object v0, p1 */
/* invoke-interface/range {v0 ..v5}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;->build(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput; */
} // .end method
