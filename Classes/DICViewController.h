//
//  DICViewController.h
//  DICSIRS
//
//  Created by Matsui Keiji on 2013/02/13.
//  Copyright 2013 Ofuna Chuo Hospital. All rights reserved.
//

#import <UIKit/UIKit.h>

int vHakketsubyo,vKisoshikkan,vShukketsu;
int vZoukishojo,vFDP,vPlatelet;
int vFibrinogen,vPTratio,vScoreDIC;

@interface DICViewController : UIViewController {
    IBOutlet UISegmentedControl *Hakketsubyo,*Kisoshikkan;
    IBOutlet UISegmentedControl *Shukketsu,*Zoukishojo;
    IBOutlet UISegmentedControl *FDP,*Platelet;
    IBOutlet UISegmentedControl *Fibrinogen,*PTratio;
    IBOutlet UILabel *ScoreDIC,*Hantei;
    IBOutlet id clearButton;
}

-(IBAction)myActionRUN:(id)sender;
-(IBAction)myActionClear:(id)sender;

@end
