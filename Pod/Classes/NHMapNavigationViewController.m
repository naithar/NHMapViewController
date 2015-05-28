//
//  NHMapNavigationViewController.m
//  Pods
//
//  Created by Sergey Minakov on 28.05.15.
//
//

#import "NHMapNavigationViewController.h"


@interface NHMapNavigationViewController ()

@property (nonatomic, strong) NHMapViewController *mapViewController;

@end

@implementation NHMapNavigationViewController

- (instancetype)init {
    self = [super init];
    
    if (self) {
        [self commonInit];
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        [self commonInit];
    }
    
    return self;
}

- (instancetype)initWithRootViewController:(UIViewController *)rootViewController {
    self = [super initWithRootViewController:rootViewController];
    
    if (self) {
        [self commonInit];
    }
    
    return self;
}

- (instancetype)initWithNavigationBarClass:(Class)navigationBarClass toolbarClass:(Class)toolbarClass {
    self = [super initWithNavigationBarClass:navigationBarClass toolbarClass:toolbarClass];
    
    if (self) {
        [self commonInit];
    }
    
    return self;
}

+ (Class)mapViewControllerClass {
    return [NHMapViewController class];
}
- (void)commonInit {
    self.navigationBar.translucent = NO;
    self.navigationBar.barTintColor = [UIColor whiteColor];
    self.navigationBar.tintColor = [UIColor blackColor];
    
    self.mapViewController = [[[[self class] mapViewControllerClass] alloc] init];
    
    
    self.mapViewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]
                                                               initWithImage: [UIImage imageNamed:@"NHMapView.close.png"]
                                                               style:UIBarButtonItemStylePlain
                                                               target:self
                                                               action:@selector(closeNavigationButtonTouch:)];
    
    self.mapViewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]
                                                                initWithImage: [UIImage imageNamed:@"NHMapView.options.png"]
                                                                style:UIBarButtonItemStylePlain
                                                                target:self
                                                                action:@selector(optionsNavigationButtonTouch:)];

    
    [self setViewControllers:@[self.mapViewController]];
}

- (void)closeNavigationButtonTouch:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)optionsNavigationButtonTouch:(id)sender {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
    NSLog(@"");
}

@end