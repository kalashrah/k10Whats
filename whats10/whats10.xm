#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "imports.h"


%config(generator=internal)
////////////////
// k10 Colors
#define greenColor [UIColor colorWithRed:1/255.0f green:152/255.0f blue:117/255.0f alpha:1.0f]

#define Nightk10Color [UIColor colorWithRed:0.21 green:0.21 blue:0.21 alpha:1.0]

#define Nightk10ColorPP [UIColor colorWithRed:0.15 green:0.15 blue:0.15 alpha:1.0]

#define k10Color [UIColor colorWithRed:0.42 green:0.42 blue:0.42 alpha:1.0]

#define cleark10Color [UIColor clearColor]
#define r9a9yk10Color [UIColor colorWithRed:0.78 green:0.78 blue:0.78 alpha:1.0]

#define JDL10Color [UIColor colorWithRed:1.00 green:0.60 blue:0.03 alpha:1.0]

//static BOOL unlimitedMedia;
//static BOOL unlimitedStatus;
//static BOOL unlimitedSubjects;
//static BOOL unlimitedPhotos;
//static BOOL mediaOptions;
//static BOOL shareStyle;
//static BOOL profilePic;
//static BOOL lastSeen;
//static BOOL readMark;
/////////////////////////////////////



%hook _WANoBlurNavigationBar

- (void)viewDidLoad{
    %orig;

}


%end
%hook WASettingsViewController



- (void)viewDidLoad{
    %orig;

    WATableSection *NewSection = [self addSectionAtIndex:1];

    WATableRow *NewRow = [[%c(WATableRow) alloc] init];

    UITableViewCell *Cell = [[%c(UITableViewCell) alloc] init];

    //    FRPNewLinkCell *Cell = [FRPNewLinkCell cellWithTitle:@"اعدادت الخصوصية" image:[UIImage imageNamed:@"/Library/Application Support/Whats10.bundle/scurtimg.png"]];

    [Cell.textLabel setText:@"Whats10"];
    Cell.imageView.image = [UIImage imageNamed:@"/Library/Application Support/Whats10.bundle/Whats10Icon.png"];
    [Cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];

    [NewRow setHandler:^{
    //[[NewSettingVC alloc] loadk10Setting:self];

        FRPViewSection *headerSection = [FRPViewSection sectionWithHeight:70
                                        initBlock:^(UITableViewCell *cell) {
                                            /* design your cell as you wish */
                                            /* block of code executed during cell initialization */
                                            cell.backgroundColor = [UIColor clearColor];

                                            UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
                                            label.font = [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:48];
                                            [label setText:@"Whats"];
                                            [label setTextColor:[UIColor blackColor]];
                                            // [label setShadowColor:[UIColor colorWithRed:1/255.0f green:152/255.0f blue:117/255.0f alpha:1.0f]];
                                            [label setShadowOffset:CGSizeMake(1,1)];
                                            [label setTextAlignment:NSTextAlignmentCenter];
                                            [label setTag:111];

                                            UILabel *underLabel = [[UILabel alloc] initWithFrame:CGRectZero];
                                            [underLabel setFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:14]];
                                            [underLabel setText:@"k10"];
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

        UIBarButtonItem *Apply = [[UIBarButtonItem alloc]initWithTitle:@"Apply" style:UIControlStateNormal target:self action:@selector(ApplyCliced)];


        table.navigationItem.rightBarButtonItem = Apply;

        [self.navigationController pushViewController:table animated:YES];

        table.navigationController.navigationBar.tintColor = greenColor;
        [self.navigationController pushViewController:table animated:YES];
        if (@available(iOS 11.0, *)) {
            self.navigationController.navigationBar.prefersLargeTitles = false;
        } else {
            // Fallback on earlier versions
        }

    }];


    [NewRow initWithCell:Cell];

    [NewSection setRows:@[NewRow]];

}
%new
-(void)ApplyCliced{
    exit(0);
}



%end

%hook WAConversationHeaderView

- (UIButton *)videoCallButton{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"hiddenvoiceCallButton"]) {
        UIButton *videoCallButton = %orig;
        videoCallButton.hidden = YES;
        return videoCallButton;
    } else {
        return %orig;
    }
}
/////////////////////////////
- (UIButton *)callButton{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"hiddenvoiceCallButton"]) {
        UIButton *callButton = %orig;
        callButton.hidden = YES;
        return callButton;
    } else {
        return %orig;
    }
}

///////////
- (void)callButtonTapped:(id)arg1{

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"alertcallvoice"]) {

        SCLAlertView *SCalert = [[SCLAlertView alloc] initWithNewWindow];
        SCalert.backgroundType = SCLAlertViewBackgroundBlur;
        [SCalert addButton:@"WhatsApp Call" actionBlock:^ {
            %orig;
        }];

        [SCalert showNotice:@"Wha10" subTitle:@"You need Call ?" closeButtonTitle:@"Cancel" duration:0.0f];
    } else {
        return %orig;
    }

}



%end





%hook XMPPPresenceStanza

+(id)stanzaWithPresence:(unsigned long long)arg1 nickname:(id)arg2 {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"DisableOnline"]) {
       return %orig(3, arg2);
    } else {
        return %orig;
    }

}

%end

%hook WAChatManager

    -(void)changeOutgoingChatState:(unsigned long long)arg1 forJID:(id)arg2 {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        if ([defaults boolForKey:@"DisableTyping"]) {
             return %orig(0, arg2);
        } else {
            return %orig;
        }
    }
%end

%hook XMPPConnectionMain

    -(void)sendReadReceiptsForMessagesIfNeeded:(id)arg1 {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        if ([defaults boolForKey:@"DisableOnline"]) {
            return;
        } else {
            return %orig;
        }

    }



%end


%hook WAChatStorage

- (void)revokeIncomingMessage:(WAMessage *)message updatedStanzaID:(id)arg2 outOfOrder:(_Bool)arg3 revokeDate:(id)arg4 deferAction:(id)arg5 {
     NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Disabledeletmessage"]) {
        [message setText:[NSString stringWithFormat:@"k10 %@", [message text]]];
        return;

    } else {
        return %orig;
    }

}

%end
%hook WAMessage

-(_Bool)canBeRevoked {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Disabledeletmessage"]) {
        return true;

    } else {
        return %orig;
    }
}

%end

%hook WAStatusViewerViewController

-(void)statusViewerSectionViewDidFinishPresentingItem:(id)arg1 {
    return;
}


-(void)addButtonsToActionSheet:(WAActionSheetPresenter *)actionSheet forIncomingStatusMessage:(id)arg2 {
    [actionSheet addButtonWithTitle:@"حفظ" image:nil useBoldText:NO handler:^(UIAlertAction * action) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        if ([defaults boolForKey:@"StatusSaved"]) {
           [self SaveThes];
        } else {
            return %orig;
        }



    }];
//    return %orig;
}

%new
-(void)SaveThes {
    NSString* mediaPath = [[[self currentStatusItem] message] mediaPath];
    if (mediaPath) {
        UIImage *image = [UIImage imageNamed:mediaPath];
        if (image) {
            UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);
        } else {
            UISaveVideoAtPathToSavedPhotosAlbum(mediaPath, nil, nil, nil);
        }
    }
}

%end

////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////

//UNLIMAT Mmmmmmmmmmeeeeddddiiiiaaaaaa
%hook WAVideoTranscoderDescriptor
- (_Bool)_requiresFileSizeReduction {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"UnlimitedMedia"]) {
        return FALSE;
    } else {
        return %orig;
    }
}
%end

%hook WAServerProperties
+ (unsigned long long)maxMediaSize {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"UnlimitedMedia"]) {
        return 90000000000000000;
    } else {
        return %orig;
    }
}
%end

%hook WAVideoTranscoder
- (_Bool)isVideoEligibleForPassThrough {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"UnlimitedMedia"]) {
        return TRUE;
    } else {
        return %orig;
    }
}
%end

%hook WAMultiSendEditableVideo
- (_Bool)needsFileSizeReduction {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"UnlimitedMedia"]) {
        return FALSE;
    } else {
        return %orig;
    }
}
%end
%hook UIDevice

-(_Bool)wa_isDeviceSupported {
    return true;
}

%end

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////             DARC MOOOD


//%hook _UINavigationBarContentView
//-(void)layoutSubviews {
//     %orig;
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    if ([defaults boolForKey:@"Night10"]) {
//        self.backgroundColor = Nightk10Color;
//    } else {
//        return %orig;
//    }
//} %end
%hook _UINavigationBarLargeTitleView
-(void)layoutSubviews {
     %orig;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = Nightk10Color;
    } else {
        return %orig;
    }
} %end

%hook _UIStatusBarForegroundView
-(void)layoutSubviews {
     %orig;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = Nightk10Color;
    } else {
        return %orig;
    }
 }

%end

%hook _WADraggableInputContainerView
-(void)layoutSubviews {
     %orig;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = Nightk10Color;
         self.tintColor = [UIColor whiteColor];
    } else {
        return %orig;
    }
} %end
%hook _WACustomBehaviorsTableView
-(void)layoutSubviews {
     %orig;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = Nightk10ColorPP;
    } else {
        return %orig;
    }
 } %end
%hook _UIBarBackground
-(void)layoutSubviews {
    %orig;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = Nightk10Color;
        self.tintColor = [UIColor whiteColor];

    } else {
        return %orig;
    }
} %end
%hook WATabBar
-(void)layoutSubviews {
     %orig;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = Nightk10Color;
        self.tintColor = [UIColor whiteColor];
    } else {
        return %orig;
    }
} %end
%hook UITableViewCell
-(void)layoutSubviews {
     %orig;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = Nightk10Color;
    } else {
        return %orig;
    }
 } %end
%hook UITableView
-(void)layoutSubviews {
     %orig;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = Nightk10Color;
    } else {
        return %orig;
    }
 }
%end
%hook UISearchBarTextField
-(void)layoutSubviews {
     %orig;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.textColor = [UIColor whiteColor];
        self.backgroundColor = Nightk10Color;
    } else {
        return %orig;
    }
} %end

%hook UILabel

-(void)layoutSubviews {
    %orig;

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.textColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor clearColor];
    } else {
        return %orig;
    }
}

%end

%hook WALabel

-(void)layoutSubviews {
    %orig;

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.textColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor clearColor];
    } else {
        return %orig;
    }
}

%end
%hook WABadgedLabel

-(void)layoutSubviews {
    %orig;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = [UIColor clearColor];
    } else {
        return %orig;
    }
}
%end

%hook UITableViewLabel

-(void)layoutSubviews {
    %orig;

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.textColor = [UIColor whiteColor];
    } else {
        return %orig;
    }
}

%end
%hook _WADividerCellBackground

-(void)layoutSubviews {
    %orig;

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {

        self.backgroundColor = cleark10Color;
    } else {
        return %orig;
    }
}
%end

%hook _UIBackdropViewSettingsLightEmojiKeyboard

- (id)_defaultColorTintColorWithOpacity:(double)arg1 {
    %orig;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        return Nightk10Color;
    } else {
        return %orig;
    }
}

%end

%hook _UIBackdropViewSettingsLightKeyboard

- (id)_defaultColorTintColorWithOpacity:(double)arg1 {
    %orig;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        return Nightk10Color;
    } else {
        return %orig;
    }
}

%end

%hook WAChatBar


- (void)layoutSubviews {
    %orig;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        UIView *inputBoxView = MSHookIvar<UIView *>(self, "_inputBoxView");
        [inputBoxView setBackgroundColor: Nightk10ColorPP];

    } else {
        return %orig;
    }
}

%end
%hook UITableViewCellSelectedBackground

-(void)layoutSubviews {
    %orig;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.hidden = YES;
    } else {
        return %orig;
    }
}
%end


//%hook WAChatViewController
//
//
//- (void)layoutSubviews {
//    %orig;
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    if ([defaults boolForKey:@"Night10"]) {
//        [self settintColor: [UIColor whiteColor]];
//    } else {
//        return %orig;
//    }
//}
//
//%end

%hook WAChatMessagesTableView


- (void)layoutSubviews {
    %orig;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = [UIColor clearColor];
    } else {
        return %orig;
    }
}

%end
%hook WAChatMessagesTableViewCell


- (void)layoutSubviews {
    %orig;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = [UIColor clearColor];
    } else {
        return %orig;
    }
}

%end

%hook WAMessageBubbleTableViewCell


- (void)layoutSubviews {
    %orig;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = [UIColor clearColor];
    } else {
        return %orig;
    }
}

%end

%hook WAInputTextView


- (void)layoutSubviews {
    %orig;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.textColor = [UIColor whiteColor];
    } else {
        return %orig;
    }
}

%end
