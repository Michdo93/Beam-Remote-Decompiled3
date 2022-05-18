class android.support.v4.app.TaskStackBuilder$TaskStackBuilderImplJellybean implements android.support.v4.app.TaskStackBuilder$TaskStackBuilderImpl {
	 /* .source "TaskStackBuilder.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/TaskStackBuilder; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x8 */
/* name = "TaskStackBuilderImplJellybean" */
} // .end annotation
/* # direct methods */
 android.support.v4.app.TaskStackBuilder$TaskStackBuilderImplJellybean ( ) {
/* .locals 0 */
/* .prologue */
/* .line 101 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
/* # virtual methods */
public android.app.PendingIntent getPendingIntent ( android.content.Context p0, android.content.Intent[] p1, Integer p2, Integer p3, android.os.Bundle p4 ) {
/* .locals 3 */
/* .param p1, "context" # Landroid/content/Context; */
/* .param p2, "intents" # [Landroid/content/Intent; */
/* .param p3, "requestCode" # I */
/* .param p4, "flags" # I */
/* .param p5, "options" # Landroid/os/Bundle; */
/* .prologue */
int v2 = 0; // const/4 v2, 0x0
/* .line 104 */
/* new-instance v0, Landroid/content/Intent; */
/* aget-object v1, p2, v2 */
/* invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V */
/* const v1, 0x1000c000 */
(( android.content.Intent ) v0 ).addFlags ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
/* aput-object v0, p2, v2 */
/* .line 107 */
android.support.v4.app.TaskStackBuilderJellybean .getActivitiesPendingIntent ( p1,p3,p2,p4,p5 );
} // .end method
