//
//  SampleViewController.m
//  DICSIRS
//
//  Created by Matsui Keiji on 2013/08/22.
//
//

#import "SampleViewController.h"

@interface SampleViewController ()

@end

@implementation SampleViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title=@"Sample";
    }
    return self;
}

- (void)viewDidLoad {
	//self.navigationItem.title = @"Sample";
	[super viewDidLoad];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
