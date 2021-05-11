// WARNING
//
// This file has been generated automatically by Visual Studio to store outlets and
// actions made in the UI designer. If it is removed, they will be lost.
// Manual changes to this file may not be handled correctly.
//
using Foundation;
using System.CodeDom.Compiler;

namespace ClipboardManager_MacOS
{
	[Register ("ViewController")]
	partial class ViewController
	{
		[Outlet]
		AppKit.NSTextField lblNumOfItems { get; set; }

		[Outlet]
		AppKit.NSSwitch OnOffSwitch_OBJ { get; set; }

		[Outlet]
		AppKit.NSTextView txtBox_ClipboardItems { get; set; }

		[Action ("btnAppendAll_Clicked:")]
		partial void btnAppendAll_Clicked (Foundation.NSObject sender);

		[Action ("btnClearAll_Clicked:")]
		partial void btnClearAll_Clicked (Foundation.NSObject sender);

		[Action ("btnQuit_Clicked:")]
		partial void btnQuit_Clicked (Foundation.NSObject sender);

		[Action ("OnOffSwitch_stateChanged:")]
		partial void OnOffSwitch_stateChanged (Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (lblNumOfItems != null) {
				lblNumOfItems.Dispose ();
				lblNumOfItems = null;
			}

			if (OnOffSwitch_OBJ != null) {
				OnOffSwitch_OBJ.Dispose ();
				OnOffSwitch_OBJ = null;
			}

			if (txtBox_ClipboardItems != null) {
				txtBox_ClipboardItems.Dispose ();
				txtBox_ClipboardItems = null;
			}
		}
	}
}
