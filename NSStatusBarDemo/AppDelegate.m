//
//  AppDelegate.m
//  NSStatusBarDemo
//
//  Created by mac on 2018/6/17.
//  Copyright © 2018年 ShiBiao. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property (nonatomic,strong) NSStatusItem *statusItem;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSSquareStatusItemLength];
    //    NSStatusBarButton *statusBarButton = self.statusItem.button;
    //    statusBarButton.image = [NSImage imageNamed:@"1.png"];
    //    [statusBarButton.image setTemplate:YES];
    //
    //    statusBarButton.highlighted = NO;
    //    statusBarButton.toolTip = @"Control-click to quit";
    //
    //    [statusBarButton setAction:@selector(handleClick:)];
    self.statusItem.target = self;
    self.statusItem.action = @selector(handleClick:);
    self.statusItem.image = [NSImage imageNamed:@"1"];
    NSMenu *menu = [[NSMenu alloc]initWithTitle:@"haahh"];
    [menu addItemWithTitle:@"one" action:@selector(handleItem:) keyEquivalent:@""];
    [menu addItemWithTitle:@"two" action:@selector(handleItem:) keyEquivalent:@""];
    [menu addItemWithTitle:@"three" action:@selector(handleItem:) keyEquivalent:@""];
    self.statusItem.menu = menu;
}
-(void)handleClick:(NSButton *)button {
    
}
-(void)handleItem:(NSMenuItem *)item {
    NSLog(@"%@",item.title);
    if ([item.title isEqualToString:@"one"]) {
        NSApp.activationPolicy = NSApplicationActivationPolicyAccessory;
    }else {
        NSApp.activationPolicy = NSApplicationActivationPolicyRegular;
    }
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
