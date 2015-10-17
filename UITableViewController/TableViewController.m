//
//  TableViewController.m
//  UITableViewController
//
//  Created by student on 10/9/15.
//  Copyright © 2015 Student. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController
NSArray *arrayFruits;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Beautiful Girls";
    arrayFruits = [[NSArray alloc]initWithObjects:@"Ngọc Trinh",@"Taylor Swift",@"Rebecca Furgerson", nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [arrayFruits count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //step 1
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" ];
    //step 2 If there are no cells to be reused, creat a new cell ...
    // Configure the cell...
    cell = [cell initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    //    cell.textLabel.font = [UIFont fontWithName:@"Helvetica" size:17.0];
        cell.detailTextLabel.font = [UIFont fontWithName:@"Helvetica" size:10.0];
    //Create a UIImage
    UIImage *appleImage =[UIImage imageNamed:@"ngoctrinh"];
    UIImage *bananaImage =[UIImage imageNamed:@"taylor"];
    UIImage *watermelonImage = [UIImage imageNamed:@"rebecca"];
    
    
    //Set the image in the row
    
    switch (indexPath.row) {
        case 0:
            cell.imageView.image =appleImage;
            cell.detailTextLabel.text =@"85-60-90";
            break;
        case 1:
            cell.imageView.image =bananaImage;
            cell.detailTextLabel.text =@"75-58-85";
            break;
        default:
            cell.imageView.image =watermelonImage;
            cell.detailTextLabel.text =@"80-63-85";
            break;
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator ;
    cell.textLabel.text =[arrayFruits objectAtIndex:indexPath.row];
    return cell;
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 58;
}

@end
