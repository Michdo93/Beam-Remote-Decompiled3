public class android.support.v4.app.ShareCompat$IntentReader {
	 /* .source "ShareCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/ShareCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x9 */
/* name = "IntentReader" */
} // .end annotation
/* # static fields */
private static final java.lang.String TAG;
/* # instance fields */
private android.app.Activity mActivity;
private android.content.ComponentName mCallingActivity;
private java.lang.String mCallingPackage;
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
/* # direct methods */
private android.support.v4.app.ShareCompat$IntentReader ( ) {
/* .locals 1 */
/* .param p1, "activity" # Landroid/app/Activity; */
/* .prologue */
/* .line 676 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 677 */
this.mActivity = p1;
/* .line 678 */
(( android.app.Activity ) p1 ).getIntent ( ); // invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;
this.mIntent = v0;
/* .line 679 */
android.support.v4.app.ShareCompat .getCallingPackage ( p1 );
this.mCallingPackage = v0;
/* .line 680 */
android.support.v4.app.ShareCompat .getCallingActivity ( p1 );
this.mCallingActivity = v0;
/* .line 681 */
return;
} // .end method
public static android.support.v4.app.ShareCompat$IntentReader from ( android.app.Activity p0 ) {
/* .locals 1 */
/* .param p0, "activity" # Landroid/app/Activity; */
/* .prologue */
/* .line 673 */
/* new-instance v0, Landroid/support/v4/app/ShareCompat$IntentReader; */
/* invoke-direct {v0, p0}, Landroid/support/v4/app/ShareCompat$IntentReader;-><init>(Landroid/app/Activity;)V */
} // .end method
/* # virtual methods */
public android.content.ComponentName getCallingActivity ( ) {
/* .locals 1 */
/* .prologue */
/* .line 888 */
v0 = this.mCallingActivity;
} // .end method
public android.graphics.drawable.Drawable getCallingActivityIcon ( ) {
/* .locals 5 */
/* .prologue */
int v2 = 0; // const/4 v2, 0x0
/* .line 902 */
v3 = this.mCallingActivity;
/* if-nez v3, :cond_0 */
/* .line 910 */
} // :goto_0
/* .line 904 */
} // :cond_0
v3 = this.mActivity;
(( android.app.Activity ) v3 ).getPackageManager ( ); // invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
/* .line 906 */
/* .local v1, "pm":Landroid/content/pm/PackageManager; */
try { // :try_start_0
v3 = this.mCallingActivity;
(( android.content.pm.PackageManager ) v1 ).getActivityIcon ( v3 ); // invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
/* :try_end_0 */
/* .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 ..:try_end_0} :catch_0 */
/* .line 907 */
/* :catch_0 */
/* move-exception v0 */
/* .line 908 */
/* .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException; */
final String v3 = "IntentReader"; // const-string v3, "IntentReader"
final String v4 = "Could not retrieve icon for calling activity"; // const-string v4, "Could not retrieve icon for calling activity"
android.util.Log .e ( v3,v4,v0 );
} // .end method
public android.graphics.drawable.Drawable getCallingApplicationIcon ( ) {
/* .locals 5 */
/* .prologue */
int v2 = 0; // const/4 v2, 0x0
/* .line 924 */
v3 = this.mCallingPackage;
/* if-nez v3, :cond_0 */
/* .line 932 */
} // :goto_0
/* .line 926 */
} // :cond_0
v3 = this.mActivity;
(( android.app.Activity ) v3 ).getPackageManager ( ); // invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
/* .line 928 */
/* .local v1, "pm":Landroid/content/pm/PackageManager; */
try { // :try_start_0
v3 = this.mCallingPackage;
(( android.content.pm.PackageManager ) v1 ).getApplicationIcon ( v3 ); // invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
/* :try_end_0 */
/* .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 ..:try_end_0} :catch_0 */
/* .line 929 */
/* :catch_0 */
/* move-exception v0 */
/* .line 930 */
/* .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException; */
final String v3 = "IntentReader"; // const-string v3, "IntentReader"
final String v4 = "Could not retrieve icon for calling application"; // const-string v4, "Could not retrieve icon for calling application"
android.util.Log .e ( v3,v4,v0 );
} // .end method
public java.lang.CharSequence getCallingApplicationLabel ( ) {
/* .locals 5 */
/* .prologue */
int v2 = 0; // const/4 v2, 0x0
/* .line 946 */
v3 = this.mCallingPackage;
/* if-nez v3, :cond_0 */
/* .line 954 */
} // :goto_0
/* .line 948 */
} // :cond_0
v3 = this.mActivity;
(( android.app.Activity ) v3 ).getPackageManager ( ); // invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
/* .line 950 */
/* .local v1, "pm":Landroid/content/pm/PackageManager; */
try { // :try_start_0
v3 = this.mCallingPackage;
int v4 = 0; // const/4 v4, 0x0
(( android.content.pm.PackageManager ) v1 ).getApplicationInfo ( v3, v4 ); // invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
(( android.content.pm.PackageManager ) v1 ).getApplicationLabel ( v3 ); // invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
/* :try_end_0 */
/* .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 ..:try_end_0} :catch_0 */
/* .line 951 */
/* :catch_0 */
/* move-exception v0 */
/* .line 952 */
/* .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException; */
final String v3 = "IntentReader"; // const-string v3, "IntentReader"
final String v4 = "Could not retrieve label for calling application"; // const-string v4, "Could not retrieve label for calling application"
android.util.Log .e ( v3,v4,v0 );
} // .end method
public java.lang.String getCallingPackage ( ) {
/* .locals 1 */
/* .prologue */
/* .line 871 */
v0 = this.mCallingPackage;
} // .end method
public java.lang.String getEmailBcc ( ) {
/* .locals 2 */
/* .prologue */
/* .line 844 */
v0 = this.mIntent;
final String v1 = "android.intent.extra.BCC"; // const-string v1, "android.intent.extra.BCC"
(( android.content.Intent ) v0 ).getStringArrayExtra ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
} // .end method
public java.lang.String getEmailCc ( ) {
/* .locals 2 */
/* .prologue */
/* .line 834 */
v0 = this.mIntent;
final String v1 = "android.intent.extra.CC"; // const-string v1, "android.intent.extra.CC"
(( android.content.Intent ) v0 ).getStringArrayExtra ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
} // .end method
public java.lang.String getEmailTo ( ) {
/* .locals 2 */
/* .prologue */
/* .line 824 */
v0 = this.mIntent;
final String v1 = "android.intent.extra.EMAIL"; // const-string v1, "android.intent.extra.EMAIL"
(( android.content.Intent ) v0 ).getStringArrayExtra ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
} // .end method
public java.lang.String getHtmlText ( ) {
/* .locals 4 */
/* .prologue */
/* .line 750 */
v2 = this.mIntent;
final String v3 = "android.intent.extra.HTML_TEXT"; // const-string v3, "android.intent.extra.HTML_TEXT"
(( android.content.Intent ) v2 ).getStringExtra ( v3 ); // invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
/* .line 751 */
/* .local v0, "result":Ljava/lang/String; */
/* if-nez v0, :cond_0 */
/* .line 752 */
(( android.support.v4.app.ShareCompat$IntentReader ) p0 ).getText ( ); // invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->getText()Ljava/lang/CharSequence;
/* .line 753 */
/* .local v1, "text":Ljava/lang/CharSequence; */
/* instance-of v2, v1, Landroid/text/Spanned; */
if ( v2 != null) { // if-eqz v2, :cond_1
/* .line 754 */
/* check-cast v1, Landroid/text/Spanned; */
} // .end local v1 # "text":Ljava/lang/CharSequence;
android.text.Html .toHtml ( v1 );
/* .line 759 */
} // :cond_0
} // :goto_0
/* .line 755 */
/* .restart local v1 # "text":Ljava/lang/CharSequence; */
} // :cond_1
if ( v1 != null) { // if-eqz v1, :cond_0
/* .line 756 */
android.support.v4.app.ShareCompat .access$000 ( );
} // .end method
public android.net.Uri getStream ( ) {
/* .locals 2 */
/* .prologue */
/* .line 774 */
v0 = this.mIntent;
final String v1 = "android.intent.extra.STREAM"; // const-string v1, "android.intent.extra.STREAM"
(( android.content.Intent ) v0 ).getParcelableExtra ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
/* check-cast v0, Landroid/net/Uri; */
} // .end method
public android.net.Uri getStream ( Integer p0 ) {
/* .locals 3 */
/* .param p1, "index" # I */
/* .prologue */
/* .line 787 */
v0 = this.mStreams;
/* if-nez v0, :cond_0 */
v0 = (( android.support.v4.app.ShareCompat$IntentReader ) p0 ).isMultipleShare ( ); // invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->isMultipleShare()Z
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 788 */
v0 = this.mIntent;
final String v1 = "android.intent.extra.STREAM"; // const-string v1, "android.intent.extra.STREAM"
(( android.content.Intent ) v0 ).getParcelableArrayListExtra ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
this.mStreams = v0;
/* .line 790 */
} // :cond_0
v0 = this.mStreams;
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 791 */
v0 = this.mStreams;
(( java.util.ArrayList ) v0 ).get ( p1 ); // invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v0, Landroid/net/Uri; */
/* .line 794 */
} // :goto_0
/* .line 793 */
} // :cond_1
/* if-nez p1, :cond_2 */
/* .line 794 */
v0 = this.mIntent;
final String v1 = "android.intent.extra.STREAM"; // const-string v1, "android.intent.extra.STREAM"
(( android.content.Intent ) v0 ).getParcelableExtra ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
/* check-cast v0, Landroid/net/Uri; */
/* .line 796 */
} // :cond_2
/* new-instance v0, Ljava/lang/IndexOutOfBoundsException; */
/* new-instance v1, Ljava/lang/StringBuilder; */
/* invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V */
final String v2 = "Stream items available: "; // const-string v2, "Stream items available: "
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
v2 = (( android.support.v4.app.ShareCompat$IntentReader ) p0 ).getStreamCount ( ); // invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->getStreamCount()I
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
final String v2 = " index requested: "; // const-string v2, " index requested: "
(( java.lang.StringBuilder ) v1 ).append ( v2 ); // invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).append ( p1 ); // invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v1 ).toString ( ); // invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
} // .end method
public Integer getStreamCount ( ) {
/* .locals 2 */
/* .prologue */
/* .line 808 */
v0 = this.mStreams;
/* if-nez v0, :cond_0 */
v0 = (( android.support.v4.app.ShareCompat$IntentReader ) p0 ).isMultipleShare ( ); // invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->isMultipleShare()Z
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 809 */
v0 = this.mIntent;
final String v1 = "android.intent.extra.STREAM"; // const-string v1, "android.intent.extra.STREAM"
(( android.content.Intent ) v0 ).getParcelableArrayListExtra ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
this.mStreams = v0;
/* .line 811 */
} // :cond_0
v0 = this.mStreams;
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 812 */
v0 = this.mStreams;
v0 = (( java.util.ArrayList ) v0 ).size ( ); // invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
/* .line 814 */
} // :goto_0
} // :cond_1
v0 = this.mIntent;
final String v1 = "android.intent.extra.STREAM"; // const-string v1, "android.intent.extra.STREAM"
v0 = (( android.content.Intent ) v0 ).hasExtra ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
if ( v0 != null) { // if-eqz v0, :cond_2
int v0 = 1; // const/4 v0, 0x1
} // :cond_2
int v0 = 0; // const/4 v0, 0x0
} // .end method
public java.lang.String getSubject ( ) {
/* .locals 2 */
/* .prologue */
/* .line 854 */
v0 = this.mIntent;
final String v1 = "android.intent.extra.SUBJECT"; // const-string v1, "android.intent.extra.SUBJECT"
(( android.content.Intent ) v0 ).getStringExtra ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
} // .end method
public java.lang.CharSequence getText ( ) {
/* .locals 2 */
/* .prologue */
/* .line 736 */
v0 = this.mIntent;
final String v1 = "android.intent.extra.TEXT"; // const-string v1, "android.intent.extra.TEXT"
(( android.content.Intent ) v0 ).getCharSequenceExtra ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;
} // .end method
public java.lang.String getType ( ) {
/* .locals 1 */
/* .prologue */
/* .line 726 */
v0 = this.mIntent;
(( android.content.Intent ) v0 ).getType ( ); // invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;
} // .end method
public Boolean isMultipleShare ( ) {
/* .locals 2 */
/* .prologue */
/* .line 716 */
final String v0 = "android.intent.action.SEND_MULTIPLE"; // const-string v0, "android.intent.action.SEND_MULTIPLE"
v1 = this.mIntent;
(( android.content.Intent ) v1 ).getAction ( ); // invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
v0 = (( java.lang.String ) v0 ).equals ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
} // .end method
public Boolean isShareIntent ( ) {
/* .locals 2 */
/* .prologue */
/* .line 692 */
v1 = this.mIntent;
(( android.content.Intent ) v1 ).getAction ( ); // invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
/* .line 693 */
/* .local v0, "action":Ljava/lang/String; */
final String v1 = "android.intent.action.SEND"; // const-string v1, "android.intent.action.SEND"
v1 = (( java.lang.String ) v1 ).equals ( v0 ); // invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
/* if-nez v1, :cond_0 */
final String v1 = "android.intent.action.SEND_MULTIPLE"; // const-string v1, "android.intent.action.SEND_MULTIPLE"
v1 = (( java.lang.String ) v1 ).equals ( v0 ); // invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
if ( v1 != null) { // if-eqz v1, :cond_1
} // :cond_0
int v1 = 1; // const/4 v1, 0x1
} // :goto_0
} // :cond_1
int v1 = 0; // const/4 v1, 0x0
} // .end method
public Boolean isSingleShare ( ) {
/* .locals 2 */
/* .prologue */
/* .line 705 */
final String v0 = "android.intent.action.SEND"; // const-string v0, "android.intent.action.SEND"
v1 = this.mIntent;
(( android.content.Intent ) v1 ).getAction ( ); // invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
v0 = (( java.lang.String ) v0 ).equals ( v1 ); // invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
} // .end method
