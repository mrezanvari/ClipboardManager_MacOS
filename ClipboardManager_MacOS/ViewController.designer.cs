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

		[Action ("btnAppendAll_Clicked:")]
		partial void btnAppendAll_Clicked (Foundation.NSObject sender);

		[Action ("btnClearAll_Clicked:")]
		partial void btnClearAll_Clicked (Foundation.NSObject sender);

		[Action ("btnQuit_Clicked:")]
		partial void btnQuit_Clicked (Foundation.NSObject sender);
		
		void ReleaseDesignerOutlets ()
		{
			if (lblNumOfItems != null) {
				lblNumOfItems.Dispose ();
				lblNumOfItems = null;
			}
		}
	}
}
