using AppKit;
using Foundation;

namespace ClipboardManager_MacOS
{
    [Register("AppDelegate")]
    public class AppDelegate : NSApplicationDelegate
    {
        public AppDelegate()
        {
        }

        NSPopover mainPopover = new NSPopover();
        NSStatusItem statusbarItem;

        public override void DidFinishLaunching(NSNotification notification)
        {
            // Insert code here to initialize your application

            statusbarItem = NSStatusBar.SystemStatusBar.CreateStatusItem(NSStatusItemLength.Variable); // init
            //statusbarItem.Title = "MenubarApp!";
            statusbarItem.Button.Image = NSImage.ImageNamed(NSImageName.TouchBarTextListTemplate);
            statusbarItem.Button.Activated += togglePopover;

            mainPopover.ContentViewController = ViewController.sharedViewController();
            mainPopover.Animates = true;

        }

        private void togglePopover(object sender, System.EventArgs e)
        {
            if (mainPopover.Shown)
            {
                mainPopover.PerformClose(sender as NSObject);
                statusbarItem.Button.Image = NSImage.ImageNamed(NSImageName.TouchBarTextListTemplate);
            }

            else
            {
                mainPopover.Show(statusbarItem.Button.Bounds, statusbarItem.Button, NSRectEdge.MinYEdge);
                statusbarItem.Button.Image = NSImage.ImageNamed(NSImageName.TouchBarGoDownTemplate);
            }
        }

        public override void WillTerminate(NSNotification notification)
        {
            // Insert code here to tear down your application
        }
    }
}
