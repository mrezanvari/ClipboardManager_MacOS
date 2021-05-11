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
            statusbarItem.Button.Activated += showPopover;

            mainPopover.ContentViewController = ViewController.sharedViewController();
            mainPopover.Animates = true;
            mainPopover.Behavior = NSPopoverBehavior.Transient;
            mainPopover.Show(statusbarItem.Button.Bounds, statusbarItem.Button, NSRectEdge.MinYEdge); // init the view controller so it starts the polling
        }

        private void showPopover(object sender, System.EventArgs e) // only show; this is because of the Behavior... it will only run the viewcontroller once and will hide it if user interacts with anything else
        {
            mainPopover.Show(statusbarItem.Button.Bounds, statusbarItem.Button, NSRectEdge.MinYEdge);
        }

        public override void WillTerminate(NSNotification notification)
        {
            // Insert code here to tear down your application
        }
    }
}
