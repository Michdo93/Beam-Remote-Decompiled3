public class android.support.v4.app.ShareCompat$IntentBuilder {
	 /* .source "ShareCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/ShareCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x9 */
/* name = "IntentBuilder" */
} // .end annotation
/* # instance fields */
private android.app.Activity mActivity;
private java.util.ArrayList mBccAddresses;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Ljava/lang/String;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private java.util.ArrayList mCcAddresses;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Ljava/lang/String;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private java.lang.CharSequence mChooserTitle;
private android.content.Intent mIntent;
private java.util.ArrayList mStreams;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/net/Uri;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private java.util.ArrayList mToAddresses;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Ljava/lang/String;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
/* # direct methods */
private android.support.v4.app.ShareCompat$IntentBuilder ( ) {
/* .locals 3 */
/* .param p1, "launchingActivity" # Landroid/app/Activity; */
/* .prologue */
/* .line 279 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 280 */
this.mActivity = p1;
/* .line 281 */
/* new-instance v0, Landroid/content/Intent; */
/* invoke-direct {v0}, Landroid/content/Intent;-><init>()V */
final String v1 = "android.intent.action.SEND"; // const-string v1, "android.intent.action.SEND"
(( android.content.Intent ) v0 ).setAction ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
this.mIntent = v0;
/* .line 282 */
v0 = this.mIntent;
final String v1 = "android.support.v4.app.EXTRA_CALLING_PACKAGE"; // const-string v1, "android.support.v4.app.EXTRA_CALLING_PACKAGE"
(( android.app.Activity ) p1 ).getPackageName ( ); // invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
(( android.content.Intent ) v0 ).putExtra ( v1, v2 ); // invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
/* .line 283 */
v0 = this.mIntent;
final String v1 = "android.support.v4.app.EXTRA_CALLING_ACTIVITY"; // const-string v1, "android.support.v4.app.EXTRA_CALLING_ACTIVITY"
(( android.app.Activity ) p1 ).getComponentName ( ); // invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;
(( android.content.Intent ) v0 ).putExtra ( v1, v2 ); // invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
/* .line 284 */
v0 = this.mIntent;
/* const/high16 v1, 0x80000 */
(( android.content.Intent ) v0 ).addFlags ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
/* .line 285 */
return;
} // .end method
private void combineArrayExtra ( java.lang.String p0, java.util.ArrayList p1 ) {
/* .locals 5 */
/* .param p1, "extra" # Ljava/lang/String; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Ljava/lang/String;", */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Ljava/lang/String;", */
/* ">;)V" */
/* } */
} // .end annotation
/* .prologue */
/* .local p2, "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;" */
int v3 = 0; // const/4 v3, 0x0
/* .line 345 */
v4 = this.mIntent;
(( android.content.Intent ) v4 ).getStringArrayExtra ( p1 ); // invoke-virtual {v4, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
/* .line 346 */
/* .local v0, "currentAddresses":[Ljava/lang/String; */
if ( v0 != null) { // if-eqz v0, :cond_1
/* array-length v1, v0 */
/* .line 347 */
/* .local v1, "currentLength":I */
} // :goto_0
v4 = (( java.util.ArrayList ) p2 ).size ( ); // invoke-virtual {p2}, Ljava/util/ArrayList;->size()I
/* add-int/2addr v4, v1 */
/* new-array v2, v4, [Ljava/lang/String; */
/* .line 348 */
/* .local v2, "finalAddresses":[Ljava/lang/String; */
(( java.util.ArrayList ) p2 ).toArray ( v2 ); // invoke-virtual {p2, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
/* .line 349 */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 350 */
v4 = (( java.util.ArrayList ) p2 ).size ( ); // invoke-virtual {p2}, Ljava/util/ArrayList;->size()I
java.lang.System .arraycopy ( v0,v3,v2,v4,v1 );
/* .line 352 */
} // :cond_0
v3 = this.mIntent;
(( android.content.Intent ) v3 ).putExtra ( p1, v2 ); // invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
/* .line 353 */
return;
} // .end local v1 # "currentLength":I
} // .end local v2 # "finalAddresses":[Ljava/lang/String;
} // :cond_1
/* move v1, v3 */
/* .line 346 */
} // .end method
private void combineArrayExtra ( java.lang.String p0, java.lang.String[] p1 ) {
/* .locals 6 */
/* .param p1, "extra" # Ljava/lang/String; */
/* .param p2, "add" # [Ljava/lang/String; */
/* .prologue */
int v4 = 0; // const/4 v4, 0x0
/* .line 357 */
(( android.support.v4.app.ShareCompat$IntentBuilder ) p0 ).getIntent ( ); // invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;
/* .line 358 */
/* .local v0, "intent":Landroid/content/Intent; */
(( android.content.Intent ) v0 ).getStringArrayExtra ( p1 ); // invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
/* .line 359 */
/* .local v1, "old":[Ljava/lang/String; */
if ( v1 != null) { // if-eqz v1, :cond_1
/* array-length v2, v1 */
/* .line 360 */
/* .local v2, "oldLength":I */
} // :goto_0
/* array-length v5, p2 */
/* add-int/2addr v5, v2 */
/* new-array v3, v5, [Ljava/lang/String; */
/* .line 361 */
/* .local v3, "result":[Ljava/lang/String; */
if ( v1 != null) { // if-eqz v1, :cond_0
java.lang.System .arraycopy ( v1,v4,v3,v4,v2 );
/* .line 362 */
} // :cond_0
/* array-length v5, p2 */
java.lang.System .arraycopy ( p2,v4,v3,v2,v5 );
/* .line 363 */
(( android.content.Intent ) v0 ).putExtra ( p1, v3 ); // invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
/* .line 364 */
return;
} // .end local v2 # "oldLength":I
} // .end local v3 # "result":[Ljava/lang/String;
} // :cond_1
/* move v2, v4 */
/* .line 359 */
} // .end method
public static android.support.v4.app.ShareCompat$IntentBuilder from ( android.app.Activity p0 ) {
/* .locals 1 */
/* .param p0, "launchingActivity" # Landroid/app/Activity; */
/* .prologue */
/* .line 276 */
/* new-instance v0, Landroid/support/v4/app/ShareCompat$IntentBuilder; */
/* invoke-direct {v0, p0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;-><init>(Landroid/app/Activity;)V */
} // .end method
/* # virtual methods */
public android.support.v4.app.ShareCompat$IntentBuilder addEmailBcc ( java.lang.String p0 ) {
/* .locals 1 */
/* .param p1, "address" # Ljava/lang/String; */
/* .prologue */
/* .line 606 */
v0 = this.mBccAddresses;
/* if-nez v0, :cond_0 */
/* .line 607 */
/* new-instance v0, Ljava/util/ArrayList; */
/* invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V */
this.mBccAddresses = v0;
/* .line 609 */
} // :cond_0
v0 = this.mBccAddresses;
(( java.util.ArrayList ) v0 ).add ( p1 ); // invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
/* .line 610 */
} // .end method
public android.support.v4.app.ShareCompat$IntentBuilder addEmailBcc ( java.lang.String[] p0 ) {
/* .locals 1 */
/* .param p1, "addresses" # [Ljava/lang/String; */
/* .prologue */
/* .line 621 */
final String v0 = "android.intent.extra.BCC"; // const-string v0, "android.intent.extra.BCC"
/* invoke-direct {p0, v0, p1}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V */
/* .line 622 */
} // .end method
public android.support.v4.app.ShareCompat$IntentBuilder addEmailCc ( java.lang.String p0 ) {
/* .locals 1 */
/* .param p1, "address" # Ljava/lang/String; */
/* .prologue */
/* .line 566 */
v0 = this.mCcAddresses;
/* if-nez v0, :cond_0 */
/* .line 567 */
/* new-instance v0, Ljava/util/ArrayList; */
/* invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V */
this.mCcAddresses = v0;
/* .line 569 */
} // :cond_0
v0 = this.mCcAddresses;
(( java.util.ArrayList ) v0 ).add ( p1 ); // invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
/* .line 570 */
} // .end method
public android.support.v4.app.ShareCompat$IntentBuilder addEmailCc ( java.lang.String[] p0 ) {
/* .locals 1 */
/* .param p1, "addresses" # [Ljava/lang/String; */
/* .prologue */
/* .line 581 */
final String v0 = "android.intent.extra.CC"; // const-string v0, "android.intent.extra.CC"
/* invoke-direct {p0, v0, p1}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V */
/* .line 582 */
} // .end method
public android.support.v4.app.ShareCompat$IntentBuilder addEmailTo ( java.lang.String p0 ) {
/* .locals 1 */
/* .param p1, "address" # Ljava/lang/String; */
/* .prologue */
/* .line 526 */
v0 = this.mToAddresses;
/* if-nez v0, :cond_0 */
/* .line 527 */
/* new-instance v0, Ljava/util/ArrayList; */
/* invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V */
this.mToAddresses = v0;
/* .line 529 */
} // :cond_0
v0 = this.mToAddresses;
(( java.util.ArrayList ) v0 ).add ( p1 ); // invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
/* .line 530 */
} // .end method
public android.support.v4.app.ShareCompat$IntentBuilder addEmailTo ( java.lang.String[] p0 ) {
/* .locals 1 */
/* .param p1, "addresses" # [Ljava/lang/String; */
/* .prologue */
/* .line 541 */
final String v0 = "android.intent.extra.EMAIL"; // const-string v0, "android.intent.extra.EMAIL"
/* invoke-direct {p0, v0, p1}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V */
/* .line 542 */
} // .end method
public android.support.v4.app.ShareCompat$IntentBuilder addStream ( android.net.Uri p0 ) {
/* .locals 3 */
/* .param p1, "streamUri" # Landroid/net/Uri; */
/* .prologue */
/* .line 487 */
v1 = this.mIntent;
final String v2 = "android.intent.extra.STREAM"; // const-string v2, "android.intent.extra.STREAM"
(( android.content.Intent ) v1 ).getParcelableExtra ( v2 ); // invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
/* check-cast v0, Landroid/net/Uri; */
/* .line 488 */
/* .local v0, "currentStream":Landroid/net/Uri; */
/* if-nez v0, :cond_0 */
/* .line 489 */
(( android.support.v4.app.ShareCompat$IntentBuilder ) p0 ).setStream ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->setStream(Landroid/net/Uri;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
/* .line 499 */
} // .end local p0 # "this":Landroid/support/v4/app/ShareCompat$IntentBuilder;
} // :goto_0
/* .line 491 */
/* .restart local p0 # "this":Landroid/support/v4/app/ShareCompat$IntentBuilder; */
} // :cond_0
v1 = this.mStreams;
/* if-nez v1, :cond_1 */
/* .line 492 */
/* new-instance v1, Ljava/util/ArrayList; */
/* invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V */
this.mStreams = v1;
/* .line 494 */
} // :cond_1
if ( v0 != null) { // if-eqz v0, :cond_2
/* .line 495 */
v1 = this.mIntent;
final String v2 = "android.intent.extra.STREAM"; // const-string v2, "android.intent.extra.STREAM"
(( android.content.Intent ) v1 ).removeExtra ( v2 ); // invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
/* .line 496 */
v1 = this.mStreams;
(( java.util.ArrayList ) v1 ).add ( v0 ); // invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
/* .line 498 */
} // :cond_2
v1 = this.mStreams;
(( java.util.ArrayList ) v1 ).add ( p1 ); // invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
} // .end method
public android.content.Intent createChooserIntent ( ) {
/* .locals 2 */
/* .prologue */
/* .line 374 */
(( android.support.v4.app.ShareCompat$IntentBuilder ) p0 ).getIntent ( ); // invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;
v1 = this.mChooserTitle;
android.content.Intent .createChooser ( v0,v1 );
} // .end method
android.app.Activity getActivity ( ) {
/* .locals 1 */
/* .prologue */
/* .line 341 */
v0 = this.mActivity;
} // .end method
public android.content.Intent getIntent ( ) {
/* .locals 7 */
/* .prologue */
int v1 = 1; // const/4 v1, 0x1
int v2 = 0; // const/4 v2, 0x0
int v6 = 0; // const/4 v6, 0x0
/* .line 297 */
v3 = this.mToAddresses;
if ( v3 != null) { // if-eqz v3, :cond_0
/* .line 298 */
final String v3 = "android.intent.extra.EMAIL"; // const-string v3, "android.intent.extra.EMAIL"
v4 = this.mToAddresses;
/* invoke-direct {p0, v3, v4}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V */
/* .line 299 */
this.mToAddresses = v6;
/* .line 301 */
} // :cond_0
v3 = this.mCcAddresses;
if ( v3 != null) { // if-eqz v3, :cond_1
/* .line 302 */
final String v3 = "android.intent.extra.CC"; // const-string v3, "android.intent.extra.CC"
v4 = this.mCcAddresses;
/* invoke-direct {p0, v3, v4}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V */
/* .line 303 */
this.mCcAddresses = v6;
/* .line 305 */
} // :cond_1
v3 = this.mBccAddresses;
if ( v3 != null) { // if-eqz v3, :cond_2
/* .line 306 */
final String v3 = "android.intent.extra.BCC"; // const-string v3, "android.intent.extra.BCC"
v4 = this.mBccAddresses;
/* invoke-direct {p0, v3, v4}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V */
/* .line 307 */
this.mBccAddresses = v6;
/* .line 311 */
} // :cond_2
v3 = this.mStreams;
if ( v3 != null) { // if-eqz v3, :cond_5
v3 = this.mStreams;
v3 = (( java.util.ArrayList ) v3 ).size ( ); // invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
/* if-le v3, v1, :cond_5 */
/* .line 312 */
/* .local v1, "needsSendMultiple":Z */
} // :goto_0
v3 = this.mIntent;
(( android.content.Intent ) v3 ).getAction ( ); // invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;
final String v4 = "android.intent.action.SEND_MULTIPLE"; // const-string v4, "android.intent.action.SEND_MULTIPLE"
v0 = (( java.lang.String ) v3 ).equals ( v4 ); // invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* .line 314 */
/* .local v0, "isSendMultiple":Z */
/* if-nez v1, :cond_3 */
if ( v0 != null) { // if-eqz v0, :cond_3
/* .line 317 */
v3 = this.mIntent;
final String v4 = "android.intent.action.SEND"; // const-string v4, "android.intent.action.SEND"
(( android.content.Intent ) v3 ).setAction ( v4 ); // invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
/* .line 318 */
v3 = this.mStreams;
if ( v3 != null) { // if-eqz v3, :cond_6
v3 = this.mStreams;
v3 = (( java.util.ArrayList ) v3 ).isEmpty ( ); // invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
/* if-nez v3, :cond_6 */
/* .line 319 */
v3 = this.mIntent;
final String v4 = "android.intent.extra.STREAM"; // const-string v4, "android.intent.extra.STREAM"
v5 = this.mStreams;
(( java.util.ArrayList ) v5 ).get ( v2 ); // invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v2, Landroid/os/Parcelable; */
(( android.content.Intent ) v3 ).putExtra ( v4, v2 ); // invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
/* .line 323 */
} // :goto_1
this.mStreams = v6;
/* .line 326 */
} // :cond_3
if ( v1 != null) { // if-eqz v1, :cond_4
/* if-nez v0, :cond_4 */
/* .line 329 */
v2 = this.mIntent;
final String v3 = "android.intent.action.SEND_MULTIPLE"; // const-string v3, "android.intent.action.SEND_MULTIPLE"
(( android.content.Intent ) v2 ).setAction ( v3 ); // invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
/* .line 330 */
v2 = this.mStreams;
if ( v2 != null) { // if-eqz v2, :cond_7
v2 = this.mStreams;
v2 = (( java.util.ArrayList ) v2 ).isEmpty ( ); // invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
/* if-nez v2, :cond_7 */
/* .line 331 */
v2 = this.mIntent;
final String v3 = "android.intent.extra.STREAM"; // const-string v3, "android.intent.extra.STREAM"
v4 = this.mStreams;
(( android.content.Intent ) v2 ).putParcelableArrayListExtra ( v3, v4 ); // invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
/* .line 337 */
} // :cond_4
} // :goto_2
v2 = this.mIntent;
} // .end local v0 # "isSendMultiple":Z
} // .end local v1 # "needsSendMultiple":Z
} // :cond_5
/* move v1, v2 */
/* .line 311 */
/* .line 321 */
/* .restart local v0 # "isSendMultiple":Z */
/* .restart local v1 # "needsSendMultiple":Z */
} // :cond_6
v2 = this.mIntent;
final String v3 = "android.intent.extra.STREAM"; // const-string v3, "android.intent.extra.STREAM"
(( android.content.Intent ) v2 ).removeExtra ( v3 ); // invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
/* .line 333 */
} // :cond_7
v2 = this.mIntent;
final String v3 = "android.intent.extra.STREAM"; // const-string v3, "android.intent.extra.STREAM"
(( android.content.Intent ) v2 ).removeExtra ( v3 ); // invoke-virtual {v2, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
} // .end method
public android.support.v4.app.ShareCompat$IntentBuilder setChooserTitle ( Integer p0 ) {
/* .locals 1 */
/* .param p1, "resId" # I */
/* .prologue */
/* .line 408 */
v0 = this.mActivity;
(( android.app.Activity ) v0 ).getText ( p1 ); // invoke-virtual {v0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;
(( android.support.v4.app.ShareCompat$IntentBuilder ) p0 ).setChooserTitle ( v0 ); // invoke-virtual {p0, v0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->setChooserTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
} // .end method
public android.support.v4.app.ShareCompat$IntentBuilder setChooserTitle ( java.lang.CharSequence p0 ) {
/* .locals 0 */
/* .param p1, "title" # Ljava/lang/CharSequence; */
/* .prologue */
/* .line 397 */
this.mChooserTitle = p1;
/* .line 398 */
} // .end method
public android.support.v4.app.ShareCompat$IntentBuilder setEmailBcc ( java.lang.String[] p0 ) {
/* .locals 2 */
/* .param p1, "addresses" # [Ljava/lang/String; */
/* .prologue */
/* .line 594 */
v0 = this.mIntent;
final String v1 = "android.intent.extra.BCC"; // const-string v1, "android.intent.extra.BCC"
(( android.content.Intent ) v0 ).putExtra ( v1, p1 ); // invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
/* .line 595 */
} // .end method
public android.support.v4.app.ShareCompat$IntentBuilder setEmailCc ( java.lang.String[] p0 ) {
/* .locals 2 */
/* .param p1, "addresses" # [Ljava/lang/String; */
/* .prologue */
/* .line 554 */
v0 = this.mIntent;
final String v1 = "android.intent.extra.CC"; // const-string v1, "android.intent.extra.CC"
(( android.content.Intent ) v0 ).putExtra ( v1, p1 ); // invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
/* .line 555 */
} // .end method
public android.support.v4.app.ShareCompat$IntentBuilder setEmailTo ( java.lang.String[] p0 ) {
/* .locals 2 */
/* .param p1, "addresses" # [Ljava/lang/String; */
/* .prologue */
/* .line 511 */
v0 = this.mToAddresses;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 512 */
int v0 = 0; // const/4 v0, 0x0
this.mToAddresses = v0;
/* .line 514 */
} // :cond_0
v0 = this.mIntent;
final String v1 = "android.intent.extra.EMAIL"; // const-string v1, "android.intent.extra.EMAIL"
(( android.content.Intent ) v0 ).putExtra ( v1, p1 ); // invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
/* .line 515 */
} // .end method
public android.support.v4.app.ShareCompat$IntentBuilder setHtmlText ( java.lang.String p0 ) {
/* .locals 2 */
/* .param p1, "htmlText" # Ljava/lang/String; */
/* .prologue */
/* .line 448 */
v0 = this.mIntent;
final String v1 = "android.intent.extra.HTML_TEXT"; // const-string v1, "android.intent.extra.HTML_TEXT"
(( android.content.Intent ) v0 ).putExtra ( v1, p1 ); // invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
/* .line 449 */
v0 = this.mIntent;
final String v1 = "android.intent.extra.TEXT"; // const-string v1, "android.intent.extra.TEXT"
v0 = (( android.content.Intent ) v0 ).hasExtra ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
/* if-nez v0, :cond_0 */
/* .line 451 */
android.text.Html .fromHtml ( p1 );
(( android.support.v4.app.ShareCompat$IntentBuilder ) p0 ).setText ( v0 ); // invoke-virtual {p0, v0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->setText(Ljava/lang/CharSequence;)Landroid/support/v4/app/ShareCompat$IntentBuilder;
/* .line 453 */
} // :cond_0
} // .end method
public android.support.v4.app.ShareCompat$IntentBuilder setStream ( android.net.Uri p0 ) {
/* .locals 2 */
/* .param p1, "streamUri" # Landroid/net/Uri; */
/* .prologue */
/* .line 467 */
v0 = this.mIntent;
(( android.content.Intent ) v0 ).getAction ( ); // invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;
final String v1 = "android.intent.action.SEND"; // const-string v1, "android.intent.action.SEND"
v0 = (( java.lang.String ) v0 ).equals ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v0, :cond_0 */
/* .line 468 */
v0 = this.mIntent;
final String v1 = "android.intent.action.SEND"; // const-string v1, "android.intent.action.SEND"
(( android.content.Intent ) v0 ).setAction ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
/* .line 470 */
} // :cond_0
int v0 = 0; // const/4 v0, 0x0
this.mStreams = v0;
/* .line 471 */
v0 = this.mIntent;
final String v1 = "android.intent.extra.STREAM"; // const-string v1, "android.intent.extra.STREAM"
(( android.content.Intent ) v0 ).putExtra ( v1, p1 ); // invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
/* .line 472 */
} // .end method
public android.support.v4.app.ShareCompat$IntentBuilder setSubject ( java.lang.String p0 ) {
/* .locals 2 */
/* .param p1, "subject" # Ljava/lang/String; */
/* .prologue */
/* .line 633 */
v0 = this.mIntent;
final String v1 = "android.intent.extra.SUBJECT"; // const-string v1, "android.intent.extra.SUBJECT"
(( android.content.Intent ) v0 ).putExtra ( v1, p1 ); // invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
/* .line 634 */
} // .end method
public android.support.v4.app.ShareCompat$IntentBuilder setText ( java.lang.CharSequence p0 ) {
/* .locals 2 */
/* .param p1, "text" # Ljava/lang/CharSequence; */
/* .prologue */
/* .line 432 */
v0 = this.mIntent;
final String v1 = "android.intent.extra.TEXT"; // const-string v1, "android.intent.extra.TEXT"
(( android.content.Intent ) v0 ).putExtra ( v1, p1 ); // invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;
/* .line 433 */
} // .end method
public android.support.v4.app.ShareCompat$IntentBuilder setType ( java.lang.String p0 ) {
/* .locals 1 */
/* .param p1, "mimeType" # Ljava/lang/String; */
/* .prologue */
/* .line 419 */
v0 = this.mIntent;
(( android.content.Intent ) v0 ).setType ( p1 ); // invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
/* .line 420 */
} // .end method
public void startChooser ( ) {
/* .locals 2 */
/* .prologue */
/* .line 387 */
v0 = this.mActivity;
(( android.support.v4.app.ShareCompat$IntentBuilder ) p0 ).createChooserIntent ( ); // invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->createChooserIntent()Landroid/content/Intent;
(( android.app.Activity ) v0 ).startActivity ( v1 ); // invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
/* .line 388 */
return;
} // .end method
