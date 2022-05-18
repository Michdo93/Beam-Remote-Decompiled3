public class android.support.v4.app.TaskStackBuilder implements java.lang.Iterable {
	 /* .source "TaskStackBuilder.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplJellybean;, */
	 /* Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplHoneycomb;, */
	 /* Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplBase;, */
	 /* Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl;, */
	 /* Landroid/support/v4/app/TaskStackBuilder$SupportParentable; */
	 /* } */
} // .end annotation
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/lang/Object;", */
/* "Ljava/lang/Iterable", */
/* "<", */
/* "Landroid/content/Intent;", */
/* ">;" */
/* } */
} // .end annotation
/* # static fields */
private static final android.support.v4.app.TaskStackBuilder$TaskStackBuilderImpl IMPL;
private static final java.lang.String TAG;
/* # instance fields */
private final java.util.ArrayList mIntents;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/ArrayList", */
/* "<", */
/* "Landroid/content/Intent;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
private final android.content.Context mSourceContext;
/* # direct methods */
static android.support.v4.app.TaskStackBuilder ( ) {
/* .locals 2 */
/* .prologue */
/* .line 115 */
/* const/16 v1, 0xb */
/* if-lt v0, v1, :cond_0 */
/* .line 116 */
/* new-instance v0, Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplHoneycomb; */
/* invoke-direct {v0}, Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplHoneycomb;-><init>()V */
/* .line 120 */
} // :goto_0
return;
/* .line 118 */
} // :cond_0
/* new-instance v0, Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplBase; */
/* invoke-direct {v0}, Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImplBase;-><init>()V */
} // .end method
private android.support.v4.app.TaskStackBuilder ( ) {
/* .locals 1 */
/* .param p1, "a" # Landroid/content/Context; */
/* .prologue */
/* .line 125 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 122 */
/* new-instance v0, Ljava/util/ArrayList; */
/* invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V */
this.mIntents = v0;
/* .line 126 */
this.mSourceContext = p1;
/* .line 127 */
return;
} // .end method
public static android.support.v4.app.TaskStackBuilder create ( android.content.Context p0 ) {
/* .locals 1 */
/* .param p0, "context" # Landroid/content/Context; */
/* .prologue */
/* .line 137 */
/* new-instance v0, Landroid/support/v4/app/TaskStackBuilder; */
/* invoke-direct {v0, p0}, Landroid/support/v4/app/TaskStackBuilder;-><init>(Landroid/content/Context;)V */
} // .end method
public static android.support.v4.app.TaskStackBuilder from ( android.content.Context p0 ) {
/* .locals 1 */
/* .param p0, "context" # Landroid/content/Context; */
/* .prologue */
/* .line 150 */
android.support.v4.app.TaskStackBuilder .create ( p0 );
} // .end method
/* # virtual methods */
public android.support.v4.app.TaskStackBuilder addNextIntent ( android.content.Intent p0 ) {
/* .locals 1 */
/* .param p1, "nextIntent" # Landroid/content/Intent; */
/* .prologue */
/* .line 161 */
v0 = this.mIntents;
(( java.util.ArrayList ) v0 ).add ( p1 ); // invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
/* .line 162 */
} // .end method
public android.support.v4.app.TaskStackBuilder addNextIntentWithParentStack ( android.content.Intent p0 ) {
/* .locals 2 */
/* .param p1, "nextIntent" # Landroid/content/Intent; */
/* .prologue */
/* .line 178 */
(( android.content.Intent ) p1 ).getComponent ( ); // invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
/* .line 179 */
/* .local v0, "target":Landroid/content/ComponentName; */
/* if-nez v0, :cond_0 */
/* .line 180 */
v1 = this.mSourceContext;
(( android.content.Context ) v1 ).getPackageManager ( ); // invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
(( android.content.Intent ) p1 ).resolveActivity ( v1 ); // invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
/* .line 182 */
} // :cond_0
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 183 */
(( android.support.v4.app.TaskStackBuilder ) p0 ).addParentStack ( v0 ); // invoke-virtual {p0, v0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/support/v4/app/TaskStackBuilder;
/* .line 185 */
} // :cond_1
(( android.support.v4.app.TaskStackBuilder ) p0 ).addNextIntent ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;
/* .line 186 */
} // .end method
public android.support.v4.app.TaskStackBuilder addParentStack ( android.app.Activity p0 ) {
/* .locals 3 */
/* .param p1, "sourceActivity" # Landroid/app/Activity; */
/* .prologue */
/* .line 197 */
int v0 = 0; // const/4 v0, 0x0
/* .line 198 */
/* .local v0, "parent":Landroid/content/Intent; */
/* instance-of v2, p1, Landroid/support/v4/app/TaskStackBuilder$SupportParentable; */
if ( v2 != null) { // if-eqz v2, :cond_0
/* move-object v2, p1 */
/* .line 199 */
/* check-cast v2, Landroid/support/v4/app/TaskStackBuilder$SupportParentable; */
/* .line 201 */
} // :cond_0
/* if-nez v0, :cond_1 */
/* .line 202 */
android.support.v4.app.NavUtils .getParentActivityIntent ( p1 );
/* .line 205 */
} // :cond_1
if ( v0 != null) { // if-eqz v0, :cond_3
/* .line 208 */
(( android.content.Intent ) v0 ).getComponent ( ); // invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
/* .line 209 */
/* .local v1, "target":Landroid/content/ComponentName; */
/* if-nez v1, :cond_2 */
/* .line 210 */
v2 = this.mSourceContext;
(( android.content.Context ) v2 ).getPackageManager ( ); // invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
(( android.content.Intent ) v0 ).resolveActivity ( v2 ); // invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
/* .line 212 */
} // :cond_2
(( android.support.v4.app.TaskStackBuilder ) p0 ).addParentStack ( v1 ); // invoke-virtual {p0, v1}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/support/v4/app/TaskStackBuilder;
/* .line 213 */
(( android.support.v4.app.TaskStackBuilder ) p0 ).addNextIntent ( v0 ); // invoke-virtual {p0, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;
/* .line 215 */
} // .end local v1 # "target":Landroid/content/ComponentName;
} // :cond_3
} // .end method
public android.support.v4.app.TaskStackBuilder addParentStack ( android.content.ComponentName p0 ) {
/* .locals 5 */
/* .param p1, "sourceActivityName" # Landroid/content/ComponentName; */
/* .prologue */
/* .line 238 */
v3 = this.mIntents;
v1 = (( java.util.ArrayList ) v3 ).size ( ); // invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
/* .line 240 */
/* .local v1, "insertAt":I */
try { // :try_start_0
v3 = this.mSourceContext;
android.support.v4.app.NavUtils .getParentActivityIntent ( v3,p1 );
/* .line 241 */
/* .local v2, "parent":Landroid/content/Intent; */
} // :goto_0
if ( v2 != null) { // if-eqz v2, :cond_0
/* .line 242 */
v3 = this.mIntents;
(( java.util.ArrayList ) v3 ).add ( v1, v2 ); // invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
/* .line 243 */
v3 = this.mSourceContext;
(( android.content.Intent ) v2 ).getComponent ( ); // invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
android.support.v4.app.NavUtils .getParentActivityIntent ( v3,v4 );
/* :try_end_0 */
/* .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 ..:try_end_0} :catch_0 */
/* .line 245 */
} // .end local v2 # "parent":Landroid/content/Intent;
/* :catch_0 */
/* move-exception v0 */
/* .line 246 */
/* .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException; */
final String v3 = "TaskStackBuilder"; // const-string v3, "TaskStackBuilder"
final String v4 = "Bad ComponentName while traversing activity parent metadata"; // const-string v4, "Bad ComponentName while traversing activity parent metadata"
android.util.Log .e ( v3,v4 );
/* .line 247 */
/* new-instance v3, Ljava/lang/IllegalArgumentException; */
/* invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V */
/* throw v3 */
/* .line 249 */
} // .end local v0 # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
/* .restart local v2 # "parent":Landroid/content/Intent; */
} // :cond_0
} // .end method
public android.support.v4.app.TaskStackBuilder addParentStack ( java.lang.Class p0 ) {
/* .locals 2 */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Ljava/lang/Class", */
/* "<*>;)", */
/* "Landroid/support/v4/app/TaskStackBuilder;" */
/* } */
} // .end annotation
/* .prologue */
/* .line 226 */
/* .local p1, "sourceActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;" */
/* new-instance v0, Landroid/content/ComponentName; */
v1 = this.mSourceContext;
/* invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V */
(( android.support.v4.app.TaskStackBuilder ) p0 ).addParentStack ( v0 ); // invoke-virtual {p0, v0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)Landroid/support/v4/app/TaskStackBuilder;
} // .end method
public android.content.Intent editIntentAt ( Integer p0 ) {
/* .locals 1 */
/* .param p1, "index" # I */
/* .prologue */
/* .line 282 */
v0 = this.mIntents;
(( java.util.ArrayList ) v0 ).get ( p1 ); // invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v0, Landroid/content/Intent; */
} // .end method
public android.content.Intent getIntent ( Integer p0 ) {
/* .locals 1 */
/* .param p1, "index" # I */
/* .prologue */
/* .line 270 */
(( android.support.v4.app.TaskStackBuilder ) p0 ).editIntentAt ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/app/TaskStackBuilder;->editIntentAt(I)Landroid/content/Intent;
} // .end method
public Integer getIntentCount ( ) {
/* .locals 1 */
/* .prologue */
/* .line 256 */
v0 = this.mIntents;
v0 = (( java.util.ArrayList ) v0 ).size ( ); // invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
} // .end method
public android.content.Intent getIntents ( ) {
/* .locals 5 */
/* .prologue */
int v4 = 0; // const/4 v4, 0x0
/* .line 382 */
v2 = this.mIntents;
v2 = (( java.util.ArrayList ) v2 ).size ( ); // invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
/* new-array v1, v2, [Landroid/content/Intent; */
/* .line 383 */
/* .local v1, "intents":[Landroid/content/Intent; */
/* array-length v2, v1 */
/* if-nez v2, :cond_1 */
/* .line 391 */
} // :cond_0
/* .line 385 */
} // :cond_1
/* new-instance v3, Landroid/content/Intent; */
v2 = this.mIntents;
(( java.util.ArrayList ) v2 ).get ( v4 ); // invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v2, Landroid/content/Intent; */
/* invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V */
/* const v2, 0x1000c000 */
(( android.content.Intent ) v3 ).addFlags ( v2 ); // invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
/* aput-object v2, v1, v4 */
/* .line 388 */
int v0 = 1; // const/4 v0, 0x1
/* .local v0, "i":I */
} // :goto_0
/* array-length v2, v1 */
/* if-ge v0, v2, :cond_0 */
/* .line 389 */
/* new-instance v3, Landroid/content/Intent; */
v2 = this.mIntents;
(( java.util.ArrayList ) v2 ).get ( v0 ); // invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
/* check-cast v2, Landroid/content/Intent; */
/* invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V */
/* aput-object v3, v1, v0 */
/* .line 388 */
/* add-int/lit8 v0, v0, 0x1 */
} // .end method
public android.app.PendingIntent getPendingIntent ( Integer p0, Integer p1 ) {
/* .locals 1 */
/* .param p1, "requestCode" # I */
/* .param p2, "flags" # I */
/* .prologue */
/* .line 344 */
int v0 = 0; // const/4 v0, 0x0
(( android.support.v4.app.TaskStackBuilder ) p0 ).getPendingIntent ( p1, p2, v0 ); // invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;)Landroid/app/PendingIntent;
} // .end method
public android.app.PendingIntent getPendingIntent ( Integer p0, Integer p1, android.os.Bundle p2 ) {
/* .locals 6 */
/* .param p1, "requestCode" # I */
/* .param p2, "flags" # I */
/* .param p3, "options" # Landroid/os/Bundle; */
/* .prologue */
int v3 = 0; // const/4 v3, 0x0
/* .line 361 */
v0 = this.mIntents;
v0 = (( java.util.ArrayList ) v0 ).isEmpty ( ); // invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 362 */
/* new-instance v0, Ljava/lang/IllegalStateException; */
final String v1 = "No intents added to TaskStackBuilder; cannot getPendingIntent"; // const-string v1, "No intents added to TaskStackBuilder; cannot getPendingIntent"
/* invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
/* throw v0 */
/* .line 366 */
} // :cond_0
v0 = this.mIntents;
v1 = this.mIntents;
v1 = (( java.util.ArrayList ) v1 ).size ( ); // invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
/* new-array v1, v1, [Landroid/content/Intent; */
(( java.util.ArrayList ) v0 ).toArray ( v1 ); // invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
/* check-cast v2, [Landroid/content/Intent; */
/* .line 367 */
/* .local v2, "intents":[Landroid/content/Intent; */
/* new-instance v0, Landroid/content/Intent; */
/* aget-object v1, v2, v3 */
/* invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V */
/* const v1, 0x1000c000 */
(( android.content.Intent ) v0 ).addFlags ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
/* aput-object v0, v2, v3 */
/* .line 371 */
v0 = android.support.v4.app.TaskStackBuilder.IMPL;
v1 = this.mSourceContext;
/* move v3, p1 */
/* move v4, p2 */
/* move-object v5, p3 */
/* invoke-interface/range {v0 ..v5}, Landroid/support/v4/app/TaskStackBuilder$TaskStackBuilderImpl;->getPendingIntent(Landroid/content/Context;[Landroid/content/Intent;IILandroid/os/Bundle;)Landroid/app/PendingIntent; */
} // .end method
public java.util.Iterator iterator ( ) {
/* .locals 1 */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "()", */
/* "Ljava/util/Iterator", */
/* "<", */
/* "Landroid/content/Intent;", */
/* ">;" */
/* } */
} // .end annotation
/* .prologue */
/* .line 289 */
v0 = this.mIntents;
(( java.util.ArrayList ) v0 ).iterator ( ); // invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
} // .end method
public void startActivities ( ) {
/* .locals 1 */
/* .prologue */
/* .line 301 */
int v0 = 0; // const/4 v0, 0x0
(( android.support.v4.app.TaskStackBuilder ) p0 ).startActivities ( v0 ); // invoke-virtual {p0, v0}, Landroid/support/v4/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;)V
/* .line 302 */
return;
} // .end method
public void startActivities ( android.os.Bundle p0 ) {
/* .locals 5 */
/* .param p1, "options" # Landroid/os/Bundle; */
/* .prologue */
int v4 = 0; // const/4 v4, 0x0
/* .line 316 */
v2 = this.mIntents;
v2 = (( java.util.ArrayList ) v2 ).isEmpty ( ); // invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
if ( v2 != null) { // if-eqz v2, :cond_0
/* .line 317 */
/* new-instance v2, Ljava/lang/IllegalStateException; */
final String v3 = "No intents added to TaskStackBuilder; cannot startActivities"; // const-string v3, "No intents added to TaskStackBuilder; cannot startActivities"
/* invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
/* throw v2 */
/* .line 321 */
} // :cond_0
v2 = this.mIntents;
v3 = this.mIntents;
v3 = (( java.util.ArrayList ) v3 ).size ( ); // invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
/* new-array v3, v3, [Landroid/content/Intent; */
(( java.util.ArrayList ) v2 ).toArray ( v3 ); // invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
/* check-cast v0, [Landroid/content/Intent; */
/* .line 322 */
/* .local v0, "intents":[Landroid/content/Intent; */
/* new-instance v2, Landroid/content/Intent; */
/* aget-object v3, v0, v4 */
/* invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V */
/* const v3, 0x1000c000 */
(( android.content.Intent ) v2 ).addFlags ( v3 ); // invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
/* aput-object v2, v0, v4 */
/* .line 325 */
v2 = this.mSourceContext;
v2 = android.support.v4.content.ContextCompat .startActivities ( v2,v0,p1 );
/* if-nez v2, :cond_1 */
/* .line 326 */
/* new-instance v1, Landroid/content/Intent; */
/* array-length v2, v0 */
/* add-int/lit8 v2, v2, -0x1 */
/* aget-object v2, v0, v2 */
/* invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V */
/* .line 327 */
/* .local v1, "topIntent":Landroid/content/Intent; */
/* const/high16 v2, 0x10000000 */
(( android.content.Intent ) v1 ).addFlags ( v2 ); // invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
/* .line 328 */
v2 = this.mSourceContext;
(( android.content.Context ) v2 ).startActivity ( v1 ); // invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
/* .line 330 */
} // .end local v1 # "topIntent":Landroid/content/Intent;
} // :cond_1
return;
} // .end method
