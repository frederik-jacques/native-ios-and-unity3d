#import <UIKit/UIKit.h>
#import "UnityAppController.h"


#import "HelloViewController.h"
#import "CoolUnitySceneViewController.h"

@interface TNAppController : UnityAppController

@property (nonatomic, strong) UINavigationController *navController;

- (void)createViewHierarchyImpl;

@end

@implementation TNAppController
- (void)createViewHierarchyImpl {
    
	_rootController	= [[UIViewController alloc] init];
    _rootView		= [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    _rootController.view = _rootView;
    
    HelloViewController *helloVC = [[HelloViewController alloc] initWithNibName:nil bundle:nil];
    
    self.navController = [[UINavigationController alloc] initWithRootViewController:helloVC];
    
    [_rootView addSubview:self.navController.view];
}

@end

IMPL_APP_CONTROLLER_SUBCLASS(TNAppController)