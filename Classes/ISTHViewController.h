//
//  ISTHViewController.h
//  DICSIRS
//
//  Created by Matsui Keiji on 2013/02/16.
//  Copyright 2013 Ofuna Chuo Hospital. All rights reserved.
//

#import <UIKit/UIKit.h>

int vPlatelet,vFDP,vFibrinogen,vPTsec,vScoreDIC;

@interface ISTHViewController : UIViewController {
    IBOutlet UISegmentedControl *Platelet,*FDP,*Fibrinogen,*PTsec;
    IBOutlet UILabel *ScoreDIC,*Hantei;
}

-(IBAction)myActionRUN:(id)sender;
@end
