//
//  ISTHViewController.m
//  DICSIRS
//
//  Created by Matsui Keiji on 2013/02/16.
//  Copyright 2013 Ofuna Chuo Hospital. All rights reserved.
//

#import "ISTHViewController.h"


@implementation ISTHViewController

- (void)viewDidLoad {
	self.navigationItem.title = @"ISTH overt DIC診断基準";
    Hantei.text=@"";
	[super viewDidLoad];
}

-(IBAction)myActionRUN:(id)sender{
    vPlatelet=Platelet.selectedSegmentIndex;
    switch (FDP.selectedSegmentIndex) {
        case 0:
            vFDP=0;
            break;
        case 1:
            vFDP=2;
            break;
        case 2:
            vFDP=3;
            break;
        default:
            break;
    }
    vFibrinogen=Fibrinogen.selectedSegmentIndex;
    vPTsec=PTsec.selectedSegmentIndex;
    vScoreDIC=vPlatelet+vFDP+vFibrinogen+vPTsec;
    [ScoreDIC setText:[NSString stringWithFormat:@"%d", vScoreDIC]];
    if (vScoreDIC>=5) {
        Hantei.text=@"overt DIC";
    }
    else {
        Hantei.text=@"";
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
