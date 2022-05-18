class android.support.v4.content.FileProvider$SimplePathStrategy implements android.support.v4.content.FileProvider$PathStrategy {
	 /* .source "FileProvider.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/EnclosingClass; */
	 /* value = Landroid/support/v4/content/FileProvider; */
} // .end annotation
/* .annotation system Ldalvik/annotation/InnerClass; */
/* accessFlags = 0x8 */
/* name = "SimplePathStrategy" */
} // .end annotation
/* # instance fields */
private final java.lang.String mAuthority;
private final java.util.HashMap mRoots;
/* .annotation system Ldalvik/annotation/Signature; */
/* value = { */
/* "Ljava/util/HashMap", */
/* "<", */
/* "Ljava/lang/String;", */
/* "Ljava/io/File;", */
/* ">;" */
/* } */
} // .end annotation
} // .end field
/* # direct methods */
public android.support.v4.content.FileProvider$SimplePathStrategy ( ) {
/* .locals 1 */
/* .param p1, "authority" # Ljava/lang/String; */
/* .prologue */
/* .line 634 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 632 */
/* new-instance v0, Ljava/util/HashMap; */
/* invoke-direct {v0}, Ljava/util/HashMap;-><init>()V */
this.mRoots = v0;
/* .line 635 */
this.mAuthority = p1;
/* .line 636 */
return;
} // .end method
/* # virtual methods */
public void addRoot ( java.lang.String p0, java.io.File p1 ) {
/* .locals 4 */
/* .param p1, "name" # Ljava/lang/String; */
/* .param p2, "root" # Ljava/io/File; */
/* .prologue */
/* .line 643 */
v1 = android.text.TextUtils .isEmpty ( p1 );
if ( v1 != null) { // if-eqz v1, :cond_0
/* .line 644 */
/* new-instance v1, Ljava/lang/IllegalArgumentException; */
final String v2 = "Name must not be empty"; // const-string v2, "Name must not be empty"
/* invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V */
/* throw v1 */
/* .line 649 */
} // :cond_0
try { // :try_start_0
(( java.io.File ) p2 ).getCanonicalFile ( ); // invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
/* :try_end_0 */
/* .catch Ljava/io/IOException; {:try_start_0 ..:try_end_0} :catch_0 */
/* .line 655 */
v1 = this.mRoots;
(( java.util.HashMap ) v1 ).put ( p1, p2 ); // invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
/* .line 656 */
return;
/* .line 650 */
/* :catch_0 */
/* move-exception v0 */
/* .line 651 */
/* .local v0, "e":Ljava/io/IOException; */
/* new-instance v1, Ljava/lang/IllegalArgumentException; */
/* new-instance v2, Ljava/lang/StringBuilder; */
/* invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V */
final String v3 = "Failed to resolve canonical path for "; // const-string v3, "Failed to resolve canonical path for "
(( java.lang.StringBuilder ) v2 ).append ( v3 ); // invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).append ( p2 ); // invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v2 ).toString ( ); // invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V */
/* throw v1 */
} // .end method
public java.io.File getFileForUri ( android.net.Uri p0 ) {
/* .locals 9 */
/* .param p1, "uri" # Landroid/net/Uri; */
/* .prologue */
int v7 = 1; // const/4 v7, 0x1
/* .line 698 */
(( android.net.Uri ) p1 ).getEncodedPath ( ); // invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;
/* .line 700 */
/* .local v2, "path":Ljava/lang/String; */
/* const/16 v6, 0x2f */
v4 = (( java.lang.String ) v2 ).indexOf ( v6, v7 ); // invoke-virtual {v2, v6, v7}, Ljava/lang/String;->indexOf(II)I
/* .line 701 */
/* .local v4, "splitIndex":I */
(( java.lang.String ) v2 ).substring ( v7, v4 ); // invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
android.net.Uri .decode ( v6 );
/* .line 702 */
/* .local v5, "tag":Ljava/lang/String; */
/* add-int/lit8 v6, v4, 0x1 */
(( java.lang.String ) v2 ).substring ( v6 ); // invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
android.net.Uri .decode ( v6 );
/* .line 704 */
v6 = this.mRoots;
(( java.util.HashMap ) v6 ).get ( v5 ); // invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
/* check-cast v3, Ljava/io/File; */
/* .line 705 */
/* .local v3, "root":Ljava/io/File; */
/* if-nez v3, :cond_0 */
/* .line 706 */
/* new-instance v6, Ljava/lang/IllegalArgumentException; */
/* new-instance v7, Ljava/lang/StringBuilder; */
/* invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V */
final String v8 = "Unable to find configured root for "; // const-string v8, "Unable to find configured root for "
(( java.lang.StringBuilder ) v7 ).append ( v8 ); // invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v7 ).append ( p1 ); // invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v7 ).toString ( ); // invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V */
/* throw v6 */
/* .line 709 */
} // :cond_0
/* new-instance v1, Ljava/io/File; */
/* invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V */
/* .line 711 */
/* .local v1, "file":Ljava/io/File; */
try { // :try_start_0
(( java.io.File ) v1 ).getCanonicalFile ( ); // invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
/* :try_end_0 */
/* .catch Ljava/io/IOException; {:try_start_0 ..:try_end_0} :catch_0 */
/* .line 716 */
(( java.io.File ) v1 ).getPath ( ); // invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
(( java.io.File ) v3 ).getPath ( ); // invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;
v6 = (( java.lang.String ) v6 ).startsWith ( v7 ); // invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
/* if-nez v6, :cond_1 */
/* .line 717 */
/* new-instance v6, Ljava/lang/SecurityException; */
final String v7 = "Resolved path jumped beyond configured root"; // const-string v7, "Resolved path jumped beyond configured root"
/* invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V */
/* throw v6 */
/* .line 712 */
/* :catch_0 */
/* move-exception v0 */
/* .line 713 */
/* .local v0, "e":Ljava/io/IOException; */
/* new-instance v6, Ljava/lang/IllegalArgumentException; */
/* new-instance v7, Ljava/lang/StringBuilder; */
/* invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V */
final String v8 = "Failed to resolve canonical path for "; // const-string v8, "Failed to resolve canonical path for "
(( java.lang.StringBuilder ) v7 ).append ( v8 ); // invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v7 ).append ( v1 ); // invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v7 ).toString ( ); // invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V */
/* throw v6 */
/* .line 720 */
} // .end local v0 # "e":Ljava/io/IOException;
} // :cond_1
} // .end method
public android.net.Uri getUriForFile ( java.io.File p0 ) {
/* .locals 9 */
/* .param p1, "file" # Ljava/io/File; */
/* .prologue */
/* .line 662 */
try { // :try_start_0
(( java.io.File ) p1 ).getCanonicalPath ( ); // invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
/* :try_end_0 */
/* .catch Ljava/io/IOException; {:try_start_0 ..:try_end_0} :catch_0 */
/* .line 668 */
/* .local v3, "path":Ljava/lang/String; */
int v2 = 0; // const/4 v2, 0x0
/* .line 669 */
/* .local v2, "mostSpecific":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;" */
v6 = this.mRoots;
(( java.util.HashMap ) v6 ).entrySet ( ); // invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
/* .local v1, "i$":Ljava/util/Iterator; */
} // :cond_0
v6 = } // :goto_0
if ( v6 != null) { // if-eqz v6, :cond_2
/* check-cast v4, Ljava/util/Map$Entry; */
/* .line 670 */
/* .local v4, "root":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;" */
/* check-cast v6, Ljava/io/File; */
(( java.io.File ) v6 ).getPath ( ); // invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;
/* .line 671 */
/* .local v5, "rootPath":Ljava/lang/String; */
v6 = (( java.lang.String ) v3 ).startsWith ( v5 ); // invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
if ( v6 != null) { // if-eqz v6, :cond_0
if ( v2 != null) { // if-eqz v2, :cond_1
v7 = (( java.lang.String ) v5 ).length ( ); // invoke-virtual {v5}, Ljava/lang/String;->length()I
/* check-cast v6, Ljava/io/File; */
(( java.io.File ) v6 ).getPath ( ); // invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;
v6 = (( java.lang.String ) v6 ).length ( ); // invoke-virtual {v6}, Ljava/lang/String;->length()I
/* if-le v7, v6, :cond_0 */
/* .line 673 */
} // :cond_1
/* move-object v2, v4 */
/* .line 663 */
} // .end local v1 # "i$":Ljava/util/Iterator;
} // .end local v2 # "mostSpecific":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
} // .end local v3 # "path":Ljava/lang/String;
} // .end local v4 # "root":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;"
} // .end local v5 # "rootPath":Ljava/lang/String;
/* :catch_0 */
/* move-exception v0 */
/* .line 664 */
/* .local v0, "e":Ljava/io/IOException; */
/* new-instance v6, Ljava/lang/IllegalArgumentException; */
/* new-instance v7, Ljava/lang/StringBuilder; */
/* invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V */
final String v8 = "Failed to resolve canonical path for "; // const-string v8, "Failed to resolve canonical path for "
(( java.lang.StringBuilder ) v7 ).append ( v8 ); // invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v7 ).append ( p1 ); // invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v7 ).toString ( ); // invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V */
/* throw v6 */
/* .line 677 */
} // .end local v0 # "e":Ljava/io/IOException;
/* .restart local v1 # "i$":Ljava/util/Iterator; */
/* .restart local v2 # "mostSpecific":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/io/File;>;" */
/* .restart local v3 # "path":Ljava/lang/String; */
} // :cond_2
/* if-nez v2, :cond_3 */
/* .line 678 */
/* new-instance v6, Ljava/lang/IllegalArgumentException; */
/* new-instance v7, Ljava/lang/StringBuilder; */
/* invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V */
final String v8 = "Failed to find configured root that contains "; // const-string v8, "Failed to find configured root that contains "
(( java.lang.StringBuilder ) v7 ).append ( v8 ); // invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v7 ).append ( v3 ); // invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v7 ).toString ( ); // invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V */
/* throw v6 */
/* .line 683 */
} // :cond_3
/* check-cast v6, Ljava/io/File; */
(( java.io.File ) v6 ).getPath ( ); // invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;
/* .line 684 */
/* .restart local v5 # "rootPath":Ljava/lang/String; */
final String v6 = "/"; // const-string v6, "/"
v6 = (( java.lang.String ) v5 ).endsWith ( v6 ); // invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
if ( v6 != null) { // if-eqz v6, :cond_4
/* .line 685 */
v6 = (( java.lang.String ) v5 ).length ( ); // invoke-virtual {v5}, Ljava/lang/String;->length()I
(( java.lang.String ) v3 ).substring ( v6 ); // invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
/* .line 691 */
} // :goto_1
/* new-instance v7, Ljava/lang/StringBuilder; */
/* invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V */
/* check-cast v6, Ljava/lang/String; */
android.net.Uri .encode ( v6 );
(( java.lang.StringBuilder ) v7 ).append ( v6 ); // invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* const/16 v7, 0x2f */
(( java.lang.StringBuilder ) v6 ).append ( v7 ); // invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
final String v7 = "/"; // const-string v7, "/"
android.net.Uri .encode ( v3,v7 );
(( java.lang.StringBuilder ) v6 ).append ( v7 ); // invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
(( java.lang.StringBuilder ) v6 ).toString ( ); // invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* .line 692 */
/* new-instance v6, Landroid/net/Uri$Builder; */
/* invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V */
final String v7 = "content"; // const-string v7, "content"
(( android.net.Uri$Builder ) v6 ).scheme ( v7 ); // invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;
v7 = this.mAuthority;
(( android.net.Uri$Builder ) v6 ).authority ( v7 ); // invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;
(( android.net.Uri$Builder ) v6 ).encodedPath ( v3 ); // invoke-virtual {v6, v3}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
(( android.net.Uri$Builder ) v6 ).build ( ); // invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
/* .line 687 */
} // :cond_4
v6 = (( java.lang.String ) v5 ).length ( ); // invoke-virtual {v5}, Ljava/lang/String;->length()I
/* add-int/lit8 v6, v6, 0x1 */
(( java.lang.String ) v3 ).substring ( v6 ); // invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
} // .end method
