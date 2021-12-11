//
//  MatsudaViewController.h
//  DICSIRS
//
//  Created by Matsui Keiji on 2013/02/15.
//  Copyright 2013 Ofuna Chuo Hospital. All rights reserved.
//

#import <UIKit/UIKit.h>

int vPlatelet,vFDP;

@interface MatsudaViewController : UIViewController {
    IBOutlet UISegmentedControl *Platelet,*FDP;
    IBOutlet UILabel *Hantei;
}

-(IBAction)myActionRUN:(id)sender;

@end
