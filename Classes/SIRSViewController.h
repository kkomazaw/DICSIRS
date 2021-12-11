//
//  SIRSViewController.h
//  DICSIRS
//
//  Created by Matsui Keiji on 2013/02/13.
//  Copyright 2013 Ofuna Chuo Hospital. All rights reserved.
//

#import <UIKit/UIKit.h>

int vTaion,vShinpakusu,vKokyusu,vWBC,vScoreSIRS;

@interface SIRSViewController : UIViewController {
    IBOutlet UISegmentedControl *Taion,*Shinpakusu;
    IBOutlet UISegmentedControl *Kokyusu,*WBC;
    IBOutlet UILabel *HanteiSIRS;
}

-(IBAction)myActionRUN:(id)sender;

@end
