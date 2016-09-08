//
//  Student+CoreDataProperties.h
//  CoredataTable
//
//  Created by ankur on 29/07/16.
//  Copyright © 2016 ankur. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Student.h"

NS_ASSUME_NONNULL_BEGIN

@interface Student (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *firstname;
@property (nullable, nonatomic, retain) NSString *phoneno;
@property (nullable, nonatomic, retain) NSString *semester;

@end

NS_ASSUME_NONNULL_END
