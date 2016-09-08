//
//  TableViewCell.h
//  CoredataTable
//
//  Created by ankur on 28/07/16.
//  Copyright © 2016 ankur. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *lblName;

@property (strong, nonatomic) IBOutlet UILabel *lblSemester;
@property (strong, nonatomic) IBOutlet UILabel *lblPhone;
@property (strong, nonatomic) IBOutlet UIImageView *Image;

@end
