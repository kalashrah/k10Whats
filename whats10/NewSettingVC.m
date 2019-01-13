//
//  NewSettingVC.m
//  NewS
//
//  Created by MacBook 10 on 23/12/2018.
//  Copyright © 2018 kalashrah. All rights reserved.
//

#import "NewSettingVC.h"
#import "FRPrefs.h"

#define greenColor [UIColor colorWithRed:1/255.0f green:152/255.0f blue:117/255.0f alpha:1.0f]




@implementation NewSettingVC

-(void)loadk10Setting:(UIViewController *)viewController{
    FRPViewSection *headerSection = [FRPViewSection sectionWithHeight:70
                                                            initBlock:^(UITableViewCell *cell) {
                                                                /* design your cell as you wish */
                                                                /* block of code executed during cell initialization */
                                                                cell.backgroundColor = [UIColor clearColor];
                                                                
                                                                UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
                                                                label.font = [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:48];
                                                                [label setText:@"Whats10"];
                                                                [label setTextColor:[UIColor blackColor]];
                                                                // [label setShadowColor:[UIColor colorWithRed:1/255.0f green:152/255.0f blue:117/255.0f alpha:1.0f]];
                                                                [label setShadowOffset:CGSizeMake(1,1)];
                                                                [label setTextAlignment:NSTextAlignmentCenter];
                                                                [label setTag:111];
                                                                
                                                                UILabel *underLabel = [[UILabel alloc] initWithFrame:CGRectZero];
                                                                [underLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:14]];
                                                                [underLabel setText:@"Thanks for interrupting Wha10"];
                                                                [underLabel setTextColor:[UIColor grayColor]];
                                                                [underLabel setTextAlignment:NSTextAlignmentCenter];
                                                                [underLabel setTag:222];
                                                                
                                                                [cell.contentView addSubview:label];
                                                                [cell.contentView addSubview:underLabel];
                                                            }
                                                          layoutBlock:^(UITableViewCell *cell) {
                                                              /* block of code executed during cell layoutSubviews */
                                                              [[cell.contentView viewWithTag:111] setFrame:CGRectMake(0, -5, cell.frame.size.width, 60)];
                                                              [[cell.contentView viewWithTag:222] setFrame:CGRectMake(0, 30, cell.frame.size.width, 60)];
                                                          }];
    
    //////////////////////////////////////////////////////////////////////////////////////////////
    FRPSection *SectionSetting = [FRPSection sectionWithTitle:@"" footer:@""];
    
    FRPNewLinkCell *LinkSettingPrivacy = [FRPNewLinkCell cellWithTitle:@"اعدادت الخصوصية" image:[UIImage imageNamed:@"/Library/Application Support/Whats10.bundle/scurtimg.png"] selectedBlock:^(id sender) {
        
        FRPSection *SettingPrivacy = [FRPSection sectionWithTitle:@"" footer:@""];
        
        [SettingPrivacy addCell:[FRPSwitchCell cellWithTitle:@" اخفاء الظهور" setting:[FRPSettings settingsWithKey:@"DisableOnline" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];
        
        [SettingPrivacy addCell:[FRPSwitchCell cellWithTitle:@" اخفاء جاري الكتابة" setting:[FRPSettings settingsWithKey:@"DisableTyping" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];
        
        [SettingPrivacy addCell:[FRPSwitchCell cellWithTitle:@" اخفاء علامات القراءة" setting:[FRPSettings settingsWithKey:@"DisableReadReceipt" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];
        
        FRPreferences *SettingPrivacyVC = [FRPreferences tableWithSections:@[SettingPrivacy] title:@"Privacy" tintColor:greenColor];
        [self.navigationController pushViewController:SettingPrivacyVC animated:YES];
        
    }];
    
    
    
    //    ///////////////////////////////
    
    FRPNewLinkCell *LinkSettingMedia = [FRPNewLinkCell cellWithTitle:@"اعدادت الوسائط والتحميل" image:[UIImage imageNamed:@"/Library/Application Support/Whats10.bundle/MediaImg.png"] selectedBlock:^(id sender){
        
        FRPSection *SettingMedia = [FRPSection sectionWithTitle:@"" footer:@""];
        
        [SettingMedia addCell:[FRPSwitchCell cellWithTitle:@"حجم لامحدود للرفع" setting:[FRPSettings settingsWithKey:@"UnlimitedMedia" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];
        
        
        [SettingMedia addCell:[FRPSwitchCell cellWithTitle:@"تفعيل الحفظ من الحالة" setting:[FRPSettings settingsWithKey:@"StatusSaved" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];
        
        
        
        FRPreferences *SettingMediaVC = [FRPreferences tableWithSections:@[SettingMedia] title:@"Media" tintColor:greenColor];
        [self.navigationController pushViewController:SettingMediaVC animated:YES];
        
    }];
    
    
    /////////////////////////////////////////
    FRPNewLinkCell *LinkSettingChat = [FRPNewLinkCell cellWithTitle:@"إعدادات المحادثات" image:[UIImage imageNamed:@"/Library/Application Support/Whats10.bundle/chatImg.png"] selectedBlock:^(id sender){
        
        FRPSection *SettingChat = [FRPSection sectionWithTitle:@"" footer:@""];
        
        [SettingChat addCell:[FRPSwitchCell cellWithTitle:@"تأكيد المكالمات" setting:[FRPSettings settingsWithKey:@"alertcallvoice" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];
        
        
        [SettingChat addCell:[FRPSwitchCell cellWithTitle:@"اخفاء زر الاتصال والفيديو" setting:[FRPSettings settingsWithKey:@"hiddenvoiceCallButton" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];
        
        [SettingChat addCell:[FRPSwitchCell cellWithTitle:@"تفعيل الحذف في اي وقت" setting:[FRPSettings settingsWithKey:@"Disabledeletmessage" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];
        [SettingChat addCell:[FRPSwitchCell cellWithTitle:@"ابقاء رسائل الطرف الاخر بعد الحذف" setting:[FRPSettings settingsWithKey:@"Disabledeletmessage" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];
        
        FRPreferences *SettingMediaVC = [FRPreferences tableWithSections:@[SettingChat] title:@"Setting Chat" tintColor:greenColor];
        [self.navigationController pushViewController:SettingMediaVC animated:YES];
        
    }];
    FRPSwitchCell *switchDarkMood = [FRPSwitchCell cellWithTitle:@"Dark Mood"
                                                         setting:[FRPSettings settingsWithKey:@"Night10" defaultValue:@NO]
                                                postNotification:nil
                                                     changeBlock:^(UISwitch *switchView) {
                                                         // NSLog(@"switch 1 is: %@",[(UISwitch *)switchView isOn]?@"ENABLED":@"DISABLED");
                                                     }];
    [SectionSetting addCell:LinkSettingPrivacy];
    [SectionSetting addCell:LinkSettingChat];
    [SectionSetting addCell:LinkSettingMedia];
    [SectionSetting addCell:switchDarkMood];
    
    
    
    /////////////////////////////////////////
    FRPSection *sectionDeveloper = [FRPSection sectionWithTitle:@"" footer:@""];
    
    [sectionDeveloper addCell:[FRPDeveloperCell cellWithTitle:@"khalid Alashrah" detail:@"@kalashrah" image:[UIImage imageNamed:@"/Library/Application Support/Whats10.bundle/logo.jpg"] url:@"https://twitter.com/kalashrah"]];
    
    
    FRPreferences *table = [FRPreferences tableWithSections:@[headerSection,SectionSetting,sectionDeveloper]
                                                      title:@"Whats10 Settings"
                                                  tintColor:greenColor];
    
    UIBarButtonItem *Apply = [[UIBarButtonItem alloc]initWithTitle:@"Apply" style:UIControlStateNormal target:self action:@selector(exit0)];
    
    
    table.navigationItem.rightBarButtonItem = Apply;
    
    [self.navigationController pushViewController:table animated:YES];
    
    table.navigationController.navigationBar.tintColor = greenColor;
    [viewController.navigationController pushViewController:table animated:YES];
    if (@available(iOS 11.0, *)) {
        viewController.navigationController.navigationBar.prefersLargeTitles = false;
    } else {
        // Fallback on earlier versions
    }
}


- (void)loadNewSettings:(id)sender {
    FRPViewSection *headerSection = [FRPViewSection sectionWithHeight:70
                    initBlock:^(UITableViewCell *cell) {
                        /* design your cell as you wish */
                        /* block of code executed during cell initialization */
                        cell.backgroundColor = [UIColor clearColor];
                        
                        UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
                        label.font = [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:48];
                        [label setText:@"Whats10"];
                        [label setTextColor:[UIColor blackColor]];
                        // [label setShadowColor:[UIColor colorWithRed:1/255.0f green:152/255.0f blue:117/255.0f alpha:1.0f]];
                        [label setShadowOffset:CGSizeMake(1,1)];
                        [label setTextAlignment:NSTextAlignmentCenter];
                        [label setTag:111];
                        
                        UILabel *underLabel = [[UILabel alloc] initWithFrame:CGRectZero];
                        [underLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:14]];
                        [underLabel setText:@"Thanks for interrupting Wha10"];
                        [underLabel setTextColor:[UIColor grayColor]];
                        [underLabel setTextAlignment:NSTextAlignmentCenter];
                        [underLabel setTag:222];
                        
                        [cell.contentView addSubview:label];
                        [cell.contentView addSubview:underLabel];
                    }
                  layoutBlock:^(UITableViewCell *cell) {
                      /* block of code executed during cell layoutSubviews */
                      [[cell.contentView viewWithTag:111] setFrame:CGRectMake(0, -5, cell.frame.size.width, 60)];
                      [[cell.contentView viewWithTag:222] setFrame:CGRectMake(0, 30, cell.frame.size.width, 60)];
                  }];
    
    //////////////////////////////////////////////////////////////////////////////////////////////
    FRPSection *SectionSetting = [FRPSection sectionWithTitle:@"" footer:@""];
    
    FRPNewLinkCell *LinkSettingPrivacy = [FRPNewLinkCell cellWithTitle:@"اعدادت الخصوصية" image:[UIImage imageNamed:@"/Library/Application Support/Whats10.bundle/scurtimg.png"] selectedBlock:^(id sender) {
        
        FRPSection *SettingPrivacy = [FRPSection sectionWithTitle:@"" footer:@""];
        
        [SettingPrivacy addCell:[FRPSwitchCell cellWithTitle:@" اخفاء الظهور" setting:[FRPSettings settingsWithKey:@"DisableOnline" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];
        
        [SettingPrivacy addCell:[FRPSwitchCell cellWithTitle:@" اخفاء جاري الكتابة" setting:[FRPSettings settingsWithKey:@"DisableTyping" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];
        
        [SettingPrivacy addCell:[FRPSwitchCell cellWithTitle:@" اخفاء علامات القراءة" setting:[FRPSettings settingsWithKey:@"DisableReadReceipt" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];
        
        FRPreferences *SettingPrivacyVC = [FRPreferences tableWithSections:@[SettingPrivacy] title:@"Privacy" tintColor:greenColor];
        [self.navigationController pushViewController:SettingPrivacyVC animated:YES];
        
    }];
    
    
    
    //    ///////////////////////////////
    
    FRPNewLinkCell *LinkSettingMedia = [FRPNewLinkCell cellWithTitle:@"اعدادت الخصوصية" image:[UIImage imageNamed:@"/Library/Application Support/Whats10.bundle/MediaImg.png"] selectedBlock:^(id sender){
        
        FRPSection *SettingMedia = [FRPSection sectionWithTitle:@"" footer:@""];
        
        [SettingMedia addCell:[FRPSwitchCell cellWithTitle:@"حجم لامحدود للرفع" setting:[FRPSettings settingsWithKey:@"UnlimitedMedia" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];
        
        
        [SettingMedia addCell:[FRPSwitchCell cellWithTitle:@"تفعيل الحفظ من الحالة" setting:[FRPSettings settingsWithKey:@"StatusSaved" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];
        
        
        
        FRPreferences *SettingMediaVC = [FRPreferences tableWithSections:@[SettingMedia] title:@"Media" tintColor:greenColor];
        [self.navigationController pushViewController:SettingMediaVC animated:YES];
        
    }];
    
    
    /////////////////////////////////////////
    
    FRPNewLinkCell *LinkSettingChat = [FRPNewLinkCell cellWithTitle:@"إعدادات المحادثات" image:[UIImage imageNamed:@"/Library/Application Support/Whats10.bundle/chatImg.png"] selectedBlock:^(id sender) {
        
        FRPSection *SettingChat = [FRPSection sectionWithTitle:@"" footer:@""];
        
        [SettingChat addCell:[FRPSwitchCell cellWithTitle:@"تأكيد المكالمات" setting:[FRPSettings settingsWithKey:@"alertcallvoice" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];
        
        
        [SettingChat addCell:[FRPSwitchCell cellWithTitle:@"اخفاء زر الاتصال والفيديو" setting:[FRPSettings settingsWithKey:@"hiddenvoiceCallButton" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];
        
        [SettingChat addCell:[FRPSwitchCell cellWithTitle:@"تفعيل الحذف في اي وقت" setting:[FRPSettings settingsWithKey:@"Disabledeletmessage" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];
        [SettingChat addCell:[FRPSwitchCell cellWithTitle:@"ابقاء رسائل الطرف الاخر بعد الحذف" setting:[FRPSettings settingsWithKey:@"Disabledeletmessage" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];
        
        FRPreferences *SettingMediaVC = [FRPreferences tableWithSections:@[SettingChat] title:@"Setting Chat" tintColor:greenColor];
        [self.navigationController pushViewController:SettingMediaVC animated:YES];
        
    }];
    FRPSwitchCell *switchDarkMood = [FRPSwitchCell cellWithTitle:@"Dark Mood"
                                                         setting:[FRPSettings settingsWithKey:@"Night10" defaultValue:@NO]
                                                postNotification:nil
                                                     changeBlock:^(UISwitch *switchView) {
                                                         // NSLog(@"switch 1 is: %@",[(UISwitch *)switchView isOn]?@"ENABLED":@"DISABLED");
                                                     }];
    [SectionSetting addCell:LinkSettingPrivacy];
    [SectionSetting addCell:LinkSettingMedia];
    [SectionSetting addCell:LinkSettingChat];
    
    [SectionSetting addCell:switchDarkMood];
    
    
    
    /////////////////////////////////////////
    FRPSection *sectionDeveloper = [FRPSection sectionWithTitle:@"" footer:@""];
    
    [sectionDeveloper addCell:[FRPDeveloperCell cellWithTitle:@"khalid Alashrah" detail:@"@kalashrah" image:[UIImage imageNamed:@"/Library/Application Support/Whats10.bundle/logo.jpg"] url:@"https://twitter.com/kalashrah"]];
    
    
    FRPreferences *table = [FRPreferences tableWithSections:@[headerSection,SectionSetting,sectionDeveloper]
                                                      title:@"Whats10 Settings"
                                                  tintColor:greenColor];
    
    UIBarButtonItem *Apply = [[UIBarButtonItem alloc]initWithTitle:@"Apply" style:UIControlStateNormal target:self action:@selector(disAction)];
    
    
    table.navigationItem.rightBarButtonItem = Apply;
    
    [self.navigationController pushViewController:table animated:YES];
    
    table.navigationController.navigationBar.tintColor = greenColor;
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

-(void)exit0{
    exit(0);
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
