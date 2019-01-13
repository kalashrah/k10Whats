//
//  imports.h
//  whats10
//
//  Created by MacBook 10 on 03/11/2018.
//

#ifndef imports_h
#define imports_h


#endif /* imports_h */
#import <UIKit/UIKit.h>
#import "FRPrefs.h"
#import "SCLAlertView.h"
#import "WAConversationHeaderView.h"
#import "WAChatListHeaderCell.h"
#import "WAChatSessionCell.h"
#import "WAMessageBubbleTableViewCell.h"
#import "WAConversationHeaderView.h"
#import "WACallManager.h"
#import "XMPPPresenceStanza.h"
#import "WAMessage.h"
#import "WAChatStorage.h"
#import "WAStatusViewerViewController.h"
#import "XMPPConnectionMain.h"
#import "WAContactTableViewCell.h"
#import "WAProfilePictureDynamicThumbnailView.h"
#import "_WADividerCellBackground.h"
#import "WALabel.h"
//// of respring
#import <spawn.h>
#import <signal.h>
#import "substrate.h"
#import "WAStaticTableViewController.h"
#import "NewSettingVC.h"


//
//void present10Alert(UIAlertController* alert, BOOL animated);
//
//
//
@interface _UINavigationBarContentView : UIView @end
@interface _UIStatusBarForegroundView : UIView @end
@interface _UINavigationBarLargeTitleView : UIView @end
@interface _WADraggableInputContainerView : UIView @end
@interface _WACustomBehaviorsTableView : UIView @end
@interface _UIBarBackground : UIView


- (void)settintColor;

@end
@interface UISearchBarTextField : UITextField @end
@interface WATabBar : UIView @end

@interface WABadgedLabel : UILabel @end
@interface UITableViewLabel : UILabel @end


@interface _WATableViewCellWithFakeButton : UITableViewCell
     -(id)initWithStyle:(long long)arg1 reuseIdentifier:(id)arg2;
 @end

@interface WAChatMessagesTableView : UITableView

@property (nonatomic, copy, readwrite) UIColor *backgroundColor;

@end

@interface WAChatMessagesTableViewCell : UITableViewCell

@property (nonatomic, copy, readwrite) UIColor *backgroundColor;

@end

@interface WAInputTextView : UITextView <UITextViewDelegate>


@end

@interface UITableViewCellSelectedBackground : UIView {
    int _selectionStyle;
    UIColor* _multiselectBackgroundColor;
    BOOL _multiselect;
}
@property(assign, nonatomic) int selectionStyle;
@property(retain, nonatomic) UIColor* multiselectBackgroundColor;
@property(assign, nonatomic, getter=isMultiselect) BOOL multiselect;
-(void)drawRect:(CGRect)rect;
-(void)dealloc;
@end


@interface WASettingsViewController : UIViewController
-(id)addSectionAtIndex:(unsigned long long)arg1;

@end


@interface WATableSection : NSObject
-(void)setRows:(id)arg1;
+(id)createCellWithStyle:(NSInteger)style;
@end

@interface WATableRow : NSObject
-(id)initWithCell:(id)arg1;
-(void)setHandler:(id)arg1;
@end












