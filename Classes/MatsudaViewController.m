//
//  MatsudaViewController.m
//  DICSIRS
//
//  Created by Matsui Keiji on 2013/02/15.
//  Copyright 2013 Ofuna Chuo Hospital. All rights reserved.
//

#import "MatsudaViewController.h"


@implementation MatsudaViewController

- (void)viewDidLoad {
	self.navigationItem.title = @"DIC診断基準（松田試案）";
    Hantei.text=@"";
	[super viewDidLoad];
}

-(IBAction)myActionRUN:(id)sender{
    vPlatelet=Platelet.selectedSegmentIndex;
    vFDP=FDP.selectedSegmentIndex;
    if (vPlatelet==0 && vFDP==0) {
        Hantei.text=@"";
    }
    if (vPlatelet==1 && vFDP==0) {
        Hantei.text=@"DIC否定できず";
    }
    if (vPlatelet==2 && vFDP==0) {
        Hantei.text=@"DIC疑い";
    }
    if (vPlatelet==0 && vFDP==1) {
        Hantei.text=@"DIC否定できず";
    }
    if (vPlatelet==1 && vFDP==1) {
        Hantei.text=@"DIC疑い";
    }
    if (vPlatelet==2 && vFDP==1) {
        Hantei.text=@"DIC";
    }
    if (vPlatelet==0 && vFDP==2) {
        Hantei.text=@"DIC疑い";
    }
    if (vPlatelet==1 && vFDP==2) {
        Hantei.text=@"DIC";
    }
    if (vPlatelet==2 && vFDP==2) {
        Hantei.text=@"DIC";
    }
}//-(IBAction)myActionRUN:(id)sender

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
