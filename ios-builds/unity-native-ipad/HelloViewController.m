//
//  HelloViewController.m
//  Unity-iPhone
//
//  Created by Frederik Jacques on 06/08/14.
//
//

#import "HelloViewController.h"
#import "CoolUnitySceneViewController.h"



@interface HelloViewController ()

@end

@implementation HelloViewController

#pragma mark - Lifecycle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {

    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        // Custom initialization
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btnNext = [UIButton buttonWithType:UIButtonTypeSystem];
    [btnNext setTitle:@"Go to my cool scene" forState:UIControlStateNormal];
    btnNext.frame = CGRectMake(0, 0, 400, 44);
    btnNext.center = CGPointMake(self.view.bounds.size.height / 2, self.view.bounds.size.width / 2);
    [self.view addSubview:btnNext];
    
    [btnNext addTarget:self action:@selector(gotoUnityScene:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - NSCopying

#pragma mark - Private methods
- (void)gotoUnityScene:(id)sender {
    NSLog(@"[HelloVC] Go to unity scene");
    
    CoolUnitySceneViewController *coolUnityVC = [[CoolUnitySceneViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:coolUnityVC animated:YES];
    
}


#pragma mark - Public methods

#pragma mark - Custom Accessors

#pragma mark - Delegate methods

#pragma mark - Debug

- (NSString *)description {
	return [NSString stringWithFormat:@"[HelloViewController]"];
}

@end
