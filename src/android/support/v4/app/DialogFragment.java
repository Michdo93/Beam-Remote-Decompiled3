public class android.support.v4.app.DialogFragment extends android.support.v4.app.Fragment implements android.content.DialogInterface$OnCancelListener implements android.content.DialogInterface$OnDismissListener {
	 /* .source "DialogFragment.java" */
	 /* # interfaces */
	 /* # annotations */
	 /* .annotation system Ldalvik/annotation/MemberClasses; */
	 /* value = { */
	 /* Landroid/support/v4/app/DialogFragment$DialogStyle; */
	 /* } */
} // .end annotation
/* # static fields */
private static final java.lang.String SAVED_BACK_STACK_ID;
private static final java.lang.String SAVED_CANCELABLE;
private static final java.lang.String SAVED_DIALOG_STATE_TAG;
private static final java.lang.String SAVED_SHOWS_DIALOG;
private static final java.lang.String SAVED_STYLE;
private static final java.lang.String SAVED_THEME;
public static final Integer STYLE_NORMAL;
public static final Integer STYLE_NO_FRAME;
public static final Integer STYLE_NO_INPUT;
public static final Integer STYLE_NO_TITLE;
/* # instance fields */
Integer mBackStackId;
Boolean mCancelable;
android.app.Dialog mDialog;
Boolean mDismissed;
Boolean mShownByMe;
Boolean mShowsDialog;
Integer mStyle;
Integer mTheme;
Boolean mViewDestroyed;
/* # direct methods */
public android.support.v4.app.DialogFragment ( ) {
	 /* .locals 2 */
	 /* .prologue */
	 int v1 = 1; // const/4 v1, 0x1
	 int v0 = 0; // const/4 v0, 0x0
	 /* .line 95 */
	 /* invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V */
	 /* .line 84 */
	 /* iput v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I */
	 /* .line 85 */
	 /* iput v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I */
	 /* .line 86 */
	 /* iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z */
	 /* .line 87 */
	 /* iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z */
	 /* .line 88 */
	 int v0 = -1; // const/4 v0, -0x1
	 /* iput v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I */
	 /* .line 96 */
	 return;
} // .end method
/* # virtual methods */
public void dismiss ( ) {
	 /* .locals 1 */
	 /* .prologue */
	 /* .line 166 */
	 int v0 = 0; // const/4 v0, 0x0
	 (( android.support.v4.app.DialogFragment ) p0 ).dismissInternal ( v0 ); // invoke-virtual {p0, v0}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V
	 /* .line 167 */
	 return;
} // .end method
public void dismissAllowingStateLoss ( ) {
	 /* .locals 1 */
	 /* .prologue */
	 /* .line 176 */
	 int v0 = 1; // const/4 v0, 0x1
	 (( android.support.v4.app.DialogFragment ) p0 ).dismissInternal ( v0 ); // invoke-virtual {p0, v0}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V
	 /* .line 177 */
	 return;
} // .end method
void dismissInternal ( Boolean p0 ) {
	 /* .locals 4 */
	 /* .param p1, "allowStateLoss" # Z */
	 /* .prologue */
	 int v3 = 1; // const/4 v3, 0x1
	 /* .line 180 */
	 /* iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z */
	 if ( v1 != null) { // if-eqz v1, :cond_0
		 /* .line 203 */
	 } // :goto_0
	 return;
	 /* .line 183 */
} // :cond_0
/* iput-boolean v3, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z */
/* .line 184 */
int v1 = 0; // const/4 v1, 0x0
/* iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z */
/* .line 185 */
v1 = this.mDialog;
if ( v1 != null) { // if-eqz v1, :cond_1
	 /* .line 186 */
	 v1 = this.mDialog;
	 (( android.app.Dialog ) v1 ).dismiss ( ); // invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
	 /* .line 187 */
	 int v1 = 0; // const/4 v1, 0x0
	 this.mDialog = v1;
	 /* .line 189 */
} // :cond_1
/* iput-boolean v3, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z */
/* .line 190 */
/* iget v1, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I */
/* if-ltz v1, :cond_2 */
/* .line 191 */
(( android.support.v4.app.DialogFragment ) p0 ).getFragmentManager ( ); // invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
/* iget v2, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I */
(( android.support.v4.app.FragmentManager ) v1 ).popBackStack ( v2, v3 ); // invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentManager;->popBackStack(II)V
/* .line 193 */
int v1 = -1; // const/4 v1, -0x1
/* iput v1, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I */
/* .line 195 */
} // :cond_2
(( android.support.v4.app.DialogFragment ) p0 ).getFragmentManager ( ); // invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
(( android.support.v4.app.FragmentManager ) v1 ).beginTransaction ( ); // invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
/* .line 196 */
/* .local v0, "ft":Landroid/support/v4/app/FragmentTransaction; */
(( android.support.v4.app.FragmentTransaction ) v0 ).remove ( p0 ); // invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
/* .line 197 */
if ( p1 != null) { // if-eqz p1, :cond_3
/* .line 198 */
(( android.support.v4.app.FragmentTransaction ) v0 ).commitAllowingStateLoss ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
/* .line 200 */
} // :cond_3
(( android.support.v4.app.FragmentTransaction ) v0 ).commit ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
} // .end method
public android.app.Dialog getDialog ( ) {
/* .locals 1 */
/* .prologue */
/* .line 206 */
v0 = this.mDialog;
} // .end method
public android.view.LayoutInflater getLayoutInflater ( android.os.Bundle p0 ) {
/* .locals 2 */
/* .param p1, "savedInstanceState" # Landroid/os/Bundle; */
/* .prologue */
/* .line 303 */
/* iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z */
/* if-nez v0, :cond_0 */
/* .line 304 */
/* invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater; */
/* .line 322 */
} // :goto_0
/* .line 307 */
} // :cond_0
(( android.support.v4.app.DialogFragment ) p0 ).onCreateDialog ( p1 ); // invoke-virtual {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
this.mDialog = v0;
/* .line 308 */
/* iget v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I */
/* packed-switch v0, :pswitch_data_0 */
/* .line 318 */
} // :goto_1
v0 = this.mDialog;
if ( v0 != null) { // if-eqz v0, :cond_1
/* .line 319 */
v0 = this.mDialog;
(( android.app.Dialog ) v0 ).getContext ( ); // invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;
final String v1 = "layout_inflater"; // const-string v1, "layout_inflater"
(( android.content.Context ) v0 ).getSystemService ( v1 ); // invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
/* check-cast v0, Landroid/view/LayoutInflater; */
/* .line 310 */
/* :pswitch_0 */
v0 = this.mDialog;
(( android.app.Dialog ) v0 ).getWindow ( ); // invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;
/* const/16 v1, 0x18 */
(( android.view.Window ) v0 ).addFlags ( v1 ); // invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
/* .line 316 */
/* :pswitch_1 */
v0 = this.mDialog;
int v1 = 1; // const/4 v1, 0x1
(( android.app.Dialog ) v0 ).requestWindowFeature ( v1 ); // invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z
/* .line 322 */
} // :cond_1
v0 = this.mActivity;
final String v1 = "layout_inflater"; // const-string v1, "layout_inflater"
(( android.support.v4.app.FragmentActivity ) v0 ).getSystemService ( v1 ); // invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
/* check-cast v0, Landroid/view/LayoutInflater; */
/* .line 308 */
/* :pswitch_data_0 */
/* .packed-switch 0x1 */
/* :pswitch_1 */
/* :pswitch_1 */
/* :pswitch_0 */
} // .end packed-switch
} // .end method
public Boolean getShowsDialog ( ) {
/* .locals 1 */
/* .prologue */
/* .line 260 */
/* iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z */
} // .end method
public Integer getTheme ( ) {
/* .locals 1 */
/* .prologue */
/* .line 211 */
/* iget v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I */
} // .end method
public Boolean isCancelable ( ) {
/* .locals 1 */
/* .prologue */
/* .line 232 */
/* iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z */
} // .end method
public void onActivityCreated ( android.os.Bundle p0 ) {
/* .locals 4 */
/* .param p1, "savedInstanceState" # Landroid/os/Bundle; */
/* .prologue */
/* .line 368 */
/* invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V */
/* .line 370 */
/* iget-boolean v2, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z */
/* if-nez v2, :cond_1 */
/* .line 391 */
} // :cond_0
} // :goto_0
return;
/* .line 374 */
} // :cond_1
(( android.support.v4.app.DialogFragment ) p0 ).getView ( ); // invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getView()Landroid/view/View;
/* .line 375 */
/* .local v1, "view":Landroid/view/View; */
if ( v1 != null) { // if-eqz v1, :cond_3
/* .line 376 */
(( android.view.View ) v1 ).getParent ( ); // invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
if ( v2 != null) { // if-eqz v2, :cond_2
/* .line 377 */
/* new-instance v2, Ljava/lang/IllegalStateException; */
final String v3 = "DialogFragment can not be attached to a container view"; // const-string v3, "DialogFragment can not be attached to a container view"
/* invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V */
/* throw v2 */
/* .line 379 */
} // :cond_2
v2 = this.mDialog;
(( android.app.Dialog ) v2 ).setContentView ( v1 ); // invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V
/* .line 381 */
} // :cond_3
v2 = this.mDialog;
(( android.support.v4.app.DialogFragment ) p0 ).getActivity ( ); // invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
(( android.app.Dialog ) v2 ).setOwnerActivity ( v3 ); // invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V
/* .line 382 */
v2 = this.mDialog;
/* iget-boolean v3, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z */
(( android.app.Dialog ) v2 ).setCancelable ( v3 ); // invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V
/* .line 383 */
v2 = this.mDialog;
(( android.app.Dialog ) v2 ).setOnCancelListener ( p0 ); // invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
/* .line 384 */
v2 = this.mDialog;
(( android.app.Dialog ) v2 ).setOnDismissListener ( p0 ); // invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
/* .line 385 */
if ( p1 != null) { // if-eqz p1, :cond_0
/* .line 386 */
final String v2 = "android:savedDialogState"; // const-string v2, "android:savedDialogState"
(( android.os.Bundle ) p1 ).getBundle ( v2 ); // invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
/* .line 387 */
/* .local v0, "dialogState":Landroid/os/Bundle; */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 388 */
v2 = this.mDialog;
(( android.app.Dialog ) v2 ).onRestoreInstanceState ( v0 ); // invoke-virtual {v2, v0}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V
} // .end method
public void onAttach ( android.app.Activity p0 ) {
/* .locals 1 */
/* .param p1, "activity" # Landroid/app/Activity; */
/* .prologue */
/* .line 265 */
/* invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V */
/* .line 266 */
/* iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z */
/* if-nez v0, :cond_0 */
/* .line 269 */
int v0 = 0; // const/4 v0, 0x0
/* iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z */
/* .line 271 */
} // :cond_0
return;
} // .end method
public void onCancel ( android.content.DialogInterface p0 ) {
/* .locals 0 */
/* .param p1, "dialog" # Landroid/content/DialogInterface; */
/* .prologue */
/* .line 354 */
return;
} // .end method
public void onCreate ( android.os.Bundle p0 ) {
/* .locals 3 */
/* .param p1, "savedInstanceState" # Landroid/os/Bundle; */
/* .prologue */
int v1 = 1; // const/4 v1, 0x1
int v2 = 0; // const/4 v2, 0x0
/* .line 286 */
/* invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V */
/* .line 288 */
/* iget v0, p0, Landroid/support/v4/app/DialogFragment;->mContainerId:I */
/* if-nez v0, :cond_1 */
/* move v0, v1 */
} // :goto_0
/* iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z */
/* .line 290 */
if ( p1 != null) { // if-eqz p1, :cond_0
/* .line 291 */
final String v0 = "android:style"; // const-string v0, "android:style"
v0 = (( android.os.Bundle ) p1 ).getInt ( v0, v2 ); // invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
/* iput v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I */
/* .line 292 */
final String v0 = "android:theme"; // const-string v0, "android:theme"
v0 = (( android.os.Bundle ) p1 ).getInt ( v0, v2 ); // invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
/* iput v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I */
/* .line 293 */
final String v0 = "android:cancelable"; // const-string v0, "android:cancelable"
v0 = (( android.os.Bundle ) p1 ).getBoolean ( v0, v1 ); // invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
/* iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z */
/* .line 294 */
final String v0 = "android:showsDialog"; // const-string v0, "android:showsDialog"
/* iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z */
v0 = (( android.os.Bundle ) p1 ).getBoolean ( v0, v1 ); // invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
/* iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z */
/* .line 295 */
final String v0 = "android:backStackId"; // const-string v0, "android:backStackId"
int v1 = -1; // const/4 v1, -0x1
v0 = (( android.os.Bundle ) p1 ).getInt ( v0, v1 ); // invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
/* iput v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I */
/* .line 298 */
} // :cond_0
return;
} // :cond_1
/* move v0, v2 */
/* .line 288 */
} // .end method
public android.app.Dialog onCreateDialog ( android.os.Bundle p0 ) {
/* .locals 3 */
/* .param p1, "savedInstanceState" # Landroid/os/Bundle; */
/* .annotation build Landroid/support/annotation/NonNull; */
} // .end annotation
/* .prologue */
/* .line 350 */
/* new-instance v0, Landroid/app/Dialog; */
(( android.support.v4.app.DialogFragment ) p0 ).getActivity ( ); // invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
v2 = (( android.support.v4.app.DialogFragment ) p0 ).getTheme ( ); // invoke-virtual {p0}, Landroid/support/v4/app/DialogFragment;->getTheme()I
/* invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V */
} // .end method
public void onDestroyView ( ) {
/* .locals 1 */
/* .prologue */
/* .line 441 */
/* invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V */
/* .line 442 */
v0 = this.mDialog;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 446 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z */
/* .line 447 */
v0 = this.mDialog;
(( android.app.Dialog ) v0 ).dismiss ( ); // invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
/* .line 448 */
int v0 = 0; // const/4 v0, 0x0
this.mDialog = v0;
/* .line 450 */
} // :cond_0
return;
} // .end method
public void onDetach ( ) {
/* .locals 1 */
/* .prologue */
/* .line 275 */
/* invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V */
/* .line 276 */
/* iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z */
/* if-nez v0, :cond_0 */
/* iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z */
/* if-nez v0, :cond_0 */
/* .line 280 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z */
/* .line 282 */
} // :cond_0
return;
} // .end method
public void onDismiss ( android.content.DialogInterface p0 ) {
/* .locals 1 */
/* .param p1, "dialog" # Landroid/content/DialogInterface; */
/* .prologue */
/* .line 357 */
/* iget-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z */
/* if-nez v0, :cond_0 */
/* .line 362 */
int v0 = 1; // const/4 v0, 0x1
(( android.support.v4.app.DialogFragment ) p0 ).dismissInternal ( v0 ); // invoke-virtual {p0, v0}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V
/* .line 364 */
} // :cond_0
return;
} // .end method
public void onSaveInstanceState ( android.os.Bundle p0 ) {
/* .locals 3 */
/* .param p1, "outState" # Landroid/os/Bundle; */
/* .prologue */
/* .line 404 */
/* invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V */
/* .line 405 */
v1 = this.mDialog;
if ( v1 != null) { // if-eqz v1, :cond_0
/* .line 406 */
v1 = this.mDialog;
(( android.app.Dialog ) v1 ).onSaveInstanceState ( ); // invoke-virtual {v1}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;
/* .line 407 */
/* .local v0, "dialogState":Landroid/os/Bundle; */
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 408 */
final String v1 = "android:savedDialogState"; // const-string v1, "android:savedDialogState"
(( android.os.Bundle ) p1 ).putBundle ( v1, v0 ); // invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
/* .line 411 */
} // .end local v0 # "dialogState":Landroid/os/Bundle;
} // :cond_0
/* iget v1, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I */
if ( v1 != null) { // if-eqz v1, :cond_1
/* .line 412 */
final String v1 = "android:style"; // const-string v1, "android:style"
/* iget v2, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I */
(( android.os.Bundle ) p1 ).putInt ( v1, v2 ); // invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
/* .line 414 */
} // :cond_1
/* iget v1, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I */
if ( v1 != null) { // if-eqz v1, :cond_2
/* .line 415 */
final String v1 = "android:theme"; // const-string v1, "android:theme"
/* iget v2, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I */
(( android.os.Bundle ) p1 ).putInt ( v1, v2 ); // invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
/* .line 417 */
} // :cond_2
/* iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z */
/* if-nez v1, :cond_3 */
/* .line 418 */
final String v1 = "android:cancelable"; // const-string v1, "android:cancelable"
/* iget-boolean v2, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z */
(( android.os.Bundle ) p1 ).putBoolean ( v1, v2 ); // invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
/* .line 420 */
} // :cond_3
/* iget-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z */
/* if-nez v1, :cond_4 */
/* .line 421 */
final String v1 = "android:showsDialog"; // const-string v1, "android:showsDialog"
/* iget-boolean v2, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z */
(( android.os.Bundle ) p1 ).putBoolean ( v1, v2 ); // invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
/* .line 423 */
} // :cond_4
/* iget v1, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I */
int v2 = -1; // const/4 v2, -0x1
/* if-eq v1, v2, :cond_5 */
/* .line 424 */
final String v1 = "android:backStackId"; // const-string v1, "android:backStackId"
/* iget v2, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I */
(( android.os.Bundle ) p1 ).putInt ( v1, v2 ); // invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
/* .line 426 */
} // :cond_5
return;
} // .end method
public void onStart ( ) {
/* .locals 1 */
/* .prologue */
/* .line 395 */
/* invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V */
/* .line 396 */
v0 = this.mDialog;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 397 */
int v0 = 0; // const/4 v0, 0x0
/* iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z */
/* .line 398 */
v0 = this.mDialog;
(( android.app.Dialog ) v0 ).show ( ); // invoke-virtual {v0}, Landroid/app/Dialog;->show()V
/* .line 400 */
} // :cond_0
return;
} // .end method
public void onStop ( ) {
/* .locals 1 */
/* .prologue */
/* .line 430 */
/* invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V */
/* .line 431 */
v0 = this.mDialog;
if ( v0 != null) { // if-eqz v0, :cond_0
/* .line 432 */
v0 = this.mDialog;
(( android.app.Dialog ) v0 ).hide ( ); // invoke-virtual {v0}, Landroid/app/Dialog;->hide()V
/* .line 434 */
} // :cond_0
return;
} // .end method
public void setCancelable ( Boolean p0 ) {
/* .locals 1 */
/* .param p1, "cancelable" # Z */
/* .prologue */
/* .line 224 */
/* iput-boolean p1, p0, Landroid/support/v4/app/DialogFragment;->mCancelable:Z */
/* .line 225 */
v0 = this.mDialog;
if ( v0 != null) { // if-eqz v0, :cond_0
v0 = this.mDialog;
(( android.app.Dialog ) v0 ).setCancelable ( p1 ); // invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V
/* .line 226 */
} // :cond_0
return;
} // .end method
public void setShowsDialog ( Boolean p0 ) {
/* .locals 0 */
/* .param p1, "showsDialog" # Z */
/* .prologue */
/* .line 253 */
/* iput-boolean p1, p0, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z */
/* .line 254 */
return;
} // .end method
public void setStyle ( Integer p0, Integer p1 ) {
/* .locals 2 */
/* .param p1, "style" # I */
/* .param p2, "theme" # I */
/* .prologue */
/* .line 113 */
/* iput p1, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I */
/* .line 114 */
/* iget v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I */
int v1 = 2; // const/4 v1, 0x2
/* if-eq v0, v1, :cond_0 */
/* iget v0, p0, Landroid/support/v4/app/DialogFragment;->mStyle:I */
int v1 = 3; // const/4 v1, 0x3
/* if-ne v0, v1, :cond_1 */
/* .line 115 */
} // :cond_0
/* const v0, 0x1030059 */
/* iput v0, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I */
/* .line 117 */
} // :cond_1
if ( p2 != null) { // if-eqz p2, :cond_2
/* .line 118 */
/* iput p2, p0, Landroid/support/v4/app/DialogFragment;->mTheme:I */
/* .line 120 */
} // :cond_2
return;
} // .end method
public Integer show ( android.support.v4.app.FragmentTransaction p0, java.lang.String p1 ) {
/* .locals 2 */
/* .param p1, "transaction" # Landroid/support/v4/app/FragmentTransaction; */
/* .param p2, "tag" # Ljava/lang/String; */
/* .prologue */
int v1 = 0; // const/4 v1, 0x0
/* .line 151 */
/* iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z */
/* .line 152 */
int v0 = 1; // const/4 v0, 0x1
/* iput-boolean v0, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z */
/* .line 153 */
(( android.support.v4.app.FragmentTransaction ) p1 ).add ( p0, p2 ); // invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
/* .line 154 */
/* iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z */
/* .line 155 */
v0 = (( android.support.v4.app.FragmentTransaction ) p1 ).commit ( ); // invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
/* iput v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I */
/* .line 156 */
/* iget v0, p0, Landroid/support/v4/app/DialogFragment;->mBackStackId:I */
} // .end method
public void show ( android.support.v4.app.FragmentManager p0, java.lang.String p1 ) {
/* .locals 2 */
/* .param p1, "manager" # Landroid/support/v4/app/FragmentManager; */
/* .param p2, "tag" # Ljava/lang/String; */
/* .prologue */
/* .line 134 */
int v1 = 0; // const/4 v1, 0x0
/* iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mDismissed:Z */
/* .line 135 */
int v1 = 1; // const/4 v1, 0x1
/* iput-boolean v1, p0, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z */
/* .line 136 */
(( android.support.v4.app.FragmentManager ) p1 ).beginTransaction ( ); // invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
/* .line 137 */
/* .local v0, "ft":Landroid/support/v4/app/FragmentTransaction; */
(( android.support.v4.app.FragmentTransaction ) v0 ).add ( p0, p2 ); // invoke-virtual {v0, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
/* .line 138 */
(( android.support.v4.app.FragmentTransaction ) v0 ).commit ( ); // invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I
/* .line 139 */
return;
} // .end method
