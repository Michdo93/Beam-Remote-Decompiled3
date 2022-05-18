public class android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat {
	 /* .source "AccessibilityServiceInfoCompat.java" */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoJellyBeanMr2;, */
	 /* Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl;, */
	 /* Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl;, */
	 /* Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl; */
	 /* } */
} // .end annotation
/* # static fields */
public static final Integer CAPABILITY_CAN_FILTER_KEY_EVENTS;
public static final Integer CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY;
public static final Integer CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION;
public static final Integer CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT;
public static final Integer DEFAULT;
public static final Integer FEEDBACK_ALL_MASK;
public static final Integer FEEDBACK_BRAILLE;
public static final Integer FLAG_INCLUDE_NOT_IMPORTANT_VIEWS;
public static final Integer FLAG_REPORT_VIEW_IDS;
public static final Integer FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY;
public static final Integer FLAG_REQUEST_FILTER_KEY_EVENTS;
public static final Integer FLAG_REQUEST_TOUCH_EXPLORATION_MODE;
private static final android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat$AccessibilityServiceInfoVersionImpl IMPL;
/* # direct methods */
static android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat ( ) {
	 /* .locals 2 */
	 /* .prologue */
	 /* .line 111 */
	 /* const/16 v1, 0x12 */
	 /* if-lt v0, v1, :cond_0 */
	 /* .line 112 */
	 /* new-instance v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoJellyBeanMr2; */
	 /* invoke-direct {v0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoJellyBeanMr2;-><init>()V */
	 /* .line 118 */
} // :goto_0
return;
/* .line 113 */
} // :cond_0
/* const/16 v1, 0xe */
/* if-lt v0, v1, :cond_1 */
/* .line 114 */
/* new-instance v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl; */
/* invoke-direct {v0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoIcsImpl;-><init>()V */
/* .line 116 */
} // :cond_1
/* new-instance v0, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl; */
/* invoke-direct {v0}, Landroid/support/v4/accessibilityservice/AccessibilityServiceInfoCompat$AccessibilityServiceInfoStubImpl;-><init>()V */
} // .end method
private android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat ( ) {
/* .locals 0 */
/* .prologue */
/* .line 280 */
/* invoke-direct {p0}, Ljava/lang/Object;-><init>()V */
/* .line 282 */
return;
} // .end method
public static java.lang.String capabilityToString ( Integer p0 ) {
/* .locals 1 */
/* .param p0, "capability" # I */
/* .prologue */
/* .line 438 */
/* packed-switch p0, :pswitch_data_0 */
/* .line 448 */
/* :pswitch_0 */
final String v0 = "UNKNOWN"; // const-string v0, "UNKNOWN"
} // :goto_0
/* .line 440 */
/* :pswitch_1 */
final String v0 = "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT"; // const-string v0, "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT"
/* .line 442 */
/* :pswitch_2 */
final String v0 = "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION"; // const-string v0, "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION"
/* .line 444 */
/* :pswitch_3 */
final String v0 = "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY"; // const-string v0, "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY"
/* .line 446 */
/* :pswitch_4 */
final String v0 = "CAPABILITY_CAN_FILTER_KEY_EVENTS"; // const-string v0, "CAPABILITY_CAN_FILTER_KEY_EVENTS"
/* .line 438 */
/* :pswitch_data_0 */
/* .packed-switch 0x1 */
/* :pswitch_1 */
/* :pswitch_2 */
/* :pswitch_0 */
/* :pswitch_3 */
/* :pswitch_0 */
/* :pswitch_0 */
/* :pswitch_0 */
/* :pswitch_4 */
} // .end packed-switch
} // .end method
public static java.lang.String feedbackTypeToString ( Integer p0 ) {
/* .locals 4 */
/* .param p0, "feedbackType" # I */
/* .prologue */
int v3 = 1; // const/4 v3, 0x1
/* .line 356 */
/* new-instance v0, Ljava/lang/StringBuilder; */
/* invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V */
/* .line 357 */
/* .local v0, "builder":Ljava/lang/StringBuilder; */
final String v2 = "["; // const-string v2, "["
(( java.lang.StringBuilder ) v0 ).append ( v2 ); // invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 358 */
} // :goto_0
/* if-lez p0, :cond_1 */
/* .line 359 */
v2 = java.lang.Integer .numberOfTrailingZeros ( p0 );
/* shl-int v1, v3, v2 */
/* .line 360 */
/* .local v1, "feedbackTypeFlag":I */
/* xor-int/lit8 v2, v1, -0x1 */
/* and-int/2addr p0, v2 */
/* .line 361 */
v2 = (( java.lang.StringBuilder ) v0 ).length ( ); // invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
/* if-le v2, v3, :cond_0 */
/* .line 362 */
final String v2 = ", "; // const-string v2, ", "
(( java.lang.StringBuilder ) v0 ).append ( v2 ); // invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 364 */
} // :cond_0
/* sparse-switch v1, :sswitch_data_0 */
/* .line 375 */
/* :sswitch_0 */
final String v2 = "FEEDBACK_SPOKEN"; // const-string v2, "FEEDBACK_SPOKEN"
(( java.lang.StringBuilder ) v0 ).append ( v2 ); // invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 366 */
/* :sswitch_1 */
final String v2 = "FEEDBACK_AUDIBLE"; // const-string v2, "FEEDBACK_AUDIBLE"
(( java.lang.StringBuilder ) v0 ).append ( v2 ); // invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 369 */
/* :sswitch_2 */
final String v2 = "FEEDBACK_HAPTIC"; // const-string v2, "FEEDBACK_HAPTIC"
(( java.lang.StringBuilder ) v0 ).append ( v2 ); // invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 372 */
/* :sswitch_3 */
final String v2 = "FEEDBACK_GENERIC"; // const-string v2, "FEEDBACK_GENERIC"
(( java.lang.StringBuilder ) v0 ).append ( v2 ); // invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 378 */
/* :sswitch_4 */
final String v2 = "FEEDBACK_VISUAL"; // const-string v2, "FEEDBACK_VISUAL"
(( java.lang.StringBuilder ) v0 ).append ( v2 ); // invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 382 */
} // .end local v1 # "feedbackTypeFlag":I
} // :cond_1
final String v2 = "]"; // const-string v2, "]"
(( java.lang.StringBuilder ) v0 ).append ( v2 ); // invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
/* .line 383 */
(( java.lang.StringBuilder ) v0 ).toString ( ); // invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
/* .line 364 */
/* nop */
/* :sswitch_data_0 */
/* .sparse-switch */
/* 0x1 -> :sswitch_0 */
/* 0x2 -> :sswitch_2 */
/* 0x4 -> :sswitch_1 */
/* 0x8 -> :sswitch_4 */
/* 0x10 -> :sswitch_3 */
} // .end sparse-switch
} // .end method
public static java.lang.String flagToString ( Integer p0 ) {
/* .locals 1 */
/* .param p0, "flag" # I */
/* .prologue */
/* .line 395 */
/* sparse-switch p0, :sswitch_data_0 */
/* .line 409 */
int v0 = 0; // const/4 v0, 0x0
} // :goto_0
/* .line 397 */
/* :sswitch_0 */
final String v0 = "DEFAULT"; // const-string v0, "DEFAULT"
/* .line 399 */
/* :sswitch_1 */
final String v0 = "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS"; // const-string v0, "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS"
/* .line 401 */
/* :sswitch_2 */
final String v0 = "FLAG_REQUEST_TOUCH_EXPLORATION_MODE"; // const-string v0, "FLAG_REQUEST_TOUCH_EXPLORATION_MODE"
/* .line 403 */
/* :sswitch_3 */
final String v0 = "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY"; // const-string v0, "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY"
/* .line 405 */
/* :sswitch_4 */
final String v0 = "FLAG_REPORT_VIEW_IDS"; // const-string v0, "FLAG_REPORT_VIEW_IDS"
/* .line 407 */
/* :sswitch_5 */
final String v0 = "FLAG_REQUEST_FILTER_KEY_EVENTS"; // const-string v0, "FLAG_REQUEST_FILTER_KEY_EVENTS"
/* .line 395 */
/* nop */
/* :sswitch_data_0 */
/* .sparse-switch */
/* 0x1 -> :sswitch_0 */
/* 0x2 -> :sswitch_1 */
/* 0x4 -> :sswitch_2 */
/* 0x8 -> :sswitch_3 */
/* 0x10 -> :sswitch_4 */
/* 0x20 -> :sswitch_5 */
} // .end sparse-switch
} // .end method
public static Boolean getCanRetrieveWindowContent ( android.accessibilityservice.AccessibilityServiceInfo p0 ) {
/* .locals 1 */
/* .param p0, "info" # Landroid/accessibilityservice/AccessibilityServiceInfo; */
/* .prologue */
/* .line 331 */
v0 = v0 = android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.IMPL;
} // .end method
public static Integer getCapabilities ( android.accessibilityservice.AccessibilityServiceInfo p0 ) {
/* .locals 1 */
/* .param p0, "info" # Landroid/accessibilityservice/AccessibilityServiceInfo; */
/* .prologue */
/* .line 426 */
v0 = v0 = android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.IMPL;
} // .end method
public static java.lang.String getDescription ( android.accessibilityservice.AccessibilityServiceInfo p0 ) {
/* .locals 1 */
/* .param p0, "info" # Landroid/accessibilityservice/AccessibilityServiceInfo; */
/* .prologue */
/* .line 344 */
v0 = android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.IMPL;
} // .end method
public static java.lang.String getId ( android.accessibilityservice.AccessibilityServiceInfo p0 ) {
/* .locals 1 */
/* .param p0, "info" # Landroid/accessibilityservice/AccessibilityServiceInfo; */
/* .prologue */
/* .line 293 */
v0 = android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.IMPL;
} // .end method
public static android.content.pm.ResolveInfo getResolveInfo ( android.accessibilityservice.AccessibilityServiceInfo p0 ) {
/* .locals 1 */
/* .param p0, "info" # Landroid/accessibilityservice/AccessibilityServiceInfo; */
/* .prologue */
/* .line 305 */
v0 = android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.IMPL;
} // .end method
public static java.lang.String getSettingsActivityName ( android.accessibilityservice.AccessibilityServiceInfo p0 ) {
/* .locals 1 */
/* .param p0, "info" # Landroid/accessibilityservice/AccessibilityServiceInfo; */
/* .prologue */
/* .line 318 */
v0 = android.support.v4.accessibilityservice.AccessibilityServiceInfoCompat.IMPL;
} // .end method
