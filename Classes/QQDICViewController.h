//
//  QQDICViewController.h
//  DICSIRS
//
//  Created by Matsui Keiji on 2013/02/16.
//  Copyright 2013 Ofuna Chuo Hospital. All rights reserved.
//

#import <UIKit/UIKit.h>

int vTaion,vShinpakusu,vKokyusu,vWBC,vScoreSIRS;
int vPlatelet,vPTratio,vFDP,vScoreDIC;

@interface QQDICViewController : UIViewController {
    IBOutlet UISegmentedControl *Taion,*Shinpakusu;
    IBOutlet UISegmentedControl *Kokyusu,*WBC;
    IBOutlet UISegmentedControl *Platelet,*PTratio;
    IBOutlet UISegmentedControl *FDP;
    IBOutlet UILabel *ScoreDIC,*Hantei;
    IBOutlet id clearButton;
}

-(IBAction)myActionRUN:(id)sender;
-(IBAction)myActionClear:(id)sender;

@end
