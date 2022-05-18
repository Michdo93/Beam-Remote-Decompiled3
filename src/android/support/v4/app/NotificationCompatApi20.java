class android.support.v4.app.NotificationCompatApi20 {
	 /* .source "NotificationCompatApi20.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/NotificationCompatApi20$Builder; */
	 /* } */
} // .end annotation
/* # direct methods */
 android.support.v4.app.NotificationCompatApi20 ( ) {
	 /* .locals 0 */
	 /* .prologue */
	 /* .line 30 */
	 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
	 /* .line 31 */
	 return;
} // .end method
public static void addAction ( android.app.Notification$Builder p0, android.support.v4.app.NotificationCompatBase$Action p1 ) {
	 /* .locals 8 */
	 /* .param p0, "b" # Landroid/app/Notification$Builder; */
	 /* .param p1, "action" # Landroid/support/v4/app/NotificationCompatBase$Action; */
	 /* .prologue */
	 /* .line 101 */
	 /* new-instance v0, Landroid/app/Notification$Action$Builder; */
	 v5 = 	 (( android.support.v4.app.NotificationCompatBase$Action ) p1 ).getIcon ( ); // invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I
	 (( android.support.v4.app.NotificationCompatBase$Action ) p1 ).getTitle ( ); // invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;
	 (( android.support.v4.app.NotificationCompatBase$Action ) p1 ).getActionIntent ( ); // invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;
	 /* invoke-direct {v0, v5, v6, v7}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V */
	 /* .line 103 */
	 /* .local v0, "actionBuilder":Landroid/app/Notification$Action$Builder; */
	 (( android.support.v4.app.NotificationCompatBase$Action ) p1 ).getRemoteInputs ( ); // invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
	 if ( v5 != null) { // if-eqz v5, :cond_0
		 /* .line 104 */
		 (( android.support.v4.app.NotificationCompatBase$Action ) p1 ).getRemoteInputs ( ); // invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
		 android.support.v4.app.RemoteInputCompatApi20 .fromCompat ( v5 );
		 /* .local v1, "arr$":[Landroid/app/RemoteInput; */
		 /* array-length v3, v1 */
		 /* .local v3, "len$":I */
		 int v2 = 0; // const/4 v2, 0x0
		 /* .local v2, "i$":I */
	 } // :goto_0
	 /* if-ge v2, v3, :cond_0 */
	 /* aget-object v4, v1, v2 */
	 /* .line 106 */
	 /* .local v4, "remoteInput":Landroid/app/RemoteInput; */
	 (( android.app.Notification$Action$Builder ) v0 ).addRemoteInput ( v4 ); // invoke-virtual {v0, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;
	 /* .line 104 */
	 /* add-int/lit8 v2, v2, 0x1 */
	 /* .line 109 */
} // .end local v1 # "arr$":[Landroid/app/RemoteInput;
} // .end local v2 # "i$":I
} // .end local v3 # "len$":I
} // .end local v4 # "remoteInput":Landroid/app/RemoteInput;
} // :cond_0
(( android.support.v4.app.NotificationCompatBase$Action ) p1 ).getExtras ( ); // invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;
if ( v5 != null) { // if-eqz v5, :cond_1
/* .line 110 */
(( android.support.v4.app.NotificationCompatBase$Action ) p1 ).getExtras ( ); // invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;
(( android.app.Notification$Action$Builder ) v0 ).addExtras ( v5 ); // invoke-virtual {v0, v5}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;
/* .line 112 */
} // :cond_1
(( android.app.Notification$Action$Builder ) v0 ).build ( ); // invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;
(( android.app.Notification$Builder ) p0 ).addAction ( v5 ); // invoke-virtual {p0, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
/* .line 113 */
return;
} // .end method
public static android.support.v4.app.NotificationCompatBase$Action getAction ( android.app.Notification p0, Integer p1, android.support.v4.app.NotificationCompatBase$Action$Factory p2, android.support.v4.app.RemoteInputCompatBase$RemoteInput$Factory p3 ) {
/* .locals 1 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .param p1, "actionIndex" # I */
/* .param p2, "actionFactory" # Landroid/support/v4/app/NotificationCompatBase$Action$Factory; */
/* .param p3, "remoteInputFactory" # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory; */
/* .prologue */
/* .line 118 */
v0 = this.actions;
/* aget-object v0, v0, p1 */
android.support.v4.app.NotificationCompatApi20 .getActionCompatFromAction ( v0,p2,p3 );
} // .end method
private static android.support.v4.app.NotificationCompatBase$Action getActionCompatFromAction ( android.app.Notification$Action p0, android.support.v4.app.NotificationCompatBase$Action$Factory p1, android.support.v4.app.RemoteInputCompatBase$RemoteInput$Factory p2 ) {
/* .locals 6 */
/* .param p0, "action" # Landroid/app/Notification$Action; */
/* .param p1, "actionFactory" # Landroid/support/v4/app/NotificationCompatBase$Action$Factory; */
/* .param p2, "remoteInputFactory" # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory; */
/* .prologue */
/* .line 124 */
(( android.app.Notification$Action ) p0 ).getRemoteInputs ( ); // invoke-virtual {p0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;
android.support.v4.app.RemoteInputCompatApi20 .toCompat ( v0,p2 );
/* .line 126 */
/* .local v5, "remoteInputs":[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput; */
/* iget v1, p0, Landroid/app/Notification$Action;->icon:I */
v2 = this.title;
v3 = this.actionIntent;
(( android.app.Notification$Action ) p0 ).getExtras ( ); // invoke-virtual {p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;
/* move-object v0, p1 */
/* invoke-interface/range {v0 ..v5}, Landroid/support/v4/app/NotificationCompatBase$Action$Factory;->build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/support/v4/app/NotificationCompatBase$Action; */
} // .end method
private static android.app.Notification$Action getActionFromActionCompat ( android.support.v4.app.NotificationCompatBase$Action p0 ) {
/* .locals 11 */
/* .param p0, "actionCompat" # Landroid/support/v4/app/NotificationCompatBase$Action; */
/* .prologue */
/* .line 132 */
/* new-instance v7, Landroid/app/Notification$Action$Builder; */
v8 = (( android.support.v4.app.NotificationCompatBase$Action ) p0 ).getIcon ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I
(( android.support.v4.app.NotificationCompatBase$Action ) p0 ).getTitle ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;
(( android.support.v4.app.NotificationCompatBase$Action ) p0 ).getActionIntent ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;
/* invoke-direct {v7, v8, v9, v10}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V */
(( android.support.v4.app.NotificationCompatBase$Action ) p0 ).getExtras ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;
(( android.app.Notification$Action$Builder ) v7 ).addExtras ( v8 ); // invoke-virtual {v7, v8}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;
/* .line 135 */
/* .local v0, "actionBuilder":Landroid/app/Notification$Action$Builder; */
(( android.support.v4.app.NotificationCompatBase$Action ) p0 ).getRemoteInputs ( ); // invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
/* .line 136 */
/* .local v5, "remoteInputCompats":[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput; */
if ( v5 != null) { // if-eqz v5, :cond_0
/* .line 137 */
android.support.v4.app.RemoteInputCompatApi20 .fromCompat ( v5 );
/* .line 138 */
/* .local v6, "remoteInputs":[Landroid/app/RemoteInput; */
/* move-object v1, v6 */
/* .local v1, "arr$":[Landroid/app/RemoteInput; */
/* array-length v3, v1 */
/* .local v3, "len$":I */
int v2 = 0; // const/4 v2, 0x0
/* .local v2, "i$":I */
} // :goto_0
/* if-ge v2, v3, :cond_0 */
/* aget-object v4, v1, v2 */
/* .line 139 */
/* .local v4, "remoteInput":Landroid/app/RemoteInput; */
(( android.app.Notification$Action$Builder ) v0 ).addRemoteInput ( v4 ); // invoke-virtual {v0, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;
/* .line 138 */
/* add-int/lit8 v2, v2, 0x1 */
/* .line 142 */
} // .end local v1 # "arr$":[Landroid/app/RemoteInput;
} // .end local v2 # "i$":I
} // .end local v3 # "len$":I
} // .end local v4 # "remoteInput":Landroid/app/RemoteInput;
} // .end local v6 # "remoteInputs":[Landroid/app/RemoteInput;
} // :cond_0
(( android.app.Notification$Action$Builder ) v0 ).build ( ); // invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;
} // .end method
public static android.support.v4.app.NotificationCompatBase$Action getActionsFromParcelableArrayList ( java.util.ArrayList p0, android.support.v4.app.NotificationCompatBase$Action$Factory p1, android.support.v4.app.RemoteInputCompatBase$RemoteInput$Factory p2 ) {
/* .locals 4 */
/* .param p1, "actionFactory" # Landroid/support/v4/app/NotificationCompatBase$Action$Factory; */
/* .param p2, "remoteInputFactory" # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/os/Parcelable;", */
/* ">;", */
/* "Landroid/support/v4/app/NotificationCompatBase$Action$Factory;", */
/* "Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;", */
/* ")[", */
/* "Landroid/support/v4/app/NotificationCompatBase$Action;" */
/* } */
} // .end annotation
/* .prologue */
/* .line 155 */
/* .local p0, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;" */
/* if-nez p0, :cond_1 */
/* .line 156 */
int v1 = 0; // const/4 v1, 0x0
/* .line 163 */
} // :cond_0
/* .line 158 */
} // :cond_1
v3 = (( java.util.ArrayList ) p0 ).size ( ); // invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
/* .line 159 */
/* .local v1, "actions":[Landroid/support/v4/app/NotificationCompatBase$Action; */
int v2 = 0; // const/4 v2, 0x0
/* .local v2, "i":I */
} // :goto_0
/* array-length v3, v1 */
/* if-ge v2, v3, :cond_0 */
/* .line 160 */
(( java.util.ArrayList ) p0 ).get ( v2 ); // invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v0, Landroid/app/Notification$Action; */
/* .line 161 */
/* .local v0, "action":Landroid/app/Notification$Action; */
android.support.v4.app.NotificationCompatApi20 .getActionCompatFromAction ( v0,p1,p2 );
/* aput-object v3, v1, v2 */
/* .line 159 */
/* add-int/lit8 v2, v2, 0x1 */
} // .end method
public static java.lang.String getGroup ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .prologue */
/* .line 188 */
(( android.app.Notification ) p0 ).getGroup ( ); // invoke-virtual {p0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;
} // .end method
public static Boolean getLocalOnly ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .prologue */
/* .line 184 */
/* iget v0, p0, Landroid/app/Notification;->flags:I */
/* and-int/lit16 v0, v0, 0x100 */
if ( v0 != null) { // if-eqz v0, :cond_0
int v0 = 1; // const/4 v0, 0x1
} // :goto_0
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
} // .end method
public static java.util.ArrayList getParcelableArrayListForActions ( android.support.v4.app.NotificationCompatBase$Action[] p0 ) {
/* .locals 6 */
/* .param p0, "actions" # [Landroid/support/v4/app/NotificationCompatBase$Action; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "([", */
/* "Landroid/support/v4/app/NotificationCompatBase$Action;", */
/* ")", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/os/Parcelable;", */
/* ">;" */
/* } */
} // .end annotation
/* .prologue */
/* .line 173 */
/* if-nez p0, :cond_1 */
/* .line 174 */
int v4 = 0; // const/4 v4, 0x0
/* .line 180 */
} // :cond_0
/* .line 176 */
} // :cond_1
/* new-instance v4, Ljava/util/ArrayList; */
/* array-length v5, p0 */
/* invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V */
/* .line 177 */
/* .local v4, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;" */
/* move-object v1, p0 */
/* .local v1, "arr$":[Landroid/support/v4/app/NotificationCompatBase$Action; */
/* array-length v3, v1 */
/* .local v3, "len$":I */
int v2 = 0; // const/4 v2, 0x0
/* .local v2, "i$":I */
} // :goto_0
/* if-ge v2, v3, :cond_0 */
/* aget-object v0, v1, v2 */
/* .line 178 */
/* .local v0, "action":Landroid/support/v4/app/NotificationCompatBase$Action; */
android.support.v4.app.NotificationCompatApi20 .getActionFromActionCompat ( v0 );
(( java.util.ArrayList ) v4 ).add ( v5 ); // invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
/* .line 177 */
/* add-int/lit8 v2, v2, 0x1 */
} // .end method
public static java.lang.String getSortKey ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .prologue */
/* .line 196 */
(( android.app.Notification ) p0 ).getSortKey ( ); // invoke-virtual {p0}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;
} // .end method
public static Boolean isGroupSummary ( android.app.Notification p0 ) {
/* .locals 1 */
/* .param p0, "notif" # Landroid/app/Notification; */
/* .prologue */
/* .line 192 */
/* iget v0, p0, Landroid/app/Notification;->flags:I */
/* and-int/lit16 v0, v0, 0x200 */
if ( v0 != null) { // if-eqz v0, :cond_0
int v0 = 1; // const/4 v0, 0x1
} // :goto_0
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
} // .end method
