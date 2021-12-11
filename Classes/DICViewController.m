//
//  DICViewController.m
//  DICSIRS
//
//  Created by Matsui Keiji on 2013/02/13.
//  Copyright 2013 Ofuna Chuo Hospital. All rights reserved.
//

#import "DICViewController.h"


@implementation DICViewController

- (void)viewDidLoad {
	self.navigationItem.title = @"厚生省DIC診断基準";
    Hantei.text=@"";
	[super viewDidLoad];
}

-(IBAction)myActionRUN:(id)sender{
    vHakketsubyo=Hakketsubyo.selectedSegmentIndex;
    vKisoshikkan=Kisoshikkan.selectedSegmentIndex;
    vShukketsu=Shukketsu.selectedSegmentIndex;
    vZoukishojo=Zoukishojo.selectedSegmentIndex;
    vFDP=FDP.selectedSegmentIndex;
    vPlatelet=Platelet.selectedSegmentIndex;
    vFibrinogen=Fibrinogen.selectedSegmentIndex;
    vPTratio=PTratio.selectedSegmentIndex;
    switch (vHakketsubyo) {
        case 0:
            vScoreDIC=vKisoshikkan+vShukketsu+vZoukishojo+vFDP
            +vPlatelet+vFibrinogen+vPTratio;
            [ScoreDIC setText:[NSString stringWithFormat:@"%d", vScoreDIC]];
            if (vScoreDIC<=5) {
                Hantei.text=@"";
            }
            if (vScoreDIC==6) {
                Hantei.text=@"DICの疑い";
            }
            if (vScoreDIC>=7) {
                Hantei.text=@"DIC";
            }
            break;
         case 1:
            vScoreDIC=vKisoshikkan+vZoukishojo+vFDP
            +vFibrinogen+vPTratio;
            [ScoreDIC setText:[NSString stringWithFormat:@"%d", vScoreDIC]];
            if (vScoreDIC<=2) {
                Hantei.text=@"";
            }
            if (vScoreDIC==3) {
                Hantei.text=@"DICの疑い";
            }
            if (vScoreDIC>=4) {
                Hantei.text=@"DIC";
            }
            break;
        default:
            break;
    }
}//-(IBAction)myActionRUN:(id)sender

-(IBAction)myActionClear:(id)sender{
    Hakketsubyo.selectedSegmentIndex=0;
    Kisoshikkan.selectedSegmentIndex=0;
    Shukketsu.selectedSegmentIndex=0;
    Zoukishojo.selectedSegmentIndex=0;
    FDP.selectedSegmentIndex=0;
    Platelet.selectedSegmentIndex=0;
    Fibrinogen.selectedSegmentIndex=0;
    PTratio.selectedSegmentIndex=0;
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
