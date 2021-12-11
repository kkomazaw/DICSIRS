//
//  QQDICViewController.m
//  DICSIRS
//
//  Created by Matsui Keiji on 2013/02/16.
//  Copyright 2013 Ofuna Chuo Hospital. All rights reserved.
//

#import "QQDICViewController.h"


@implementation QQDICViewController

- (void)viewDidLoad {
	self.navigationItem.title = @"急性期DIC診断基準";
    Hantei.text=@"";
	[super viewDidLoad];
}

-(IBAction)myActionRUN:(id)sender{
    vTaion=Taion.selectedSegmentIndex;
    vShinpakusu=Shinpakusu.selectedSegmentIndex;
    vKokyusu=Kokyusu.selectedSegmentIndex;
    vWBC=WBC.selectedSegmentIndex;
    if (vTaion+vShinpakusu+vKokyusu+vWBC>=3) {
        vScoreSIRS=1;
    }
    else {
        vScoreSIRS=0;
    }
    vPlatelet=Platelet.selectedSegmentIndex;
    if (vPlatelet==2) {
        vPlatelet=3;
    }
    vPTratio=PTratio.selectedSegmentIndex;
    vFDP=FDP.selectedSegmentIndex;
    if (vFDP==2) {
        vFDP=3;
    }
    vScoreDIC=vScoreSIRS+vPlatelet+vPTratio+vFDP;
    [ScoreDIC setText:[NSString stringWithFormat:@"%d", vScoreDIC]];
    if (vScoreDIC>=4) {
        Hantei.text=@"DIC";
    }
    else {
        Hantei.text=@"";
    }
}//-(IBAction)myActionRUN:(id)sender

-(IBAction)myActionClear:(id)sender{
    Taion.selectedSegmentIndex=0;
    Shinpakusu.selectedSegmentIndex=0;
    Kokyusu.selectedSegmentIndex=0;
    WBC.selectedSegmentIndex=0;
    Platelet.selectedSegmentIndex=0;
    PTratio.selectedSegmentIndex=0;
    FDP.selectedSegmentIndex=0;
    Hantei.text=@"";
    ScoreDIC.text=@"0";
}//-(IBAction)myActionClear:(id)sender

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
