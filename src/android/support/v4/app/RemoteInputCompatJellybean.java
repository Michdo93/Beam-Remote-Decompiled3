class android.support.v4.app.RemoteInputCompatJellybean {
	 /* .source "RemoteInputCompatJellybean.java" */
	 /* # static fields */
	 public static final java.lang.String EXTRA_RESULTS_DATA;
	 private static final java.lang.String KEY_ALLOW_FREE_FORM_INPUT;
	 private static final java.lang.String KEY_CHOICES;
	 private static final java.lang.String KEY_EXTRAS;
	 private static final java.lang.String KEY_LABEL;
	 private static final java.lang.String KEY_RESULT_KEY;
	 public static final java.lang.String RESULTS_CLIP_LABEL;
	 /* # direct methods */
	 android.support.v4.app.RemoteInputCompatJellybean ( ) {
		 /* .locals 0 */
		 /* .prologue */
		 /* .line 24 */
		 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
		 return;
	 } // .end method
	 static void addResultsToIntent ( android.support.v4.app.RemoteInputCompatBase$RemoteInput[] p0, android.content.Intent p1, android.os.Bundle p2 ) {
		 /* .locals 8 */
		 /* .param p0, "remoteInputs" # [Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput; */
		 /* .param p1, "intent" # Landroid/content/Intent; */
		 /* .param p2, "results" # Landroid/os/Bundle; */
		 /* .prologue */
		 /* .line 96 */
		 /* new-instance v6, Landroid/os/Bundle; */
		 /* invoke-direct {v6}, Landroid/os/Bundle;-><init>()V */
		 /* .line 97 */
		 /* .local v6, "resultsBundle":Landroid/os/Bundle; */
		 /* move-object v0, p0 */
		 /* .local v0, "arr$":[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput; */
		 /* array-length v3, v0 */
		 /* .local v3, "len$":I */
		 int v2 = 0; // const/4 v2, 0x0
		 /* .local v2, "i$":I */
	 } // :goto_0
	 /* if-ge v2, v3, :cond_1 */
	 /* aget-object v4, v0, v2 */
	 /* .line 98 */
	 /* .local v4, "remoteInput":Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput; */
	 (( android.support.v4.app.RemoteInputCompatBase$RemoteInput ) v4 ).getResultKey ( ); // invoke-virtual {v4}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;
	 (( android.os.Bundle ) p2 ).get ( v7 ); // invoke-virtual {p2, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
	 /* .line 99 */
	 /* .local v5, "result":Ljava/lang/Object; */
	 /* instance-of v7, v5, Ljava/lang/CharSequence; */
	 if ( v7 != null) { // if-eqz v7, :cond_0
		 /* .line 100 */
		 (( android.support.v4.app.RemoteInputCompatBase$RemoteInput ) v4 ).getResultKey ( ); // invoke-virtual {v4}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;
		 /* check-cast v5, Ljava/lang/CharSequence; */
	 } // .end local v5 # "result":Ljava/lang/Object;
	 (( android.os.Bundle ) v6 ).putCharSequence ( v7, v5 ); // invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
	 /* .line 97 */
} // :cond_0
/* add-int/lit8 v2, v2, 0x1 */
/* .line 103 */
} // .end local v4 # "remoteInput":Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
} // :cond_1
/* new-instance v1, Landroid/content/Intent; */
/* invoke-direct {v1}, Landroid/content/Intent;-><init>()V */
/* .line 104 */
/* .local v1, "clipIntent":Landroid/content/Intent; */
final String v7 = "android.remoteinput.resultsData"; // const-string v7, "android.remoteinput.resultsData"
(( android.content.Intent ) v1 ).putExtra ( v7, v6 ); // invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
/* .line 105 */
final String v7 = "android.remoteinput.results"; // const-string v7, "android.remoteinput.results"
android.content.ClipData .newIntent ( v7,v1 );
(( android.content.Intent ) p1 ).setClipData ( v7 ); // invoke-virtual {p1, v7}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V
/* .line 106 */
return;
} // .end method
static android.support.v4.app.RemoteInputCompatBase$RemoteInput fromBundle ( android.os.Bundle p0, android.support.v4.app.RemoteInputCompatBase$RemoteInput$Factory p1 ) {
/* .locals 6 */
/* .param p0, "data" # Landroid/os/Bundle; */
/* .param p1, "factory" # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory; */
/* .prologue */
/* .line 39 */
final String v0 = "resultKey"; // const-string v0, "resultKey"
(( android.os.Bundle ) p0 ).getString ( v0 ); // invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
final String v0 = "label"; // const-string v0, "label"
(( android.os.Bundle ) p0 ).getCharSequence ( v0 ); // invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
final String v0 = "choices"; // const-string v0, "choices"
(( android.os.Bundle ) p0 ).getCharSequenceArray ( v0 ); // invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
final String v0 = "allowFreeFormInput"; // const-string v0, "allowFreeFormInput"
v4 = (( android.os.Bundle ) p0 ).getBoolean ( v0 ); // invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
final String v0 = "extras"; // const-string v0, "extras"
(( android.os.Bundle ) p0 ).getBundle ( v0 ); // invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
/* move-object v0, p1 */
/* invoke-interface/range {v0 ..v5}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;->build(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput; */
} // .end method
static android.support.v4.app.RemoteInputCompatBase$RemoteInput fromBundleArray ( android.os.Bundle[] p0, android.support.v4.app.RemoteInputCompatBase$RemoteInput$Factory p1 ) {
/* .locals 3 */
/* .param p0, "bundles" # [Landroid/os/Bundle; */
/* .param p1, "factory" # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory; */
/* .prologue */
/* .line 58 */
/* if-nez p0, :cond_1 */
/* .line 59 */
int v1 = 0; // const/4 v1, 0x0
/* .line 65 */
} // :cond_0
/* .line 61 */
} // :cond_1
/* array-length v2, p0 */
/* .line 62 */
/* .local v1, "remoteInputs":[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput; */
int v0 = 0; // const/4 v0, 0x0
/* .local v0, "i":I */
} // :goto_0
/* array-length v2, p0 */
/* if-ge v0, v2, :cond_0 */
/* .line 63 */
/* aget-object v2, p0, v0 */
android.support.v4.app.RemoteInputCompatJellybean .fromBundle ( v2,p1 );
/* aput-object v2, v1, v0 */
/* .line 62 */
/* add-int/lit8 v0, v0, 0x1 */
} // .end method
static android.os.Bundle getResultsFromIntent ( android.content.Intent p0 ) {
/* .locals 5 */
/* .param p0, "intent" # Landroid/content/Intent; */
/* .prologue */
int v2 = 0; // const/4 v2, 0x0
/* .line 80 */
(( android.content.Intent ) p0 ).getClipData ( ); // invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;
/* .line 81 */
/* .local v0, "clipData":Landroid/content/ClipData; */
/* if-nez v0, :cond_1 */
/* .line 91 */
} // :cond_0
} // :goto_0
/* .line 84 */
} // :cond_1
(( android.content.ClipData ) v0 ).getDescription ( ); // invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;
/* .line 85 */
/* .local v1, "clipDescription":Landroid/content/ClipDescription; */
final String v3 = "text/vnd.android.intent"; // const-string v3, "text/vnd.android.intent"
v3 = (( android.content.ClipDescription ) v1 ).hasMimeType ( v3 ); // invoke-virtual {v1, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z
if ( v3 != null) { // if-eqz v3, :cond_0
/* .line 88 */
(( android.content.ClipDescription ) v1 ).getLabel ( ); // invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;
final String v4 = "android.remoteinput.results"; // const-string v4, "android.remoteinput.results"
v3 = (( java.lang.Object ) v3 ).equals ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
if ( v3 != null) { // if-eqz v3, :cond_0
/* .line 89 */
int v2 = 0; // const/4 v2, 0x0
(( android.content.ClipData ) v0 ).getItemAt ( v2 ); // invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;
(( android.content.ClipData$Item ) v2 ).getIntent ( ); // invoke-virtual {v2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;
(( android.content.Intent ) v2 ).getExtras ( ); // invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
final String v3 = "android.remoteinput.resultsData"; // const-string v3, "android.remoteinput.resultsData"
(( android.os.Bundle ) v2 ).getParcelable ( v3 ); // invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
/* check-cast v2, Landroid/os/Bundle; */
} // .end method
static android.os.Bundle toBundle ( android.support.v4.app.RemoteInputCompatBase$RemoteInput p0 ) {
/* .locals 3 */
/* .param p0, "remoteInput" # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput; */
/* .prologue */
/* .line 47 */
/* new-instance v0, Landroid/os/Bundle; */
/* invoke-direct {v0}, Landroid/os/Bundle;-><init>()V */
/* .line 48 */
/* .local v0, "data":Landroid/os/Bundle; */
final String v1 = "resultKey"; // const-string v1, "resultKey"
(( android.support.v4.app.RemoteInputCompatBase$RemoteInput ) p0 ).getResultKey ( ); // invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;
(( android.os.Bundle ) v0 ).putString ( v1, v2 ); // invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
/* .line 49 */
final String v1 = "label"; // const-string v1, "label"
(( android.support.v4.app.RemoteInputCompatBase$RemoteInput ) p0 ).getLabel ( ); // invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getLabel()Ljava/lang/CharSequence;
(( android.os.Bundle ) v0 ).putCharSequence ( v1, v2 ); // invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
/* .line 50 */
final String v1 = "choices"; // const-string v1, "choices"
(( android.support.v4.app.RemoteInputCompatBase$RemoteInput ) p0 ).getChoices ( ); // invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getChoices()[Ljava/lang/CharSequence;
(( android.os.Bundle ) v0 ).putCharSequenceArray ( v1, v2 ); // invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
/* .line 51 */
final String v1 = "allowFreeFormInput"; // const-string v1, "allowFreeFormInput"
v2 = (( android.support.v4.app.RemoteInputCompatBase$RemoteInput ) p0 ).getAllowFreeFormInput ( ); // invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getAllowFreeFormInput()Z
(( android.os.Bundle ) v0 ).putBoolean ( v1, v2 ); // invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
/* .line 52 */
final String v1 = "extras"; // const-string v1, "extras"
(( android.support.v4.app.RemoteInputCompatBase$RemoteInput ) p0 ).getExtras ( ); // invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getExtras()Landroid/os/Bundle;
(( android.os.Bundle ) v0 ).putBundle ( v1, v2 ); // invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
/* .line 53 */
} // .end method
static android.os.Bundle toBundleArray ( android.support.v4.app.RemoteInputCompatBase$RemoteInput[] p0 ) {
/* .locals 3 */
/* .param p0, "remoteInputs" # [Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput; */
/* .prologue */
/* .line 69 */
/* if-nez p0, :cond_1 */
/* .line 70 */
int v0 = 0; // const/4 v0, 0x0
/* .line 76 */
} // :cond_0
/* .line 72 */
} // :cond_1
/* array-length v2, p0 */
/* new-array v0, v2, [Landroid/os/Bundle; */
/* .line 73 */
/* .local v0, "bundles":[Landroid/os/Bundle; */
int v1 = 0; // const/4 v1, 0x0
/* .local v1, "i":I */
} // :goto_0
/* array-length v2, p0 */
/* if-ge v1, v2, :cond_0 */
/* .line 74 */
/* aget-object v2, p0, v1 */
android.support.v4.app.RemoteInputCompatJellybean .toBundle ( v2 );
/* aput-object v2, v0, v1 */
/* .line 73 */
/* add-int/lit8 v1, v1, 0x1 */
} // .end method
