//
//  TableViewController.h
//  CoredataTable
//
//  Created by ankur on 28/07/16.
//  Copyright © 2016 ankur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController <UITableViewDataSource ,UITableViewDelegate>
{
    
    
}
@property(strong)NSMutableArray *record ;
@property (strong, nonatomic,null_resettable) IBOutlet UITableView *tableView;

@end
