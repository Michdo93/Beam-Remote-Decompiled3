public class inal extends java.lang.Enum {
	 /* .source "ModernAsyncTask.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/content/ModernAsyncTask; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x4019 */
/* name = "Status" */
} // .end annotation
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/lang/Enum", */
/* "<", */
/* "Landroid/support/v4/content/ModernAsyncTask$Status;", */
/* ">;" */
/* } */
} // .end annotation
/* # static fields */
private static final android.support.v4.content.ModernAsyncTask$Status $VALUES; //synthetic
public static final android.support.v4.content.ModernAsyncTask$Status FINISHED;
public static final android.support.v4.content.ModernAsyncTask$Status PENDING;
public static final android.support.v4.content.ModernAsyncTask$Status RUNNING;
/* # direct methods */
static inal ( ) {
/* .locals 5 */
/* .prologue */
int v4 = 2; // const/4 v4, 0x2
int v3 = 1; // const/4 v3, 0x1
int v2 = 0; // const/4 v2, 0x0
/* .line 93 */
/* new-instance v0, Landroid/support/v4/content/ModernAsyncTask$Status; */
final String v1 = "PENDING"; // const-string v1, "PENDING"
/* invoke-direct {v0, v1, v2}, Landroid/support/v4/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V */
/* .line 97 */
/* new-instance v0, Landroid/support/v4/content/ModernAsyncTask$Status; */
final String v1 = "RUNNING"; // const-string v1, "RUNNING"
/* invoke-direct {v0, v1, v3}, Landroid/support/v4/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V */
/* .line 101 */
/* new-instance v0, Landroid/support/v4/content/ModernAsyncTask$Status; */
final String v1 = "FINISHED"; // const-string v1, "FINISHED"
/* invoke-direct {v0, v1, v4}, Landroid/support/v4/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V */
/* .line 89 */
int v0 = 3; // const/4 v0, 0x3
/* new-array v0, v0, [Landroid/support/v4/content/ModernAsyncTask$Status; */
v1 = android.support.v4.content.ModernAsyncTask$Status.PENDING;
/* aput-object v1, v0, v2 */
v1 = android.support.v4.content.ModernAsyncTask$Status.RUNNING;
/* aput-object v1, v0, v3 */
v1 = android.support.v4.content.ModernAsyncTask$Status.FINISHED;
/* aput-object v1, v0, v4 */
return;
} // .end method
private inal ( ) {
/* .locals 0 */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "()V" */
/* } */
} // .end annotation
/* .prologue */
/* .line 89 */
/* invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V */
return;
} // .end method
public static android.support.v4.content.ModernAsyncTask$Status valueOf ( java.lang.String p0 ) {
/* .locals 1 */
/* .param p0, "name" # Ljava/lang/String; */
/* .prologue */
/* .line 89 */
/* const-class v0, Landroid/support/v4/content/ModernAsyncTask$Status; */
java.lang.Enum .valueOf ( v0,p0 );
/* check-cast v0, Landroid/support/v4/content/ModernAsyncTask$Status; */
} // .end method
public static android.support.v4.content.ModernAsyncTask$Status values ( ) {
/* .locals 1 */
/* .prologue */
/* .line 89 */
v0 = android.support.v4.content.ModernAsyncTask$Status.$VALUES;
(( android.support.v4.content.ModernAsyncTask$Status ) v0 ).clone ( ); // invoke-virtual {v0}, [Landroid/support/v4/content/ModernAsyncTask$Status;->clone()Ljava/lang/Object;
/* check-cast v0, [Landroid/support/v4/content/ModernAsyncTask$Status; */
} // .end method
