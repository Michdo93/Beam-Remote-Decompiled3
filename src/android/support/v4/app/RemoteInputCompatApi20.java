class android.support.v4.app.RemoteInputCompatApi20 {
	 /* .source "RemoteInputCompatApi20.java" */
	 /* # direct methods */
	 android.support.v4.app.RemoteInputCompatApi20 ( ) {
		 /* .locals 0 */
		 /* .prologue */
		 /* .line 23 */
		 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
		 return;
	 } // .end method
	 static void addResultsToIntent ( android.support.v4.app.RemoteInputCompatBase$RemoteInput[] p0, android.content.Intent p1, android.os.Bundle p2 ) {
		 /* .locals 1 */
		 /* .param p0, "remoteInputs" # [Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput; */
		 /* .param p1, "intent" # Landroid/content/Intent; */
		 /* .param p2, "results" # Landroid/os/Bundle; */
		 /* .prologue */
		 /* .line 61 */
		 android.support.v4.app.RemoteInputCompatApi20 .fromCompat ( p0 );
		 android.app.RemoteInput .addResultsToIntent ( v0,p1,p2 );
		 /* .line 62 */
		 return;
	 } // .end method
	 static android.app.RemoteInput fromCompat ( android.support.v4.app.RemoteInputCompatBase$RemoteInput[] p0 ) {
		 /* .locals 5 */
		 /* .param p0, "srcArray" # [Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput; */
		 /* .prologue */
		 /* .line 39 */
		 /* if-nez p0, :cond_1 */
		 /* .line 40 */
		 int v1 = 0; // const/4 v1, 0x0
		 /* .line 52 */
	 } // :cond_0
	 /* .line 42 */
} // :cond_1
/* array-length v3, p0 */
/* new-array v1, v3, [Landroid/app/RemoteInput; */
/* .line 43 */
/* .local v1, "result":[Landroid/app/RemoteInput; */
int v0 = 0; // const/4 v0, 0x0
/* .local v0, "i":I */
} // :goto_0
/* array-length v3, p0 */
/* if-ge v0, v3, :cond_0 */
/* .line 44 */
/* aget-object v2, p0, v0 */
/* .line 45 */
/* .local v2, "src":Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput; */
/* new-instance v3, Landroid/app/RemoteInput$Builder; */
(( android.support.v4.app.RemoteInputCompatBase$RemoteInput ) v2 ).getResultKey ( ); // invoke-virtual {v2}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;
/* invoke-direct {v3, v4}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V */
(( android.support.v4.app.RemoteInputCompatBase$RemoteInput ) v2 ).getLabel ( ); // invoke-virtual {v2}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getLabel()Ljava/lang/CharSequence;
(( android.app.RemoteInput$Builder ) v3 ).setLabel ( v4 ); // invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;
(( android.support.v4.app.RemoteInputCompatBase$RemoteInput ) v2 ).getChoices ( ); // invoke-virtual {v2}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getChoices()[Ljava/lang/CharSequence;
(( android.app.RemoteInput$Builder ) v3 ).setChoices ( v4 ); // invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;
v4 = (( android.support.v4.app.RemoteInputCompatBase$RemoteInput ) v2 ).getAllowFreeFormInput ( ); // invoke-virtual {v2}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getAllowFreeFormInput()Z
(( android.app.RemoteInput$Builder ) v3 ).setAllowFreeFormInput ( v4 ); // invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;
(( android.support.v4.app.RemoteInputCompatBase$RemoteInput ) v2 ).getExtras ( ); // invoke-virtual {v2}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getExtras()Landroid/os/Bundle;
(( android.app.RemoteInput$Builder ) v3 ).addExtras ( v4 ); // invoke-virtual {v3, v4}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;
(( android.app.RemoteInput$Builder ) v3 ).build ( ); // invoke-virtual {v3}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;
/* aput-object v3, v1, v0 */
/* .line 43 */
/* add-int/lit8 v0, v0, 0x1 */
} // .end method
static android.os.Bundle getResultsFromIntent ( android.content.Intent p0 ) {
/* .locals 1 */
/* .param p0, "intent" # Landroid/content/Intent; */
/* .prologue */
/* .line 56 */
android.app.RemoteInput .getResultsFromIntent ( p0 );
} // .end method
static android.support.v4.app.RemoteInputCompatBase$RemoteInput toCompat ( android.app.RemoteInput[] p0, android.support.v4.app.RemoteInputCompatBase$RemoteInput$Factory p1 ) {
/* .locals 9 */
/* .param p0, "srcArray" # [Landroid/app/RemoteInput; */
/* .param p1, "factory" # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory; */
/* .prologue */
/* .line 26 */
/* if-nez p0, :cond_1 */
/* .line 27 */
int v7 = 0; // const/4 v7, 0x0
/* .line 35 */
} // :cond_0
/* .line 29 */
} // :cond_1
/* array-length v0, p0 */
/* .line 30 */
/* .local v7, "result":[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput; */
int v6 = 0; // const/4 v6, 0x0
/* .local v6, "i":I */
} // :goto_0
/* array-length v0, p0 */
/* if-ge v6, v0, :cond_0 */
/* .line 31 */
/* aget-object v8, p0, v6 */
/* .line 32 */
/* .local v8, "src":Landroid/app/RemoteInput; */
(( android.app.RemoteInput ) v8 ).getResultKey ( ); // invoke-virtual {v8}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;
(( android.app.RemoteInput ) v8 ).getLabel ( ); // invoke-virtual {v8}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;
(( android.app.RemoteInput ) v8 ).getChoices ( ); // invoke-virtual {v8}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;
v4 = (( android.app.RemoteInput ) v8 ).getAllowFreeFormInput ( ); // invoke-virtual {v8}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z
(( android.app.RemoteInput ) v8 ).getExtras ( ); // invoke-virtual {v8}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;
/* move-object v0, p1 */
/* invoke-interface/range {v0 ..v5}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;->build(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput; */
/* aput-object v0, v7, v6 */
/* .line 30 */
/* add-int/lit8 v6, v6, 0x1 */
} // .end method
