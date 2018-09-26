//
//  AppDelegate.m
//  ViewController的创建方式-有故事版，用代码写出故事版做的工作
//
//  Created by apple on 15/12/9.
//  Copyright © 2015年 SUNCO. All rights reserved.
//

/**
 这个Demo有storyboard文件，但是在项目的TARGETS中的General中的Deployment Info中的Main Interface后面填空，代表不用项目提供的storyboard文件，而自己在AppDelegate.m文件中用代码写出storyboard文件所做的工作。
 */
#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //1、创建程序的窗口（UIWindow的实例化对象）：
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    /**
     2、加载storyboard文件：
     下面方法中的bundle:后面的参数可以如下填写也可以填写为nil，因为nil就代表mainBundle。
     */
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    /**
     3、创建storyboard文件中箭头所指向的视图控制器：
     多肽，父类可以指向子类的指针，实际上生成的vc是属于ViewController类的。
     */
    UIViewController *vc = [storyBoard instantiateInitialViewController];
    NSLog(@"%@", [vc class]);
    
    /**
     如果不想加载箭头所指向的视图控制器，也可以将要加载的视图控制器在storyBoard文件里设置它的StoryBoard ID，然后利用StoryBoard ID来定向加载这个视图控制器；
     如下，实际上这个生成的vc是属于UIViewController类的。
     */
//    UIViewController *vc = [storyBoard instantiateViewControllerWithIdentifier:@"green"];
//    NSLog(@"%@", [vc class]);
    
    //4、设置窗口的根视图控制器：
    self.window.rootViewController = vc;
    
    //5、使window成为主窗口并显示出来：
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
