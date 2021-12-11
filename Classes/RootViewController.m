//
//  RootViewController.m
//  DICSIRS
//
//  Created by Matsui Keiji on 2013/02/13.
//  Copyright 2013 Ofuna Chuo Hospital. All rights reserved.
//

#import "RootViewController.h"


@implementation RootViewController


#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad {
    listOfApps = [[NSArray alloc] initWithObjects:
				  @"厚生省DIC診断基準",
                  @"DIC診断基準（松田試案）",
                  @"ISTH overt DIC診断基準",
                  @"急性期DIC診断基準",
				  @"SIRS診断基準",
                  @"Sample",
				  nil];
	self.navigationItem.title = @"ホーム";
    [super viewDidLoad];
	
}


#pragma mark -
#pragma mark Table view data source

// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
	return [listOfApps count];
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView
		 cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
	UITableViewCell *cell = [tableView
							 dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc]
				 initWithStyle:UITableViewCellStyleDefault
				 reuseIdentifier:CellIdentifier]
				autorelease];
    }
    
    NSString *cellValue = [listOfApps objectAtIndex:indexPath.row];
    cell.textLabel.text = cellValue;
    
    return cell;
}



#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // Navigation logic may go here -- for example, create and push another view controller.
    if( indexPath.row == 0 ) {
		DICViewController *detailViewController = [[DICViewController alloc]
                                                    initWithNibName:@"DICViewController" bundle:nil];
		[self.navigationController pushViewController:detailViewController animated:YES];
		[detailViewController release];
    }
	if( indexPath.row == 1 ) {
		MatsudaViewController *detailViewController = [[MatsudaViewController alloc]
                                                     initWithNibName:@"MatsudaViewController" bundle:nil];
		[self.navigationController pushViewController:detailViewController animated:YES];
		[detailViewController release];
    }
    if( indexPath.row == 2 ) {
		ISTHViewController *detailViewController = [[ISTHViewController alloc]
                                                    initWithNibName:@"ISTHViewController" bundle:nil];
		[self.navigationController pushViewController:detailViewController animated:YES];
		[detailViewController release];
    }
    if( indexPath.row == 3 ) {
		QQDICViewController *detailViewController = [[QQDICViewController alloc]
                                                    initWithNibName:@"QQDICViewController" bundle:nil];
		[self.navigationController pushViewController:detailViewController animated:YES];
		[detailViewController release];
    }
    if( indexPath.row == 4 ) {
		SIRSViewController *detailViewController = [[SIRSViewController alloc]
                                                    initWithNibName:@"SIRSViewController" bundle:nil];
		[self.navigationController pushViewController:detailViewController animated:YES];
		[detailViewController release];
    }
    if( indexPath.row == 5 ) {
		SampleViewController *detailViewController = [[SampleViewController alloc]
                                                    initWithNibName:@"SampleViewController" bundle:nil];
		[self.navigationController pushViewController:detailViewController animated:YES];
		[detailViewController release];
    }
}// -(void)tableview~indexPathに対応する

#pragma mark -
#pragma mark Memory management

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Relinquish ownership any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    // Relinquish ownership of anything that can be recreated in viewDidLoad or on demand.
    // For example: self.myOutlet = nil;
}


- (void)dealloc {
	[listOfApps release];
    [super dealloc];
}


@end
