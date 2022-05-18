public class android.support.v4.app.ActivityOptionsCompat {
	 /* .source "ActivityOptionsCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;, */
	 /* Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB; */
	 /* } */
} // .end annotation
/* # direct methods */
protected android.support.v4.app.ActivityOptionsCompat ( ) {
	 /* .locals 0 */
	 /* .prologue */
	 /* .line 220 */
	 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
	 /* .line 221 */
	 return;
} // .end method
public static android.support.v4.app.ActivityOptionsCompat makeCustomAnimation ( android.content.Context p0, Integer p1, Integer p2 ) {
	 /* .locals 2 */
	 /* .param p0, "context" # Landroid/content/Context; */
	 /* .param p1, "enterResId" # I */
	 /* .param p2, "exitResId" # I */
	 /* .prologue */
	 /* .line 47 */
	 /* const/16 v1, 0x10 */
	 /* if-lt v0, v1, :cond_0 */
	 /* .line 48 */
	 /* new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB; */
	 android.support.v4.app.ActivityOptionsCompatJB .makeCustomAnimation ( p0,p1,p2 );
	 /* invoke-direct {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;-><init>(Landroid/support/v4/app/ActivityOptionsCompatJB;)V */
	 /* .line 51 */
} // :goto_0
} // :cond_0
/* new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat; */
/* invoke-direct {v0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V */
} // .end method
public static android.support.v4.app.ActivityOptionsCompat makeScaleUpAnimation ( android.view.View p0, Integer p1, Integer p2, Integer p3, Integer p4 ) {
/* .locals 2 */
/* .param p0, "source" # Landroid/view/View; */
/* .param p1, "startX" # I */
/* .param p2, "startY" # I */
/* .param p3, "startWidth" # I */
/* .param p4, "startHeight" # I */
/* .prologue */
/* .line 76 */
/* const/16 v1, 0x10 */
/* if-lt v0, v1, :cond_0 */
/* .line 77 */
/* new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB; */
android.support.v4.app.ActivityOptionsCompatJB .makeScaleUpAnimation ( p0,p1,p2,p3,p4 );
/* invoke-direct {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;-><init>(Landroid/support/v4/app/ActivityOptionsCompatJB;)V */
/* .line 81 */
} // :goto_0
} // :cond_0
/* new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat; */
/* invoke-direct {v0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V */
} // .end method
public static android.support.v4.app.ActivityOptionsCompat makeSceneTransitionAnimation ( android.app.Activity p0, android.view.View p1, java.lang.String p2 ) {
/* .locals 2 */
/* .param p0, "activity" # Landroid/app/Activity; */
/* .param p1, "sharedElement" # Landroid/view/View; */
/* .param p2, "sharedElementName" # Ljava/lang/String; */
/* .prologue */
/* .line 133 */
/* const/16 v1, 0x15 */
/* if-lt v0, v1, :cond_0 */
/* .line 134 */
/* new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21; */
android.support.v4.app.ActivityOptionsCompat21 .makeSceneTransitionAnimation ( p0,p1,p2 );
/* invoke-direct {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Landroid/support/v4/app/ActivityOptionsCompat21;)V */
/* .line 138 */
} // :goto_0
} // :cond_0
/* new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat; */
/* invoke-direct {v0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V */
} // .end method
public static android.support.v4.app.ActivityOptionsCompat makeSceneTransitionAnimation ( android.app.Activity p0, android.support.v4.util.Pair...p1 ) {
/* .locals 5 */
/* .param p0, "activity" # Landroid/app/Activity; */
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "(", */
/* "Landroid/app/Activity;", */
/* "[", */
/* "Landroid/support/v4/util/Pair", */
/* "<", */
/* "Landroid/view/View;", */
/* "Ljava/lang/String;", */
/* ">;)", */
/* "Landroid/support/v4/app/ActivityOptionsCompat;" */
/* } */
} // .end annotation
/* .prologue */
/* .line 160 */
/* .local p1, "sharedElements":[Landroid/support/v4/util/Pair;, "[Landroid/support/v4/util/Pair<Landroid/view/View;Ljava/lang/String;>;" */
/* const/16 v4, 0x15 */
/* if-lt v3, v4, :cond_1 */
/* .line 161 */
int v2 = 0; // const/4 v2, 0x0
/* .line 162 */
/* .local v2, "views":[Landroid/view/View; */
int v1 = 0; // const/4 v1, 0x0
/* .line 163 */
/* .local v1, "names":[Ljava/lang/String; */
if ( p1 != null) { // if-eqz p1, :cond_0
/* .line 164 */
/* array-length v3, p1 */
/* new-array v2, v3, [Landroid/view/View; */
/* .line 165 */
/* array-length v3, p1 */
/* new-array v1, v3, [Ljava/lang/String; */
/* .line 166 */
int v0 = 0; // const/4 v0, 0x0
/* .local v0, "i":I */
} // :goto_0
/* array-length v3, p1 */
/* if-ge v0, v3, :cond_0 */
/* .line 167 */
/* aget-object v3, p1, v0 */
v3 = this.first;
/* check-cast v3, Landroid/view/View; */
/* aput-object v3, v2, v0 */
/* .line 168 */
/* aget-object v3, p1, v0 */
v3 = this.second;
/* check-cast v3, Ljava/lang/String; */
/* aput-object v3, v1, v0 */
/* .line 166 */
/* add-int/lit8 v0, v0, 0x1 */
/* .line 171 */
} // .end local v0 # "i":I
} // :cond_0
/* new-instance v3, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21; */
android.support.v4.app.ActivityOptionsCompat21 .makeSceneTransitionAnimation ( p0,v2,v1 );
/* invoke-direct {v3, v4}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;-><init>(Landroid/support/v4/app/ActivityOptionsCompat21;)V */
/* .line 174 */
} // .end local v1 # "names":[Ljava/lang/String;
} // .end local v2 # "views":[Landroid/view/View;
} // :goto_1
} // :cond_1
/* new-instance v3, Landroid/support/v4/app/ActivityOptionsCompat; */
/* invoke-direct {v3}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V */
} // .end method
public static android.support.v4.app.ActivityOptionsCompat makeThumbnailScaleUpAnimation ( android.view.View p0, android.graphics.Bitmap p1, Integer p2, Integer p3 ) {
/* .locals 2 */
/* .param p0, "source" # Landroid/view/View; */
/* .param p1, "thumbnail" # Landroid/graphics/Bitmap; */
/* .param p2, "startX" # I */
/* .param p3, "startY" # I */
/* .prologue */
/* .line 105 */
/* const/16 v1, 0x10 */
/* if-lt v0, v1, :cond_0 */
/* .line 106 */
/* new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB; */
android.support.v4.app.ActivityOptionsCompatJB .makeThumbnailScaleUpAnimation ( p0,p1,p2,p3 );
/* invoke-direct {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImplJB;-><init>(Landroid/support/v4/app/ActivityOptionsCompatJB;)V */
/* .line 110 */
} // :goto_0
} // :cond_0
/* new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat; */
/* invoke-direct {v0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V */
} // .end method
/* # virtual methods */
public android.os.Bundle toBundle ( ) {
/* .locals 1 */
/* .prologue */
/* .line 231 */
int v0 = 0; // const/4 v0, 0x0
} // .end method
public void update ( android.support.v4.app.ActivityOptionsCompat p0 ) {
/* .locals 0 */
/* .param p1, "otherOptions" # Landroid/support/v4/app/ActivityOptionsCompat; */
/* .prologue */
/* .line 241 */
return;
} // .end method
