//
//  FRPNewLinkCell.m
//  FRPreferences
//
//  Created by MacBook 10 on 23/12/2018.
//  Copyright © 2018 F0u4d. All rights reserved.
//

#import "FRPNewLinkCell.h"


@interface FRPNewLinkCell()

@property (nonatomic, strong) UIImage *image;

@end

@implementation FRPNewLinkCell


+ (instancetype)cellWithTitle:(NSString *)title image:(UIImage *)image selectedBlock:(FRPLinkCellSelected)block{
    
    return [[self alloc] cellWithTitle:title image:image selectedBlock:block];
}

- (instancetype)cellWithTitle:(NSString *)title image:(UIImage *)image selectedBlock:(FRPLinkCellSelected)block{
    FRPNewLinkCell *cell = [super initWithTitle:title setting:nil];
    cell.valueChanged = block;
    cell.image = image;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    CGSize size = CGSizeMake(35,35);
    UIGraphicsBeginImageContextWithOptions(size, NO, UIScreen.mainScreen.scale);
    [self.image drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *newThumbnail = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    cell.imageView.image = newThumbnail;;
    return cell;
    return cell;
}

- (void)didSelectFromTable:(FRPreferences *)viewController {
    NSIndexPath *indexPath = [viewController.tableView indexPathForCell:self];
    [viewController.tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (self.valueChanged) {
        self.valueChanged(self);
    }
}
- (void)layoutSubviews {
    [super layoutSubviews];
    self.imageView.layer.cornerRadius = 5;
    self.imageView.clipsToBounds = YES;
}



@end
