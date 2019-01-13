//
//  FRPNewLinkCell.h
//  FRPreferences
//
//  Created by MacBook 10 on 23/12/2018.
//  Copyright © 2018 F0u4d. All rights reserved.
//

#import "FRPCell.h"

typedef void (^FRPLinkCellSelected)(UITableViewCell *sender);

@interface FRPNewLinkCell : FRPCell


+ (instancetype)cellWithTitle:(NSString *)title image:(UIImage *)image selectedBlock:(FRPLinkCellSelected)block;


@end
