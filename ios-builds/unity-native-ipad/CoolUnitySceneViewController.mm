//
//  CoolUnitySceneViewController.m
//  Unity-iPhone
//
//  Created by Frederik Jacques on 06/08/14.
//
//

#import "CoolUnitySceneViewController.h"
#import "GoodByeViewController.h"

@interface CoolUnitySceneViewController ()

@end

@implementation CoolUnitySceneViewController

#pragma mark - Lifecycle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {

    self = [super initWithNibName:nil bundle:nil];
    
    if (self) {
        // Custom initialization
        
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view addSubview:GetAppController().unityView];
    
    UIButton *btnNext = [UIButton buttonWithType:UIButtonTypeSystem];
    [btnNext setTitle:@"Go to last scene" forState:UIControlStateNormal];
    btnNext.frame = CGRectMake(0, 0, 400, 44);
    btnNext.center = CGPointMake(self.view.bounds.size.height / 2, self.view.bounds.size.width / 2);
    [self.view addSubview:btnNext];
    
    [btnNext addTarget:self action:@selector(goToLastScene:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - NSCopying

#pragma mark - Private methods
- (void)goToLastScene:(id)sender {
    NSLog(@"[CoolUnitySceneVC] Go to the last scene");
    
    GoodByeViewController *goodByeVC = [[GoodByeViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:goodByeVC animated:YES];
    
}
#pragma mark - Public methods

#pragma mark - Custom Accessors

#pragma mark - Delegate methods

#pragma mark - Debug

- (NSString *)description {
	return [NSString stringWithFormat:@"[CoolUnitySceneViewController]"];
}

@end
