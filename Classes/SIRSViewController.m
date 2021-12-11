//
//  SIRSViewController.m
//  DICSIRS
//
//  Created by Matsui Keiji on 2013/02/13.
//  Copyright 2013 Ofuna Chuo Hospital. All rights reserved.
//

#import "SIRSViewController.h"


@implementation SIRSViewController

- (void)viewDidLoad {
	self.navigationItem.title = @"SIRS診断基準";
    HanteiSIRS.text=@"";
	[super viewDidLoad];
}

-(IBAction)myActionRUN:(id)sender{
    vTaion=Taion.selectedSegmentIndex;
    vShinpakusu=Shinpakusu.selectedSegmentIndex;
    vKokyusu=Kokyusu.selectedSegmentIndex;
    vWBC=WBC.selectedSegmentIndex;
    vScoreSIRS=vTaion+vShinpakusu+vKokyusu+vWBC;
    if (vScoreSIRS>=2) {
        HanteiSIRS.text=@"SIRS";
    }
    else {
        HanteiSIRS.text=@"";
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
