//
//  GoodByeViewController.m
//  Unity-iPhone
//
//  Created by Frederik Jacques on 06/08/14.
//
//

#import "GoodByeViewController.h"

@interface GoodByeViewController ()

@end

@implementation GoodByeViewController

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
    
    UILabel *lblTheEnd = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 44)];
    lblTheEnd.text = @"The end";
    lblTheEnd.center = CGPointMake(self.view.bounds.size.height / 2, self.view.bounds.size.width / 2);
    
    [self.view addSubview:lblTheEnd];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - NSCopying

#pragma mark - Private methods

#pragma mark - Public methods

#pragma mark - Custom Accessors

#pragma mark - Delegate methods

#pragma mark - Debug

- (NSString *)description {
	return [NSString stringWithFormat:@"[GoodByeViewController]"];
}

@end
