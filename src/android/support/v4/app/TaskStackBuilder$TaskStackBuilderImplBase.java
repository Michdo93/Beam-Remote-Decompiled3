class android.support.v4.app.TaskStackBuilder$TaskStackBuilderImplBase implements android.support.v4.app.TaskStackBuilder$TaskStackBuilderImpl {
	 /* .source "TaskStackBuilder.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/TaskStackBuilder; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x8 */
/* name = "TaskStackBuilderImplBase" */
} // .end annotation
/* # direct methods */
 android.support.v4.app.TaskStackBuilder$TaskStackBuilderImplBase ( ) {
/* .locals 0 */
/* .prologue */
/* .line 81 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
/* # virtual methods */
public android.app.PendingIntent getPendingIntent ( android.content.Context p0, android.content.Intent[] p1, Integer p2, Integer p3, android.os.Bundle p4 ) {
/* .locals 2 */
/* .param p1, "context" # Landroid/content/Context; */
/* .param p2, "intents" # [Landroid/content/Intent; */
/* .param p3, "requestCode" # I */
/* .param p4, "flags" # I */
/* .param p5, "options" # Landroid/os/Bundle; */
/* .prologue */
/* .line 84 */
/* new-instance v0, Landroid/content/Intent; */
/* array-length v1, p2 */
/* add-int/lit8 v1, v1, -0x1 */
/* aget-object v1, p2, v1 */
/* invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V */
/* .line 85 */
/* .local v0, "topIntent":Landroid/content/Intent; */
/* const/high16 v1, 0x10000000 */
(( android.content.Intent ) v0 ).addFlags ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
/* .line 86 */
android.app.PendingIntent .getActivity ( p1,p3,v0,p4 );
} // .end method
