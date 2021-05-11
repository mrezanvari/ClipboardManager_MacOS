using System;
using System.Collections.Generic;
using AppKit;
using Foundation;

namespace ClipboardManager_MacOS
{
    public partial class ViewController : NSViewController
    {
        private static System.Timers.Timer clipboaardPollTimer;
        private nint global_ClipboardChangeCounter;
        private nint switchState = 0;
        private string newStringData;
        private System.Collections.Generic.List<string> clipboardDataList;

        public ViewController(IntPtr handle) : base(handle)
        {

        }

        public static ViewController sharedViewController()
        {
            return NSStoryboard.FromName("Main", null).InstantiateControllerWithIdentifier("ViewController") as ViewController; // gets the viewcontroller from storyboard...
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();

            global_ClipboardChangeCounter = NSPasteboard.GeneralPasteboard.ChangeCount;
            newStringData = NSPasteboard.GeneralPasteboard.GetStringForType(NSPasteboard.NSStringType);

            // 60 may not look fast enough, but it should not be toooo fast cuse then it will trigger appon each character that is put in the clipboard! and well I like 6 so...!  :)
            clipboaardPollTimer = new System.Timers.Timer(60);
            clipboaardPollTimer.Elapsed += clipboaardPoll_handler;
            clipboardDataList = new List<string>(); // just init
            clipboaardPollTimer.Start();
        }

        partial void btnAppendAll_Clicked(Foundation.NSObject sender)
        {
            string outString = "";
            //foreach (var stringItem in clipboardDataList)
            //    outString += stringItem + "\n";
            outString = txtBox_ClipboardItems.TextStorage.Value;
            NSPasteboard.GeneralPasteboard.ClearContents();
            if (clipboardDataList.Count > 0) // if nothing in there just keep it clean!
                NSPasteboard.GeneralPasteboard.SetStringForType(outString, NSPasteboard.NSStringType);
            global_ClipboardChangeCounter++; // this will force the next clock cycle to ignore the new changes... so the whole list will not be reapeated!

        }

        partial void btnClearAll_Clicked(Foundation.NSObject sender)
        {
            NSPasteboard.GeneralPasteboard.ClearContents();
            clipboardDataList.Clear();
            global_ClipboardChangeCounter++; // this will force the next clock cycle to ignore the new changes... so the whole list will not be reapeated!
            InvokeOnMainThread(() =>
            {
                lblNumOfItems.StringValue = clipboardDataList.Count.ToString();
                txtBox_ClipboardItems.TextStorage.Replace(new NSRange(0, txtBox_ClipboardItems.TextStorage.Value.Length), "");
            });
            //NSApplication.SharedApplication.DockTile.BadgeLabel = "";
        }

        partial void btnQuit_Clicked(Foundation.NSObject sender)
        {
            NSApplication.SharedApplication.Terminate(this);
        }

        private void clipboaardPoll_handler(object sender, System.Timers.ElapsedEventArgs e)
        {
            nint local_ClipboardChangeCounter = 0;

            InvokeOnMainThread(() =>
            {
                local_ClipboardChangeCounter = NSPasteboard.GeneralPasteboard.ChangeCount;
                switchState = OnOffSwitch_OBJ.State;
            });

            //Console.WriteLine("_DEBUG:   pasteboardCounter = " + pasteboardCounter.ToString());

            if (local_ClipboardChangeCounter > global_ClipboardChangeCounter && switchState == 1)
            {
                InvokeOnMainThread(() => //for some reason, to access clipboard we need to invoke on main thread ¯\_(ツ)_/¯
                {

                    //NSApplication.SharedApplication.RequestUserAttention(NSRequestUserAttentionType.InformationalRequest); // bounce the app icon

                    //var dataXML = NSPasteboard.GeneralPasteboard.GetDataForType(NSPasteboard.NSFilenamesType);
                    //Console.WriteLine("Data: " + dataXML);

                    newStringData = NSPasteboard.GeneralPasteboard.GetStringForType(NSPasteboard.NSStringType);
                    

                    if (!clipboardDataList.Contains(newStringData))
                    {
                        clipboardDataList.Add(newStringData);
                        if (txtBox_ClipboardItems.TextStorage.Length > 0)
                            txtBox_ClipboardItems.TextStorage.Append(new NSAttributedString("\n", null, NSColor.White));
                        txtBox_ClipboardItems.TextStorage.Append(new NSAttributedString(newStringData, null, NSColor.White));
                    }

                    lblNumOfItems.StringValue = clipboardDataList.Count.ToString();
                   
                });
            }
            global_ClipboardChangeCounter = local_ClipboardChangeCounter;
        }

        public override NSObject RepresentedObject
        {
            get
            {
                return base.RepresentedObject;
            }
            set
            {
                base.RepresentedObject = value;
                // Update the view, if already loaded.
            }
        }
    }
}
