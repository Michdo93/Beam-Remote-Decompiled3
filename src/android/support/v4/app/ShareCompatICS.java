class android.support.v4.app.ShareCompatICS {
	 /* .source "ShareCompatICS.java" */
	 /* # static fields */
	 private static final java.lang.String HISTORY_FILENAME_PREFIX;
	 /* # direct methods */
	 android.support.v4.app.ShareCompatICS ( ) {
		 /* .locals 0 */
		 /* .prologue */
		 /* .line 25 */
		 /* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
		 return;
	 } // .end method
	 public static void configureMenuItem ( android.view.MenuItem p0, android.app.Activity p1, android.content.Intent p2 ) {
		 /* .locals 4 */
		 /* .param p0, "item" # Landroid/view/MenuItem; */
		 /* .param p1, "callingActivity" # Landroid/app/Activity; */
		 /* .param p2, "intent" # Landroid/content/Intent; */
		 /* .prologue */
		 /* .line 29 */
		 /* .line 30 */
		 /* .local v0, "itemProvider":Landroid/view/ActionProvider; */
		 int v1 = 0; // const/4 v1, 0x0
		 /* .line 31 */
		 /* .local v1, "provider":Landroid/widget/ShareActionProvider; */
		 /* instance-of v2, v0, Landroid/widget/ShareActionProvider; */
		 /* if-nez v2, :cond_0 */
		 /* .line 32 */
		 /* new-instance v1, Landroid/widget/ShareActionProvider; */
	 } // .end local v1 # "provider":Landroid/widget/ShareActionProvider;
	 /* invoke-direct {v1, p1}, Landroid/widget/ShareActionProvider;-><init>(Landroid/content/Context;)V */
	 /* .line 36 */
	 /* .restart local v1 # "provider":Landroid/widget/ShareActionProvider; */
} // :goto_0
/* new-instance v2, Ljava/lang/StringBuilder; */
/* invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V */
final String v3 = ".sharecompat_"; // const-string v3, ".sharecompat_"
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.Object ) p1 ).getClass ( ); // invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
(( java.lang.Class ) v3 ).getName ( ); // invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).toString ( ); // invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
(( android.widget.ShareActionProvider ) v1 ).setShareHistoryFileName ( v2 ); // invoke-virtual {v1, v2}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V
/* .line 38 */
(( android.widget.ShareActionProvider ) v1 ).setShareIntent ( p2 ); // invoke-virtual {v1, p2}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V
/* .line 39 */
/* .line 40 */
return;
} // :cond_0
/* move-object v1, v0 */
/* .line 34 */
/* check-cast v1, Landroid/widget/ShareActionProvider; */
} // .end method
