public class android.support.v4.app.RemoteInput extends android.support.v4.app.RemoteInputCompatBase$RemoteInput {
	 /* .source "RemoteInput.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/RemoteInput$ImplApi20;, */
	 /* Landroid/support/v4/app/RemoteInput$ImplJellybean;, */
	 /* Landroid/support/v4/app/RemoteInput$ImplBase;, */
	 /* Landroid/support/v4/app/RemoteInput$Impl;, */
	 /* Landroid/support/v4/app/RemoteInput$Builder; */
	 /* } */
} // .end annotation
/* # static fields */
public static final java.lang.String EXTRA_RESULTS_DATA;
public static final android.support.v4.app.RemoteInputCompatBase$RemoteInput$Factory FACTORY;
private static final android.support.v4.app.RemoteInput$Impl IMPL;
public static final java.lang.String RESULTS_CLIP_LABEL;
private static final java.lang.String TAG;
/* # instance fields */
private final Boolean mAllowFreeFormInput;
private final java.lang.CharSequence mChoices;
private final android.os.Bundle mExtras;
private final java.lang.CharSequence mLabel;
private final java.lang.String mResultKey;
/* # direct methods */
static android.support.v4.app.RemoteInput ( ) {
	 /* .locals 2 */
	 /* .prologue */
	 /* .line 253 */
	 /* const/16 v1, 0x14 */
	 /* if-lt v0, v1, :cond_0 */
	 /* .line 254 */
	 /* new-instance v0, Landroid/support/v4/app/RemoteInput$ImplApi20; */
	 /* invoke-direct {v0}, Landroid/support/v4/app/RemoteInput$ImplApi20;-><init>()V */
	 /* .line 263 */
} // :goto_0
/* new-instance v0, Landroid/support/v4/app/RemoteInput$1; */
/* invoke-direct {v0}, Landroid/support/v4/app/RemoteInput$1;-><init>()V */
return;
/* .line 255 */
} // :cond_0
/* const/16 v1, 0x10 */
/* if-lt v0, v1, :cond_1 */
/* .line 256 */
/* new-instance v0, Landroid/support/v4/app/RemoteInput$ImplJellybean; */
/* invoke-direct {v0}, Landroid/support/v4/app/RemoteInput$ImplJellybean;-><init>()V */
/* .line 258 */
} // :cond_1
/* new-instance v0, Landroid/support/v4/app/RemoteInput$ImplBase; */
/* invoke-direct {v0}, Landroid/support/v4/app/RemoteInput$ImplBase;-><init>()V */
} // .end method
 android.support.v4.app.RemoteInput ( ) {
/* .locals 0 */
/* .param p1, "resultKey" # Ljava/lang/String; */
/* .param p2, "label" # Ljava/lang/CharSequence; */
/* .param p3, "choices" # [Ljava/lang/CharSequence; */
/* .param p4, "allowFreeFormInput" # Z */
/* .param p5, "extras" # Landroid/os/Bundle; */
/* .prologue */
/* .line 44 */
/* invoke-direct {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;-><init>()V */
/* .line 45 */
this.mResultKey = p1;
/* .line 46 */
this.mLabel = p2;
/* .line 47 */
this.mChoices = p3;
/* .line 48 */
/* iput-boolean p4, p0, Landroid/support/v4/app/RemoteInput;->mAllowFreeFormInput:Z */
/* .line 49 */
this.mExtras = p5;
/* .line 50 */
return;
} // .end method
public static void addResultsToIntent ( android.support.v4.app.RemoteInput[] p0, android.content.Intent p1, android.os.Bundle p2 ) {
/* .locals 1 */
/* .param p0, "remoteInputs" # [Landroid/support/v4/app/RemoteInput; */
/* .param p1, "intent" # Landroid/content/Intent; */
/* .param p2, "results" # Landroid/os/Bundle; */
/* .prologue */
/* .line 204 */
v0 = android.support.v4.app.RemoteInput.IMPL;
/* .line 205 */
return;
} // .end method
public static android.os.Bundle getResultsFromIntent ( android.content.Intent p0 ) {
/* .locals 1 */
/* .param p0, "intent" # Landroid/content/Intent; */
/* .prologue */
/* .line 188 */
v0 = android.support.v4.app.RemoteInput.IMPL;
} // .end method
/* # virtual methods */
public Boolean getAllowFreeFormInput ( ) {
/* .locals 1 */
/* .prologue */
/* .line 81 */
/* iget-boolean v0, p0, Landroid/support/v4/app/RemoteInput;->mAllowFreeFormInput:Z */
} // .end method
public java.lang.CharSequence getChoices ( ) {
/* .locals 1 */
/* .prologue */
/* .line 71 */
v0 = this.mChoices;
} // .end method
public android.os.Bundle getExtras ( ) {
/* .locals 1 */
/* .prologue */
/* .line 88 */
v0 = this.mExtras;
} // .end method
public java.lang.CharSequence getLabel ( ) {
/* .locals 1 */
/* .prologue */
/* .line 64 */
v0 = this.mLabel;
} // .end method
public java.lang.String getResultKey ( ) {
/* .locals 1 */
/* .prologue */
/* .line 57 */
v0 = this.mResultKey;
} // .end method
