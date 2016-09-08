//
//  ViewController.m
//  CoredataTable
//
//  Created by ankur on 27/07/16.
//  Copyright © 2016 ankur. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
@interface ViewController (){
NSData *data ;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)SaveBtn:(id)sender {
    AppDelegate *appdelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext *context = [appdelegate managedObjectContext];
    NSManagedObject *newobject = [NSEntityDescription insertNewObjectForEntityForName:@"Student" inManagedObjectContext:context];
    [newobject setValue:_nameField.text forKey:@"firstname"];
    [newobject setValue:_phoneField.text forKey:@"phoneno"];
    [newobject setValue:_semesterField.text forKey:@"semester"];
   [newobject setValue: data forKey:@"image"];
    _nameField.text= @"";
    _phoneField.text = @"";
    _ImageView.image = nil;
    _semesterField.text = @"";
    NSError *error;
    [context save:&error];
    _labelShow.text = @"Contact saved";
    
    
//    AppDelegate *appDelegate=[[UIApplication sharedApplication]delegate];
//    
//    NSManagedObjectContext *moc=[appDelegate managedObjectContext];
//    
//    NSManagedObject *newContact=[NSEntityDescription insertNewObjectForEntityForName:@"Contacts" inManagedObjectContext:moc];
//    
//    [newContact setValue:_name.text forKey:@"name"];
//    [newContact setValue:_phone.text forKey:@"phone"];
//    [newContact setValue:_address.text forKey:@"address"];
//    
//    _name.text=@"";
//    _address.text=@"";
//    _phone.text=@"";
//    
//    NSError *err;
//    
//    [moc save:&err];
//    _status.text = @"Contact saved";
//    

}

- (IBAction)FindBtn:(id)sender {
//    AppDelegate *appDelegate =[[UIApplication sharedApplication] delegate];
//    
//    NSManagedObjectContext *context =[appDelegate managedObjectContext];
//    
//    NSEntityDescription *entityDesc =[NSEntityDescription entityForName:@"Student"
//                                                 inManagedObjectContext:context];
//    
//    NSFetchRequest *request = [[NSFetchRequest alloc] init];
//    [request setEntity:entityDesc];
//    
//    
//    NSPredicate *pred =
//    [NSPredicate predicateWithFormat:@"(firstname = %@)",
//     _nameField.text];
//    [request setPredicate:pred];
//    NSManagedObject *matches = nil;
//    
//    NSError *error;
//    NSArray *objects = [context executeFetchRequest:request
//                                              error:&error];
//    
//    if ([objects count] == 0) {
//        _labelShow.text = @"No matches";
//    } else {
//        matches = objects[0];
//        _nameField.text = [matches valueForKey:@"firstname"];
//        _phoneField.text = [matches valueForKey:@"phoneno"];
//        _semesterField.text = [NSString stringWithFormat:
//                        @"%lu matches found", (unsigned long)[objects count]];
//    }

}
- (IBAction)GetImage:(id)sender {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    picker.delegate = self;
    [self presentViewController:picker animated:YES completion:nil];
    
    
  
}
- (void)imagePickerController:(UIImagePickerController *)picker
        didFinishPickingImage:(UIImage *)image
                  editingInfo:(NSDictionary *)editingInfo
{
    _ImageView.image = image;
    [[picker parentViewController] dismissModalViewControllerAnimated:YES];
    data = UIImagePNGRepresentation(image);
}
@end
