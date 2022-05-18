class android.support.v4.app.ShareCompat$ShareCompatImplBase implements android.support.v4.app.ShareCompat$ShareCompatImpl {
	 /* .source "ShareCompat.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/app/ShareCompat; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x8 */
/* name = "ShareCompatImplBase" */
} // .end annotation
/* # direct methods */
 android.support.v4.app.ShareCompat$ShareCompatImplBase ( ) {
/* .locals 0 */
/* .prologue */
/* .line 86 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
return;
} // .end method
private static void withinStyle ( java.lang.StringBuilder p0, java.lang.CharSequence p1, Integer p2, Integer p3 ) {
/* .locals 5 */
/* .param p0, "out" # Ljava/lang/StringBuilder; */
/* .param p1, "text" # Ljava/lang/CharSequence; */
/* .param p2, "start" # I */
/* .param p3, "end" # I */
/* .prologue */
/* const/16 v4, 0x20 */
/* .line 99 */
/* move v1, p2 */
/* .local v1, "i":I */
} // :goto_0
/* if-ge v1, p3, :cond_7 */
v0 = /* .line 100 */
/* .line 102 */
/* .local v0, "c":C */
/* const/16 v2, 0x3c */
/* if-ne v0, v2, :cond_0 */
/* .line 103 */
final String v2 = "&lt;"; // const-string v2, "&lt;"
(( java.lang.StringBuilder ) p0 ).append ( v2 ); // invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 99 */
} // :goto_1
/* add-int/lit8 v1, v1, 0x1 */
/* .line 104 */
} // :cond_0
/* const/16 v2, 0x3e */
/* if-ne v0, v2, :cond_1 */
/* .line 105 */
final String v2 = "&gt;"; // const-string v2, "&gt;"
(( java.lang.StringBuilder ) p0 ).append ( v2 ); // invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 106 */
} // :cond_1
/* const/16 v2, 0x26 */
/* if-ne v0, v2, :cond_2 */
/* .line 107 */
final String v2 = "&amp;"; // const-string v2, "&amp;"
(( java.lang.StringBuilder ) p0 ).append ( v2 ); // invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 108 */
} // :cond_2
/* const/16 v2, 0x7e */
/* if-gt v0, v2, :cond_3 */
/* if-ge v0, v4, :cond_4 */
/* .line 109 */
} // :cond_3
/* new-instance v2, Ljava/lang/StringBuilder; */
/* invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V */
final String v3 = "&#"; // const-string v3, "&#"
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).append ( v0 ); // invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
final String v3 = ";"; // const-string v3, ";"
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).toString ( ); // invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
(( java.lang.StringBuilder ) p0 ).append ( v2 ); // invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 110 */
} // :cond_4
/* if-ne v0, v4, :cond_6 */
/* .line 111 */
} // :goto_2
/* add-int/lit8 v2, v1, 0x1 */
/* if-ge v2, p3, :cond_5 */
v2 = /* add-int/lit8 v2, v1, 0x1 */
/* if-ne v2, v4, :cond_5 */
/* .line 112 */
final String v2 = "&nbsp;"; // const-string v2, "&nbsp;"
(( java.lang.StringBuilder ) p0 ).append ( v2 ); // invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 113 */
/* add-int/lit8 v1, v1, 0x1 */
/* .line 116 */
} // :cond_5
(( java.lang.StringBuilder ) p0 ).append ( v4 ); // invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 118 */
} // :cond_6
(( java.lang.StringBuilder ) p0 ).append ( v0 ); // invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
/* .line 121 */
} // .end local v0 # "c":C
} // :cond_7
return;
} // .end method
/* # virtual methods */
public void configureMenuItem ( android.view.MenuItem p0, android.support.v4.app.ShareCompat$IntentBuilder p1 ) {
/* .locals 1 */
/* .param p1, "item" # Landroid/view/MenuItem; */
/* .param p2, "shareIntent" # Landroid/support/v4/app/ShareCompat$IntentBuilder; */
/* .prologue */
/* .line 88 */
(( android.support.v4.app.ShareCompat$IntentBuilder ) p2 ).createChooserIntent ( ); // invoke-virtual {p2}, Landroid/support/v4/app/ShareCompat$IntentBuilder;->createChooserIntent()Landroid/content/Intent;
/* .line 89 */
return;
} // .end method
public java.lang.String escapeHtml ( java.lang.CharSequence p0 ) {
/* .locals 3 */
/* .param p1, "text" # Ljava/lang/CharSequence; */
/* .prologue */
/* .line 92 */
/* new-instance v0, Ljava/lang/StringBuilder; */
/* invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V */
/* .line 93 */
/* .local v0, "out":Ljava/lang/StringBuilder; */
v2 = int v1 = 0; // const/4 v1, 0x0
android.support.v4.app.ShareCompat$ShareCompatImplBase .withinStyle ( v0,p1,v1,v2 );
/* .line 94 */
(( java.lang.StringBuilder ) v0 ).toString ( ); // invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
} // .end method
