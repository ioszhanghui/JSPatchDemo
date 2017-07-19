//
//  AppDelegate.m
//  JSPatchDemo
//
//  Created by 小飞鸟 on 2017/7/18.
//  Copyright © 2017年 小飞鸟. All rights reserved.
//

#import "AppDelegate.h"
#import "JPEngine.h"
#import "SecondViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    [JPEngine startEngine];

    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    self.window.backgroundColor=[UIColor whiteColor];

    [self.window makeKeyAndVisible];
    
    SecondViewController * VC =[[SecondViewController alloc]init];
    self.window.rootViewController=VC;
    
    
    [self loadNetWorkJSFile];
    
    
    return YES;
}

#pragma mark 加载网络的js文件
-(void)loadNetWorkJSFile{

    [NSURLConnection sendAsynchronousRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://192.168.1.105/main.js"]] queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        NSString *script = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        [JPEngine evaluateScript:script];
    }];

}

#pragma mark 加载本地的js文件
-(void)loadLocalJSFile{

    NSString *sourcePath = [[NSBundle mainBundle] pathForResource:@"mq" ofType:@"js"];
    NSString *script = [NSString stringWithContentsOfFile:sourcePath encoding:NSUTF8StringEncoding error:nil];
    [JPEngine evaluateScript:script];

}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    
    [self loadNetWorkJSFile];
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
