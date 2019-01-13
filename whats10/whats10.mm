#line 1 "/Volumes/WD/MacBook/MyTweakXcode/whats10/whats10/whats10.xm"
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "imports.h"





#define greenColor [UIColor colorWithRed:1/255.0f green:152/255.0f blue:117/255.0f alpha:1.0f]

#define Nightk10Color [UIColor colorWithRed:0.21 green:0.21 blue:0.21 alpha:1.0]

#define Nightk10ColorPP [UIColor colorWithRed:0.15 green:0.15 blue:0.15 alpha:1.0]

#define k10Color [UIColor colorWithRed:0.42 green:0.42 blue:0.42 alpha:1.0]

#define cleark10Color [UIColor clearColor]
#define r9a9yk10Color [UIColor colorWithRed:0.78 green:0.78 blue:0.78 alpha:1.0]

#define JDL10Color [UIColor colorWithRed:1.00 green:0.60 blue:0.03 alpha:1.0]















#include <objc/message.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

__attribute__((unused)) static void _logos_register_hook$(Class _class, SEL _cmd, IMP _new, IMP *_old) {
unsigned int _count, _i;
Class _searchedClass = _class;
Method *_methods;
while (_searchedClass) {
_methods = class_copyMethodList(_searchedClass, &_count);
for (_i = 0; _i < _count; _i++) {
if (method_getName(_methods[_i]) == _cmd) {
if (_class == _searchedClass) {
*_old = method_getImplementation(_methods[_i]);
*_old = method_setImplementation(_methods[_i], _new);
} else {
class_addMethod(_class, _cmd, _new, method_getTypeEncoding(_methods[_i]));
}
free(_methods);
return;
}
}
free(_methods);
_searchedClass = class_getSuperclass(_searchedClass);
}
}
@class WAChatMessagesTableView; @class UILabel; @class UITableViewLabel; @class WAVideoTranscoder; @class WATableRow; @class WAMessageBubbleTableViewCell; @class WAMessage; @class WALabel; @class XMPPPresenceStanza; @class _UIStatusBarForegroundView; @class WAChatStorage; @class UITableViewCellSelectedBackground; @class _WADraggableInputContainerView; @class WAVideoTranscoderDescriptor; @class WAChatBar; @class WASettingsViewController; @class _WACustomBehaviorsTableView; @class _UIBackdropViewSettingsLightKeyboard; @class _UIBarBackground; @class UISearchBarTextField; @class XMPPConnectionMain; @class WATabBar; @class WABadgedLabel; @class WAChatManager; @class _WANoBlurNavigationBar; @class WAConversationHeaderView; @class _UINavigationBarLargeTitleView; @class WAServerProperties; @class UITableViewCell; @class _WADividerCellBackground; @class _UIBackdropViewSettingsLightEmojiKeyboard; @class UIDevice; @class WAInputTextView; @class UITableView; @class WAStatusViewerViewController; @class WAMultiSendEditableVideo; @class WAChatMessagesTableViewCell; 
static Class _logos_superclass$_ungrouped$_WANoBlurNavigationBar; static void (*_logos_orig$_ungrouped$_WANoBlurNavigationBar$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL _WANoBlurNavigationBar* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$WASettingsViewController; static void (*_logos_orig$_ungrouped$WASettingsViewController$viewDidLoad)(_LOGOS_SELF_TYPE_NORMAL WASettingsViewController* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$WAConversationHeaderView; static UIButton * (*_logos_orig$_ungrouped$WAConversationHeaderView$videoCallButton)(_LOGOS_SELF_TYPE_NORMAL WAConversationHeaderView* _LOGOS_SELF_CONST, SEL);static UIButton * (*_logos_orig$_ungrouped$WAConversationHeaderView$callButton)(_LOGOS_SELF_TYPE_NORMAL WAConversationHeaderView* _LOGOS_SELF_CONST, SEL);static void (*_logos_orig$_ungrouped$WAConversationHeaderView$callButtonTapped$)(_LOGOS_SELF_TYPE_NORMAL WAConversationHeaderView* _LOGOS_SELF_CONST, SEL, id);static Class _logos_supermetaclass$_ungrouped$XMPPPresenceStanza; static id (*_logos_meta_orig$_ungrouped$XMPPPresenceStanza$stanzaWithPresence$nickname$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, unsigned long long, id);static Class _logos_superclass$_ungrouped$WAChatManager; static void (*_logos_orig$_ungrouped$WAChatManager$changeOutgoingChatState$forJID$)(_LOGOS_SELF_TYPE_NORMAL WAChatManager* _LOGOS_SELF_CONST, SEL, unsigned long long, id);static Class _logos_superclass$_ungrouped$XMPPConnectionMain; static void (*_logos_orig$_ungrouped$XMPPConnectionMain$sendReadReceiptsForMessagesIfNeeded$)(_LOGOS_SELF_TYPE_NORMAL XMPPConnectionMain* _LOGOS_SELF_CONST, SEL, id);static Class _logos_superclass$_ungrouped$WAChatStorage; static void (*_logos_orig$_ungrouped$WAChatStorage$revokeIncomingMessage$updatedStanzaID$outOfOrder$revokeDate$deferAction$)(_LOGOS_SELF_TYPE_NORMAL WAChatStorage* _LOGOS_SELF_CONST, SEL, WAMessage *, id, _Bool, id, id);static Class _logos_superclass$_ungrouped$WAMessage; static _Bool (*_logos_orig$_ungrouped$WAMessage$canBeRevoked)(_LOGOS_SELF_TYPE_NORMAL WAMessage* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$WAStatusViewerViewController; static void (*_logos_orig$_ungrouped$WAStatusViewerViewController$statusViewerSectionViewDidFinishPresentingItem$)(_LOGOS_SELF_TYPE_NORMAL WAStatusViewerViewController* _LOGOS_SELF_CONST, SEL, id);static void (*_logos_orig$_ungrouped$WAStatusViewerViewController$addButtonsToActionSheet$forIncomingStatusMessage$)(_LOGOS_SELF_TYPE_NORMAL WAStatusViewerViewController* _LOGOS_SELF_CONST, SEL, WAActionSheetPresenter *, id);static Class _logos_superclass$_ungrouped$WAVideoTranscoderDescriptor; static _Bool (*_logos_orig$_ungrouped$WAVideoTranscoderDescriptor$_requiresFileSizeReduction)(_LOGOS_SELF_TYPE_NORMAL WAVideoTranscoderDescriptor* _LOGOS_SELF_CONST, SEL);static Class _logos_supermetaclass$_ungrouped$WAServerProperties; static unsigned long long (*_logos_meta_orig$_ungrouped$WAServerProperties$maxMediaSize)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$WAVideoTranscoder; static _Bool (*_logos_orig$_ungrouped$WAVideoTranscoder$isVideoEligibleForPassThrough)(_LOGOS_SELF_TYPE_NORMAL WAVideoTranscoder* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$WAMultiSendEditableVideo; static _Bool (*_logos_orig$_ungrouped$WAMultiSendEditableVideo$needsFileSizeReduction)(_LOGOS_SELF_TYPE_NORMAL WAMultiSendEditableVideo* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$UIDevice; static _Bool (*_logos_orig$_ungrouped$UIDevice$wa_isDeviceSupported)(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$_UINavigationBarLargeTitleView; static void (*_logos_orig$_ungrouped$_UINavigationBarLargeTitleView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarLargeTitleView* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$_UIStatusBarForegroundView; static void (*_logos_orig$_ungrouped$_UIStatusBarForegroundView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarForegroundView* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$_WADraggableInputContainerView; static void (*_logos_orig$_ungrouped$_WADraggableInputContainerView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL _WADraggableInputContainerView* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$_WACustomBehaviorsTableView; static void (*_logos_orig$_ungrouped$_WACustomBehaviorsTableView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL _WACustomBehaviorsTableView* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$_UIBarBackground; static void (*_logos_orig$_ungrouped$_UIBarBackground$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL _UIBarBackground* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$WATabBar; static void (*_logos_orig$_ungrouped$WATabBar$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL WATabBar* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$UITableViewCell; static void (*_logos_orig$_ungrouped$UITableViewCell$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$UITableView; static void (*_logos_orig$_ungrouped$UITableView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$UISearchBarTextField; static void (*_logos_orig$_ungrouped$UISearchBarTextField$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL UISearchBarTextField* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$UILabel; static void (*_logos_orig$_ungrouped$UILabel$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$WALabel; static void (*_logos_orig$_ungrouped$WALabel$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL WALabel* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$WABadgedLabel; static void (*_logos_orig$_ungrouped$WABadgedLabel$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL WABadgedLabel* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$UITableViewLabel; static void (*_logos_orig$_ungrouped$UITableViewLabel$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL UITableViewLabel* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$_WADividerCellBackground; static void (*_logos_orig$_ungrouped$_WADividerCellBackground$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL _WADividerCellBackground* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard; static id (*_logos_orig$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard$_defaultColorTintColorWithOpacity$)(_LOGOS_SELF_TYPE_NORMAL _UIBackdropViewSettingsLightEmojiKeyboard* _LOGOS_SELF_CONST, SEL, double);static Class _logos_superclass$_ungrouped$_UIBackdropViewSettingsLightKeyboard; static id (*_logos_orig$_ungrouped$_UIBackdropViewSettingsLightKeyboard$_defaultColorTintColorWithOpacity$)(_LOGOS_SELF_TYPE_NORMAL _UIBackdropViewSettingsLightKeyboard* _LOGOS_SELF_CONST, SEL, double);static Class _logos_superclass$_ungrouped$WAChatBar; static void (*_logos_orig$_ungrouped$WAChatBar$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL WAChatBar* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$UITableViewCellSelectedBackground; static void (*_logos_orig$_ungrouped$UITableViewCellSelectedBackground$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL UITableViewCellSelectedBackground* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$WAChatMessagesTableView; static void (*_logos_orig$_ungrouped$WAChatMessagesTableView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL WAChatMessagesTableView* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$WAChatMessagesTableViewCell; static void (*_logos_orig$_ungrouped$WAChatMessagesTableViewCell$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL WAChatMessagesTableViewCell* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$WAMessageBubbleTableViewCell; static void (*_logos_orig$_ungrouped$WAMessageBubbleTableViewCell$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL WAMessageBubbleTableViewCell* _LOGOS_SELF_CONST, SEL);static Class _logos_superclass$_ungrouped$WAInputTextView; static void (*_logos_orig$_ungrouped$WAInputTextView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL WAInputTextView* _LOGOS_SELF_CONST, SEL);
static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$UITableViewCell(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("UITableViewCell"); } return _klass; }static __inline__ __attribute__((always_inline)) __attribute__((unused)) Class _logos_static_class_lookup$WATableRow(void) { static Class _klass; if(!_klass) { _klass = objc_getClass("WATableRow"); } return _klass; }
#line 35 "/Volumes/WD/MacBook/MyTweakXcode/whats10/whats10/whats10.xm"


static void _logos_method$_ungrouped$_WANoBlurNavigationBar$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL _WANoBlurNavigationBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    (_logos_orig$_ungrouped$_WANoBlurNavigationBar$viewDidLoad ? _logos_orig$_ungrouped$_WANoBlurNavigationBar$viewDidLoad : (__typeof__(_logos_orig$_ungrouped$_WANoBlurNavigationBar$viewDidLoad))class_getMethodImplementation(_logos_superclass$_ungrouped$_WANoBlurNavigationBar, @selector(viewDidLoad)))(self, _cmd);

}







static void _logos_method$_ungrouped$WASettingsViewController$viewDidLoad(_LOGOS_SELF_TYPE_NORMAL WASettingsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    (_logos_orig$_ungrouped$WASettingsViewController$viewDidLoad ? _logos_orig$_ungrouped$WASettingsViewController$viewDidLoad : (__typeof__(_logos_orig$_ungrouped$WASettingsViewController$viewDidLoad))class_getMethodImplementation(_logos_superclass$_ungrouped$WASettingsViewController, @selector(viewDidLoad)))(self, _cmd);

    WATableSection *NewSection = [self addSectionAtIndex:1];

    WATableRow *NewRow = [[_logos_static_class_lookup$WATableRow() alloc] init];

    UITableViewCell *Cell = [[_logos_static_class_lookup$UITableViewCell() alloc] init];

    

    [Cell.textLabel setText:@"Whats10"];
    Cell.imageView.image = [UIImage imageNamed:@"/Library/Application Support/Whats10.bundle/Whats10Icon.png"];
    [Cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];

    [NewRow setHandler:^{
    

        FRPViewSection *headerSection = [FRPViewSection sectionWithHeight:70
                                        initBlock:^(UITableViewCell *cell) {
                                            
                                            
                                            cell.backgroundColor = [UIColor clearColor];

                                            UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
                                            label.font = [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:48];
                                            [label setText:@"Whats"];
                                            [label setTextColor:[UIColor blackColor]];
                                            
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
                                          
                                          [[cell.contentView viewWithTag:111] setFrame:CGRectMake(0, -5, cell.frame.size.width, 60)];
                                          [[cell.contentView viewWithTag:222] setFrame:CGRectMake(0, 30, cell.frame.size.width, 60)];
                                      }];

        
        FRPSection *SectionSetting = [FRPSection sectionWithTitle:@"" footer:@""];

        FRPNewLinkCell *LinkSettingPrivacy = [FRPNewLinkCell cellWithTitle:@"اعدادت الخصوصية" image:[UIImage imageNamed:@"/Library/Application Support/Whats10.bundle/scurtimg.png"] selectedBlock:^(id sender) {

            FRPSection *SettingPrivacy = [FRPSection sectionWithTitle:@"" footer:@""];

            [SettingPrivacy addCell:[FRPSwitchCell cellWithTitle:@" اخفاء الظهور" setting:[FRPSettings settingsWithKey:@"DisableOnline" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];

            [SettingPrivacy addCell:[FRPSwitchCell cellWithTitle:@" اخفاء جاري الكتابة" setting:[FRPSettings settingsWithKey:@"DisableTyping" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];

            [SettingPrivacy addCell:[FRPSwitchCell cellWithTitle:@" اخفاء علامات القراءة" setting:[FRPSettings settingsWithKey:@"DisableReadReceipt" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];

            FRPreferences *SettingPrivacyVC = [FRPreferences tableWithSections:@[SettingPrivacy] title:@"Privacy" tintColor:greenColor];
            [self.navigationController pushViewController:SettingPrivacyVC animated:YES];

        }];



        

        FRPNewLinkCell *LinkSettingMedia = [FRPNewLinkCell cellWithTitle:@"اعدادت الوسائط والتحميل" image:[UIImage imageNamed:@"/Library/Application Support/Whats10.bundle/MediaImg.png"] selectedBlock:^(id sender){

            FRPSection *SettingMedia = [FRPSection sectionWithTitle:@"" footer:@""];

            [SettingMedia addCell:[FRPSwitchCell cellWithTitle:@"حجم لامحدود للرفع" setting:[FRPSettings settingsWithKey:@"UnlimitedMedia" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];


            [SettingMedia addCell:[FRPSwitchCell cellWithTitle:@"تفعيل الحفظ من الحالة" setting:[FRPSettings settingsWithKey:@"StatusSaved" defaultValue:@NO] postNotification:nil changeBlock:^(id sender) { }]];



            FRPreferences *SettingMediaVC = [FRPreferences tableWithSections:@[SettingMedia] title:@"Media" tintColor:greenColor];
            [self.navigationController pushViewController:SettingMediaVC animated:YES];

        }];


        
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
                                                             
                                                         }];
        [SectionSetting addCell:LinkSettingPrivacy];
        [SectionSetting addCell:LinkSettingChat];
        [SectionSetting addCell:LinkSettingMedia];
        [SectionSetting addCell:switchDarkMood];



        
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
            
        }

    }];


    [NewRow initWithCell:Cell];

    [NewSection setRows:@[NewRow]];

}

static void _logos_method$_ungrouped$WASettingsViewController$ApplyCliced(_LOGOS_SELF_TYPE_NORMAL WASettingsViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    exit(0);
}







static UIButton * _logos_method$_ungrouped$WAConversationHeaderView$videoCallButton(_LOGOS_SELF_TYPE_NORMAL WAConversationHeaderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"hiddenvoiceCallButton"]) {
        UIButton *videoCallButton = (_logos_orig$_ungrouped$WAConversationHeaderView$videoCallButton ? _logos_orig$_ungrouped$WAConversationHeaderView$videoCallButton : (__typeof__(_logos_orig$_ungrouped$WAConversationHeaderView$videoCallButton))class_getMethodImplementation(_logos_superclass$_ungrouped$WAConversationHeaderView, @selector(videoCallButton)))(self, _cmd);
        videoCallButton.hidden = YES;
        return videoCallButton;
    } else {
        return (_logos_orig$_ungrouped$WAConversationHeaderView$videoCallButton ? _logos_orig$_ungrouped$WAConversationHeaderView$videoCallButton : (__typeof__(_logos_orig$_ungrouped$WAConversationHeaderView$videoCallButton))class_getMethodImplementation(_logos_superclass$_ungrouped$WAConversationHeaderView, @selector(videoCallButton)))(self, _cmd);
    }
}

static UIButton * _logos_method$_ungrouped$WAConversationHeaderView$callButton(_LOGOS_SELF_TYPE_NORMAL WAConversationHeaderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd){
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"hiddenvoiceCallButton"]) {
        UIButton *callButton = (_logos_orig$_ungrouped$WAConversationHeaderView$callButton ? _logos_orig$_ungrouped$WAConversationHeaderView$callButton : (__typeof__(_logos_orig$_ungrouped$WAConversationHeaderView$callButton))class_getMethodImplementation(_logos_superclass$_ungrouped$WAConversationHeaderView, @selector(callButton)))(self, _cmd);
        callButton.hidden = YES;
        return callButton;
    } else {
        return (_logos_orig$_ungrouped$WAConversationHeaderView$callButton ? _logos_orig$_ungrouped$WAConversationHeaderView$callButton : (__typeof__(_logos_orig$_ungrouped$WAConversationHeaderView$callButton))class_getMethodImplementation(_logos_superclass$_ungrouped$WAConversationHeaderView, @selector(callButton)))(self, _cmd);
    }
}


static void _logos_method$_ungrouped$WAConversationHeaderView$callButtonTapped$(_LOGOS_SELF_TYPE_NORMAL WAConversationHeaderView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1){

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"alertcallvoice"]) {

        SCLAlertView *SCalert = [[SCLAlertView alloc] initWithNewWindow];
        SCalert.backgroundType = SCLAlertViewBackgroundBlur;
        [SCalert addButton:@"WhatsApp Call" actionBlock:^ {
            (_logos_orig$_ungrouped$WAConversationHeaderView$callButtonTapped$ ? _logos_orig$_ungrouped$WAConversationHeaderView$callButtonTapped$ : (__typeof__(_logos_orig$_ungrouped$WAConversationHeaderView$callButtonTapped$))class_getMethodImplementation(_logos_superclass$_ungrouped$WAConversationHeaderView, @selector(callButtonTapped:)))(self, _cmd, arg1);
        }];

        [SCalert showNotice:@"Wha10" subTitle:@"You need Call ?" closeButtonTitle:@"Cancel" duration:0.0f];
    } else {
        return (_logos_orig$_ungrouped$WAConversationHeaderView$callButtonTapped$ ? _logos_orig$_ungrouped$WAConversationHeaderView$callButtonTapped$ : (__typeof__(_logos_orig$_ungrouped$WAConversationHeaderView$callButtonTapped$))class_getMethodImplementation(_logos_superclass$_ungrouped$WAConversationHeaderView, @selector(callButtonTapped:)))(self, _cmd, arg1);
    }

}











static id _logos_meta_method$_ungrouped$XMPPPresenceStanza$stanzaWithPresence$nickname$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned long long arg1, id arg2) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"DisableOnline"]) {
       return (_logos_meta_orig$_ungrouped$XMPPPresenceStanza$stanzaWithPresence$nickname$ ? _logos_meta_orig$_ungrouped$XMPPPresenceStanza$stanzaWithPresence$nickname$ : (__typeof__(_logos_meta_orig$_ungrouped$XMPPPresenceStanza$stanzaWithPresence$nickname$))class_getMethodImplementation(_logos_supermetaclass$_ungrouped$XMPPPresenceStanza, @selector(stanzaWithPresence:nickname:)))(self, _cmd, 3, arg2);
    } else {
        return (_logos_meta_orig$_ungrouped$XMPPPresenceStanza$stanzaWithPresence$nickname$ ? _logos_meta_orig$_ungrouped$XMPPPresenceStanza$stanzaWithPresence$nickname$ : (__typeof__(_logos_meta_orig$_ungrouped$XMPPPresenceStanza$stanzaWithPresence$nickname$))class_getMethodImplementation(_logos_supermetaclass$_ungrouped$XMPPPresenceStanza, @selector(stanzaWithPresence:nickname:)))(self, _cmd, arg1, arg2);
    }

}





    static void _logos_method$_ungrouped$WAChatManager$changeOutgoingChatState$forJID$(_LOGOS_SELF_TYPE_NORMAL WAChatManager* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, unsigned long long arg1, id arg2) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        if ([defaults boolForKey:@"DisableTyping"]) {
             return (_logos_orig$_ungrouped$WAChatManager$changeOutgoingChatState$forJID$ ? _logos_orig$_ungrouped$WAChatManager$changeOutgoingChatState$forJID$ : (__typeof__(_logos_orig$_ungrouped$WAChatManager$changeOutgoingChatState$forJID$))class_getMethodImplementation(_logos_superclass$_ungrouped$WAChatManager, @selector(changeOutgoingChatState:forJID:)))(self, _cmd, 0, arg2);
        } else {
            return (_logos_orig$_ungrouped$WAChatManager$changeOutgoingChatState$forJID$ ? _logos_orig$_ungrouped$WAChatManager$changeOutgoingChatState$forJID$ : (__typeof__(_logos_orig$_ungrouped$WAChatManager$changeOutgoingChatState$forJID$))class_getMethodImplementation(_logos_superclass$_ungrouped$WAChatManager, @selector(changeOutgoingChatState:forJID:)))(self, _cmd, arg1, arg2);
        }
    }




    static void _logos_method$_ungrouped$XMPPConnectionMain$sendReadReceiptsForMessagesIfNeeded$(_LOGOS_SELF_TYPE_NORMAL XMPPConnectionMain* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        if ([defaults boolForKey:@"DisableOnline"]) {
            return;
        } else {
            return (_logos_orig$_ungrouped$XMPPConnectionMain$sendReadReceiptsForMessagesIfNeeded$ ? _logos_orig$_ungrouped$XMPPConnectionMain$sendReadReceiptsForMessagesIfNeeded$ : (__typeof__(_logos_orig$_ungrouped$XMPPConnectionMain$sendReadReceiptsForMessagesIfNeeded$))class_getMethodImplementation(_logos_superclass$_ungrouped$XMPPConnectionMain, @selector(sendReadReceiptsForMessagesIfNeeded:)))(self, _cmd, arg1);
        }

    }








static void _logos_method$_ungrouped$WAChatStorage$revokeIncomingMessage$updatedStanzaID$outOfOrder$revokeDate$deferAction$(_LOGOS_SELF_TYPE_NORMAL WAChatStorage* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, WAMessage * message, id arg2, _Bool arg3, id arg4, id arg5) {
     NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Disabledeletmessage"]) {
        [message setText:[NSString stringWithFormat:@"k10 %@", [message text]]];
        return;

    } else {
        return (_logos_orig$_ungrouped$WAChatStorage$revokeIncomingMessage$updatedStanzaID$outOfOrder$revokeDate$deferAction$ ? _logos_orig$_ungrouped$WAChatStorage$revokeIncomingMessage$updatedStanzaID$outOfOrder$revokeDate$deferAction$ : (__typeof__(_logos_orig$_ungrouped$WAChatStorage$revokeIncomingMessage$updatedStanzaID$outOfOrder$revokeDate$deferAction$))class_getMethodImplementation(_logos_superclass$_ungrouped$WAChatStorage, @selector(revokeIncomingMessage:updatedStanzaID:outOfOrder:revokeDate:deferAction:)))(self, _cmd, message, arg2, arg3, arg4, arg5);
    }

}




static _Bool _logos_method$_ungrouped$WAMessage$canBeRevoked(_LOGOS_SELF_TYPE_NORMAL WAMessage* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Disabledeletmessage"]) {
        return true;

    } else {
        return (_logos_orig$_ungrouped$WAMessage$canBeRevoked ? _logos_orig$_ungrouped$WAMessage$canBeRevoked : (__typeof__(_logos_orig$_ungrouped$WAMessage$canBeRevoked))class_getMethodImplementation(_logos_superclass$_ungrouped$WAMessage, @selector(canBeRevoked)))(self, _cmd);
    }
}





static void _logos_method$_ungrouped$WAStatusViewerViewController$statusViewerSectionViewDidFinishPresentingItem$(_LOGOS_SELF_TYPE_NORMAL WAStatusViewerViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
    return;
}


static void _logos_method$_ungrouped$WAStatusViewerViewController$addButtonsToActionSheet$forIncomingStatusMessage$(_LOGOS_SELF_TYPE_NORMAL WAStatusViewerViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, WAActionSheetPresenter * actionSheet, id arg2) {
    [actionSheet addButtonWithTitle:@"حفظ" image:nil useBoldText:NO handler:^(UIAlertAction * action) {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        if ([defaults boolForKey:@"StatusSaved"]) {
           [self SaveThes];
        } else {
            return (_logos_orig$_ungrouped$WAStatusViewerViewController$addButtonsToActionSheet$forIncomingStatusMessage$ ? _logos_orig$_ungrouped$WAStatusViewerViewController$addButtonsToActionSheet$forIncomingStatusMessage$ : (__typeof__(_logos_orig$_ungrouped$WAStatusViewerViewController$addButtonsToActionSheet$forIncomingStatusMessage$))class_getMethodImplementation(_logos_superclass$_ungrouped$WAStatusViewerViewController, @selector(addButtonsToActionSheet:forIncomingStatusMessage:)))(self, _cmd, actionSheet, arg2);
        }



    }];

}


static void _logos_method$_ungrouped$WAStatusViewerViewController$SaveThes(_LOGOS_SELF_TYPE_NORMAL WAStatusViewerViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
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








static _Bool _logos_method$_ungrouped$WAVideoTranscoderDescriptor$_requiresFileSizeReduction(_LOGOS_SELF_TYPE_NORMAL WAVideoTranscoderDescriptor* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"UnlimitedMedia"]) {
        return FALSE;
    } else {
        return (_logos_orig$_ungrouped$WAVideoTranscoderDescriptor$_requiresFileSizeReduction ? _logos_orig$_ungrouped$WAVideoTranscoderDescriptor$_requiresFileSizeReduction : (__typeof__(_logos_orig$_ungrouped$WAVideoTranscoderDescriptor$_requiresFileSizeReduction))class_getMethodImplementation(_logos_superclass$_ungrouped$WAVideoTranscoderDescriptor, @selector(_requiresFileSizeReduction)))(self, _cmd);
    }
}



static unsigned long long _logos_meta_method$_ungrouped$WAServerProperties$maxMediaSize(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"UnlimitedMedia"]) {
        return 90000000000000000;
    } else {
        return (_logos_meta_orig$_ungrouped$WAServerProperties$maxMediaSize ? _logos_meta_orig$_ungrouped$WAServerProperties$maxMediaSize : (__typeof__(_logos_meta_orig$_ungrouped$WAServerProperties$maxMediaSize))class_getMethodImplementation(_logos_supermetaclass$_ungrouped$WAServerProperties, @selector(maxMediaSize)))(self, _cmd);
    }
}



static _Bool _logos_method$_ungrouped$WAVideoTranscoder$isVideoEligibleForPassThrough(_LOGOS_SELF_TYPE_NORMAL WAVideoTranscoder* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"UnlimitedMedia"]) {
        return TRUE;
    } else {
        return (_logos_orig$_ungrouped$WAVideoTranscoder$isVideoEligibleForPassThrough ? _logos_orig$_ungrouped$WAVideoTranscoder$isVideoEligibleForPassThrough : (__typeof__(_logos_orig$_ungrouped$WAVideoTranscoder$isVideoEligibleForPassThrough))class_getMethodImplementation(_logos_superclass$_ungrouped$WAVideoTranscoder, @selector(isVideoEligibleForPassThrough)))(self, _cmd);
    }
}



static _Bool _logos_method$_ungrouped$WAMultiSendEditableVideo$needsFileSizeReduction(_LOGOS_SELF_TYPE_NORMAL WAMultiSendEditableVideo* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"UnlimitedMedia"]) {
        return FALSE;
    } else {
        return (_logos_orig$_ungrouped$WAMultiSendEditableVideo$needsFileSizeReduction ? _logos_orig$_ungrouped$WAMultiSendEditableVideo$needsFileSizeReduction : (__typeof__(_logos_orig$_ungrouped$WAMultiSendEditableVideo$needsFileSizeReduction))class_getMethodImplementation(_logos_superclass$_ungrouped$WAMultiSendEditableVideo, @selector(needsFileSizeReduction)))(self, _cmd);
    }
}



static _Bool _logos_method$_ungrouped$UIDevice$wa_isDeviceSupported(_LOGOS_SELF_TYPE_NORMAL UIDevice* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return true;
}

















static void _logos_method$_ungrouped$_UINavigationBarLargeTitleView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _UINavigationBarLargeTitleView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
     (_logos_orig$_ungrouped$_UINavigationBarLargeTitleView$layoutSubviews ? _logos_orig$_ungrouped$_UINavigationBarLargeTitleView$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$_UINavigationBarLargeTitleView$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$_UINavigationBarLargeTitleView, @selector(layoutSubviews)))(self, _cmd);
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = Nightk10Color;
    } else {
        return (_logos_orig$_ungrouped$_UINavigationBarLargeTitleView$layoutSubviews ? _logos_orig$_ungrouped$_UINavigationBarLargeTitleView$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$_UINavigationBarLargeTitleView$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$_UINavigationBarLargeTitleView, @selector(layoutSubviews)))(self, _cmd);
    }
} 


static void _logos_method$_ungrouped$_UIStatusBarForegroundView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _UIStatusBarForegroundView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
     (_logos_orig$_ungrouped$_UIStatusBarForegroundView$layoutSubviews ? _logos_orig$_ungrouped$_UIStatusBarForegroundView$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$_UIStatusBarForegroundView$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$_UIStatusBarForegroundView, @selector(layoutSubviews)))(self, _cmd);
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = Nightk10Color;
    } else {
        return (_logos_orig$_ungrouped$_UIStatusBarForegroundView$layoutSubviews ? _logos_orig$_ungrouped$_UIStatusBarForegroundView$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$_UIStatusBarForegroundView$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$_UIStatusBarForegroundView, @selector(layoutSubviews)))(self, _cmd);
    }
 }




static void _logos_method$_ungrouped$_WADraggableInputContainerView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _WADraggableInputContainerView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
     (_logos_orig$_ungrouped$_WADraggableInputContainerView$layoutSubviews ? _logos_orig$_ungrouped$_WADraggableInputContainerView$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$_WADraggableInputContainerView$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$_WADraggableInputContainerView, @selector(layoutSubviews)))(self, _cmd);
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = Nightk10Color;
         self.tintColor = [UIColor whiteColor];
    } else {
        return (_logos_orig$_ungrouped$_WADraggableInputContainerView$layoutSubviews ? _logos_orig$_ungrouped$_WADraggableInputContainerView$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$_WADraggableInputContainerView$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$_WADraggableInputContainerView, @selector(layoutSubviews)))(self, _cmd);
    }
} 

static void _logos_method$_ungrouped$_WACustomBehaviorsTableView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _WACustomBehaviorsTableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
     (_logos_orig$_ungrouped$_WACustomBehaviorsTableView$layoutSubviews ? _logos_orig$_ungrouped$_WACustomBehaviorsTableView$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$_WACustomBehaviorsTableView$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$_WACustomBehaviorsTableView, @selector(layoutSubviews)))(self, _cmd);
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = Nightk10ColorPP;
    } else {
        return (_logos_orig$_ungrouped$_WACustomBehaviorsTableView$layoutSubviews ? _logos_orig$_ungrouped$_WACustomBehaviorsTableView$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$_WACustomBehaviorsTableView$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$_WACustomBehaviorsTableView, @selector(layoutSubviews)))(self, _cmd);
    }
 } 

static void _logos_method$_ungrouped$_UIBarBackground$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _UIBarBackground* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$_ungrouped$_UIBarBackground$layoutSubviews ? _logos_orig$_ungrouped$_UIBarBackground$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$_UIBarBackground$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$_UIBarBackground, @selector(layoutSubviews)))(self, _cmd);
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = Nightk10Color;
        self.tintColor = [UIColor whiteColor];

    } else {
        return (_logos_orig$_ungrouped$_UIBarBackground$layoutSubviews ? _logos_orig$_ungrouped$_UIBarBackground$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$_UIBarBackground$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$_UIBarBackground, @selector(layoutSubviews)))(self, _cmd);
    }
} 

static void _logos_method$_ungrouped$WATabBar$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL WATabBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
     (_logos_orig$_ungrouped$WATabBar$layoutSubviews ? _logos_orig$_ungrouped$WATabBar$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$WATabBar$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$WATabBar, @selector(layoutSubviews)))(self, _cmd);
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = Nightk10Color;
        self.tintColor = [UIColor whiteColor];
    } else {
        return (_logos_orig$_ungrouped$WATabBar$layoutSubviews ? _logos_orig$_ungrouped$WATabBar$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$WATabBar$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$WATabBar, @selector(layoutSubviews)))(self, _cmd);
    }
} 

static void _logos_method$_ungrouped$UITableViewCell$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL UITableViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
     (_logos_orig$_ungrouped$UITableViewCell$layoutSubviews ? _logos_orig$_ungrouped$UITableViewCell$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$UITableViewCell$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$UITableViewCell, @selector(layoutSubviews)))(self, _cmd);
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = Nightk10Color;
    } else {
        return (_logos_orig$_ungrouped$UITableViewCell$layoutSubviews ? _logos_orig$_ungrouped$UITableViewCell$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$UITableViewCell$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$UITableViewCell, @selector(layoutSubviews)))(self, _cmd);
    }
 } 

static void _logos_method$_ungrouped$UITableView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL UITableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
     (_logos_orig$_ungrouped$UITableView$layoutSubviews ? _logos_orig$_ungrouped$UITableView$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$UITableView$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$UITableView, @selector(layoutSubviews)))(self, _cmd);
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = Nightk10Color;
    } else {
        return (_logos_orig$_ungrouped$UITableView$layoutSubviews ? _logos_orig$_ungrouped$UITableView$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$UITableView$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$UITableView, @selector(layoutSubviews)))(self, _cmd);
    }
 }


static void _logos_method$_ungrouped$UISearchBarTextField$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL UISearchBarTextField* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
     (_logos_orig$_ungrouped$UISearchBarTextField$layoutSubviews ? _logos_orig$_ungrouped$UISearchBarTextField$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$UISearchBarTextField$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$UISearchBarTextField, @selector(layoutSubviews)))(self, _cmd);
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.textColor = [UIColor whiteColor];
        self.backgroundColor = Nightk10Color;
    } else {
        return (_logos_orig$_ungrouped$UISearchBarTextField$layoutSubviews ? _logos_orig$_ungrouped$UISearchBarTextField$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$UISearchBarTextField$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$UISearchBarTextField, @selector(layoutSubviews)))(self, _cmd);
    }
} 



static void _logos_method$_ungrouped$UILabel$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL UILabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$_ungrouped$UILabel$layoutSubviews ? _logos_orig$_ungrouped$UILabel$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$UILabel$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$UILabel, @selector(layoutSubviews)))(self, _cmd);

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.textColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor clearColor];
    } else {
        return (_logos_orig$_ungrouped$UILabel$layoutSubviews ? _logos_orig$_ungrouped$UILabel$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$UILabel$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$UILabel, @selector(layoutSubviews)))(self, _cmd);
    }
}





static void _logos_method$_ungrouped$WALabel$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL WALabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$_ungrouped$WALabel$layoutSubviews ? _logos_orig$_ungrouped$WALabel$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$WALabel$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$WALabel, @selector(layoutSubviews)))(self, _cmd);

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.textColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor clearColor];
    } else {
        return (_logos_orig$_ungrouped$WALabel$layoutSubviews ? _logos_orig$_ungrouped$WALabel$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$WALabel$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$WALabel, @selector(layoutSubviews)))(self, _cmd);
    }
}




static void _logos_method$_ungrouped$WABadgedLabel$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL WABadgedLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$_ungrouped$WABadgedLabel$layoutSubviews ? _logos_orig$_ungrouped$WABadgedLabel$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$WABadgedLabel$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$WABadgedLabel, @selector(layoutSubviews)))(self, _cmd);
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = [UIColor clearColor];
    } else {
        return (_logos_orig$_ungrouped$WABadgedLabel$layoutSubviews ? _logos_orig$_ungrouped$WABadgedLabel$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$WABadgedLabel$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$WABadgedLabel, @selector(layoutSubviews)))(self, _cmd);
    }
}




static void _logos_method$_ungrouped$UITableViewLabel$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL UITableViewLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$_ungrouped$UITableViewLabel$layoutSubviews ? _logos_orig$_ungrouped$UITableViewLabel$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$UITableViewLabel$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$UITableViewLabel, @selector(layoutSubviews)))(self, _cmd);

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.textColor = [UIColor whiteColor];
    } else {
        return (_logos_orig$_ungrouped$UITableViewLabel$layoutSubviews ? _logos_orig$_ungrouped$UITableViewLabel$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$UITableViewLabel$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$UITableViewLabel, @selector(layoutSubviews)))(self, _cmd);
    }
}




static void _logos_method$_ungrouped$_WADividerCellBackground$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL _WADividerCellBackground* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$_ungrouped$_WADividerCellBackground$layoutSubviews ? _logos_orig$_ungrouped$_WADividerCellBackground$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$_WADividerCellBackground$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$_WADividerCellBackground, @selector(layoutSubviews)))(self, _cmd);

    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {

        self.backgroundColor = cleark10Color;
    } else {
        return (_logos_orig$_ungrouped$_WADividerCellBackground$layoutSubviews ? _logos_orig$_ungrouped$_WADividerCellBackground$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$_WADividerCellBackground$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$_WADividerCellBackground, @selector(layoutSubviews)))(self, _cmd);
    }
}




static id _logos_method$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard$_defaultColorTintColorWithOpacity$(_LOGOS_SELF_TYPE_NORMAL _UIBackdropViewSettingsLightEmojiKeyboard* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    (_logos_orig$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard$_defaultColorTintColorWithOpacity$ ? _logos_orig$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard$_defaultColorTintColorWithOpacity$ : (__typeof__(_logos_orig$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard$_defaultColorTintColorWithOpacity$))class_getMethodImplementation(_logos_superclass$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard, @selector(_defaultColorTintColorWithOpacity:)))(self, _cmd, arg1);
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        return Nightk10Color;
    } else {
        return (_logos_orig$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard$_defaultColorTintColorWithOpacity$ ? _logos_orig$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard$_defaultColorTintColorWithOpacity$ : (__typeof__(_logos_orig$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard$_defaultColorTintColorWithOpacity$))class_getMethodImplementation(_logos_superclass$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard, @selector(_defaultColorTintColorWithOpacity:)))(self, _cmd, arg1);
    }
}





static id _logos_method$_ungrouped$_UIBackdropViewSettingsLightKeyboard$_defaultColorTintColorWithOpacity$(_LOGOS_SELF_TYPE_NORMAL _UIBackdropViewSettingsLightKeyboard* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
    (_logos_orig$_ungrouped$_UIBackdropViewSettingsLightKeyboard$_defaultColorTintColorWithOpacity$ ? _logos_orig$_ungrouped$_UIBackdropViewSettingsLightKeyboard$_defaultColorTintColorWithOpacity$ : (__typeof__(_logos_orig$_ungrouped$_UIBackdropViewSettingsLightKeyboard$_defaultColorTintColorWithOpacity$))class_getMethodImplementation(_logos_superclass$_ungrouped$_UIBackdropViewSettingsLightKeyboard, @selector(_defaultColorTintColorWithOpacity:)))(self, _cmd, arg1);
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        return Nightk10Color;
    } else {
        return (_logos_orig$_ungrouped$_UIBackdropViewSettingsLightKeyboard$_defaultColorTintColorWithOpacity$ ? _logos_orig$_ungrouped$_UIBackdropViewSettingsLightKeyboard$_defaultColorTintColorWithOpacity$ : (__typeof__(_logos_orig$_ungrouped$_UIBackdropViewSettingsLightKeyboard$_defaultColorTintColorWithOpacity$))class_getMethodImplementation(_logos_superclass$_ungrouped$_UIBackdropViewSettingsLightKeyboard, @selector(_defaultColorTintColorWithOpacity:)))(self, _cmd, arg1);
    }
}






static void _logos_method$_ungrouped$WAChatBar$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL WAChatBar* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$_ungrouped$WAChatBar$layoutSubviews ? _logos_orig$_ungrouped$WAChatBar$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$WAChatBar$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$WAChatBar, @selector(layoutSubviews)))(self, _cmd);
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        UIView *inputBoxView = MSHookIvar<UIView *>(self, "_inputBoxView");
        [inputBoxView setBackgroundColor: Nightk10ColorPP];

    } else {
        return (_logos_orig$_ungrouped$WAChatBar$layoutSubviews ? _logos_orig$_ungrouped$WAChatBar$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$WAChatBar$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$WAChatBar, @selector(layoutSubviews)))(self, _cmd);
    }
}




static void _logos_method$_ungrouped$UITableViewCellSelectedBackground$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL UITableViewCellSelectedBackground* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$_ungrouped$UITableViewCellSelectedBackground$layoutSubviews ? _logos_orig$_ungrouped$UITableViewCellSelectedBackground$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$UITableViewCellSelectedBackground$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$UITableViewCellSelectedBackground, @selector(layoutSubviews)))(self, _cmd);
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.hidden = YES;
    } else {
        return (_logos_orig$_ungrouped$UITableViewCellSelectedBackground$layoutSubviews ? _logos_orig$_ungrouped$UITableViewCellSelectedBackground$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$UITableViewCellSelectedBackground$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$UITableViewCellSelectedBackground, @selector(layoutSubviews)))(self, _cmd);
    }
}





















static void _logos_method$_ungrouped$WAChatMessagesTableView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL WAChatMessagesTableView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$_ungrouped$WAChatMessagesTableView$layoutSubviews ? _logos_orig$_ungrouped$WAChatMessagesTableView$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$WAChatMessagesTableView$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$WAChatMessagesTableView, @selector(layoutSubviews)))(self, _cmd);
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = [UIColor clearColor];
    } else {
        return (_logos_orig$_ungrouped$WAChatMessagesTableView$layoutSubviews ? _logos_orig$_ungrouped$WAChatMessagesTableView$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$WAChatMessagesTableView$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$WAChatMessagesTableView, @selector(layoutSubviews)))(self, _cmd);
    }
}





static void _logos_method$_ungrouped$WAChatMessagesTableViewCell$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL WAChatMessagesTableViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$_ungrouped$WAChatMessagesTableViewCell$layoutSubviews ? _logos_orig$_ungrouped$WAChatMessagesTableViewCell$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$WAChatMessagesTableViewCell$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$WAChatMessagesTableViewCell, @selector(layoutSubviews)))(self, _cmd);
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = [UIColor clearColor];
    } else {
        return (_logos_orig$_ungrouped$WAChatMessagesTableViewCell$layoutSubviews ? _logos_orig$_ungrouped$WAChatMessagesTableViewCell$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$WAChatMessagesTableViewCell$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$WAChatMessagesTableViewCell, @selector(layoutSubviews)))(self, _cmd);
    }
}






static void _logos_method$_ungrouped$WAMessageBubbleTableViewCell$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL WAMessageBubbleTableViewCell* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$_ungrouped$WAMessageBubbleTableViewCell$layoutSubviews ? _logos_orig$_ungrouped$WAMessageBubbleTableViewCell$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$WAMessageBubbleTableViewCell$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$WAMessageBubbleTableViewCell, @selector(layoutSubviews)))(self, _cmd);
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.backgroundColor = [UIColor clearColor];
    } else {
        return (_logos_orig$_ungrouped$WAMessageBubbleTableViewCell$layoutSubviews ? _logos_orig$_ungrouped$WAMessageBubbleTableViewCell$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$WAMessageBubbleTableViewCell$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$WAMessageBubbleTableViewCell, @selector(layoutSubviews)))(self, _cmd);
    }
}






static void _logos_method$_ungrouped$WAInputTextView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL WAInputTextView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    (_logos_orig$_ungrouped$WAInputTextView$layoutSubviews ? _logos_orig$_ungrouped$WAInputTextView$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$WAInputTextView$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$WAInputTextView, @selector(layoutSubviews)))(self, _cmd);
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    if ([defaults boolForKey:@"Night10"]) {
        self.textColor = [UIColor whiteColor];
    } else {
        return (_logos_orig$_ungrouped$WAInputTextView$layoutSubviews ? _logos_orig$_ungrouped$WAInputTextView$layoutSubviews : (__typeof__(_logos_orig$_ungrouped$WAInputTextView$layoutSubviews))class_getMethodImplementation(_logos_superclass$_ungrouped$WAInputTextView, @selector(layoutSubviews)))(self, _cmd);
    }
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$_WANoBlurNavigationBar = objc_getClass("_WANoBlurNavigationBar"); _logos_superclass$_ungrouped$_WANoBlurNavigationBar = class_getSuperclass(_logos_class$_ungrouped$_WANoBlurNavigationBar); { _logos_register_hook$(_logos_class$_ungrouped$_WANoBlurNavigationBar, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$_WANoBlurNavigationBar$viewDidLoad, (IMP *)&_logos_orig$_ungrouped$_WANoBlurNavigationBar$viewDidLoad);}Class _logos_class$_ungrouped$WASettingsViewController = objc_getClass("WASettingsViewController"); _logos_superclass$_ungrouped$WASettingsViewController = class_getSuperclass(_logos_class$_ungrouped$WASettingsViewController); { _logos_register_hook$(_logos_class$_ungrouped$WASettingsViewController, @selector(viewDidLoad), (IMP)&_logos_method$_ungrouped$WASettingsViewController$viewDidLoad, (IMP *)&_logos_orig$_ungrouped$WASettingsViewController$viewDidLoad);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$WASettingsViewController, @selector(ApplyCliced), (IMP)&_logos_method$_ungrouped$WASettingsViewController$ApplyCliced, _typeEncoding); }Class _logos_class$_ungrouped$WAConversationHeaderView = objc_getClass("WAConversationHeaderView"); _logos_superclass$_ungrouped$WAConversationHeaderView = class_getSuperclass(_logos_class$_ungrouped$WAConversationHeaderView); { _logos_register_hook$(_logos_class$_ungrouped$WAConversationHeaderView, @selector(videoCallButton), (IMP)&_logos_method$_ungrouped$WAConversationHeaderView$videoCallButton, (IMP *)&_logos_orig$_ungrouped$WAConversationHeaderView$videoCallButton);}{ _logos_register_hook$(_logos_class$_ungrouped$WAConversationHeaderView, @selector(callButton), (IMP)&_logos_method$_ungrouped$WAConversationHeaderView$callButton, (IMP *)&_logos_orig$_ungrouped$WAConversationHeaderView$callButton);}{ _logos_register_hook$(_logos_class$_ungrouped$WAConversationHeaderView, @selector(callButtonTapped:), (IMP)&_logos_method$_ungrouped$WAConversationHeaderView$callButtonTapped$, (IMP *)&_logos_orig$_ungrouped$WAConversationHeaderView$callButtonTapped$);}Class _logos_class$_ungrouped$XMPPPresenceStanza = objc_getClass("XMPPPresenceStanza"); Class _logos_metaclass$_ungrouped$XMPPPresenceStanza = object_getClass(_logos_class$_ungrouped$XMPPPresenceStanza); _logos_supermetaclass$_ungrouped$XMPPPresenceStanza = class_getSuperclass(_logos_metaclass$_ungrouped$XMPPPresenceStanza); { _logos_register_hook$(_logos_metaclass$_ungrouped$XMPPPresenceStanza, @selector(stanzaWithPresence:nickname:), (IMP)&_logos_meta_method$_ungrouped$XMPPPresenceStanza$stanzaWithPresence$nickname$, (IMP *)&_logos_meta_orig$_ungrouped$XMPPPresenceStanza$stanzaWithPresence$nickname$);}Class _logos_class$_ungrouped$WAChatManager = objc_getClass("WAChatManager"); _logos_superclass$_ungrouped$WAChatManager = class_getSuperclass(_logos_class$_ungrouped$WAChatManager); { _logos_register_hook$(_logos_class$_ungrouped$WAChatManager, @selector(changeOutgoingChatState:forJID:), (IMP)&_logos_method$_ungrouped$WAChatManager$changeOutgoingChatState$forJID$, (IMP *)&_logos_orig$_ungrouped$WAChatManager$changeOutgoingChatState$forJID$);}Class _logos_class$_ungrouped$XMPPConnectionMain = objc_getClass("XMPPConnectionMain"); _logos_superclass$_ungrouped$XMPPConnectionMain = class_getSuperclass(_logos_class$_ungrouped$XMPPConnectionMain); { _logos_register_hook$(_logos_class$_ungrouped$XMPPConnectionMain, @selector(sendReadReceiptsForMessagesIfNeeded:), (IMP)&_logos_method$_ungrouped$XMPPConnectionMain$sendReadReceiptsForMessagesIfNeeded$, (IMP *)&_logos_orig$_ungrouped$XMPPConnectionMain$sendReadReceiptsForMessagesIfNeeded$);}Class _logos_class$_ungrouped$WAChatStorage = objc_getClass("WAChatStorage"); _logos_superclass$_ungrouped$WAChatStorage = class_getSuperclass(_logos_class$_ungrouped$WAChatStorage); { _logos_register_hook$(_logos_class$_ungrouped$WAChatStorage, @selector(revokeIncomingMessage:updatedStanzaID:outOfOrder:revokeDate:deferAction:), (IMP)&_logos_method$_ungrouped$WAChatStorage$revokeIncomingMessage$updatedStanzaID$outOfOrder$revokeDate$deferAction$, (IMP *)&_logos_orig$_ungrouped$WAChatStorage$revokeIncomingMessage$updatedStanzaID$outOfOrder$revokeDate$deferAction$);}Class _logos_class$_ungrouped$WAMessage = objc_getClass("WAMessage"); _logos_superclass$_ungrouped$WAMessage = class_getSuperclass(_logos_class$_ungrouped$WAMessage); { _logos_register_hook$(_logos_class$_ungrouped$WAMessage, @selector(canBeRevoked), (IMP)&_logos_method$_ungrouped$WAMessage$canBeRevoked, (IMP *)&_logos_orig$_ungrouped$WAMessage$canBeRevoked);}Class _logos_class$_ungrouped$WAStatusViewerViewController = objc_getClass("WAStatusViewerViewController"); _logos_superclass$_ungrouped$WAStatusViewerViewController = class_getSuperclass(_logos_class$_ungrouped$WAStatusViewerViewController); { _logos_register_hook$(_logos_class$_ungrouped$WAStatusViewerViewController, @selector(statusViewerSectionViewDidFinishPresentingItem:), (IMP)&_logos_method$_ungrouped$WAStatusViewerViewController$statusViewerSectionViewDidFinishPresentingItem$, (IMP *)&_logos_orig$_ungrouped$WAStatusViewerViewController$statusViewerSectionViewDidFinishPresentingItem$);}{ _logos_register_hook$(_logos_class$_ungrouped$WAStatusViewerViewController, @selector(addButtonsToActionSheet:forIncomingStatusMessage:), (IMP)&_logos_method$_ungrouped$WAStatusViewerViewController$addButtonsToActionSheet$forIncomingStatusMessage$, (IMP *)&_logos_orig$_ungrouped$WAStatusViewerViewController$addButtonsToActionSheet$forIncomingStatusMessage$);}{ char _typeEncoding[1024]; unsigned int i = 0; _typeEncoding[i] = 'v'; i += 1; _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$WAStatusViewerViewController, @selector(SaveThes), (IMP)&_logos_method$_ungrouped$WAStatusViewerViewController$SaveThes, _typeEncoding); }Class _logos_class$_ungrouped$WAVideoTranscoderDescriptor = objc_getClass("WAVideoTranscoderDescriptor"); _logos_superclass$_ungrouped$WAVideoTranscoderDescriptor = class_getSuperclass(_logos_class$_ungrouped$WAVideoTranscoderDescriptor); { _logos_register_hook$(_logos_class$_ungrouped$WAVideoTranscoderDescriptor, @selector(_requiresFileSizeReduction), (IMP)&_logos_method$_ungrouped$WAVideoTranscoderDescriptor$_requiresFileSizeReduction, (IMP *)&_logos_orig$_ungrouped$WAVideoTranscoderDescriptor$_requiresFileSizeReduction);}Class _logos_class$_ungrouped$WAServerProperties = objc_getClass("WAServerProperties"); Class _logos_metaclass$_ungrouped$WAServerProperties = object_getClass(_logos_class$_ungrouped$WAServerProperties); _logos_supermetaclass$_ungrouped$WAServerProperties = class_getSuperclass(_logos_metaclass$_ungrouped$WAServerProperties); { _logos_register_hook$(_logos_metaclass$_ungrouped$WAServerProperties, @selector(maxMediaSize), (IMP)&_logos_meta_method$_ungrouped$WAServerProperties$maxMediaSize, (IMP *)&_logos_meta_orig$_ungrouped$WAServerProperties$maxMediaSize);}Class _logos_class$_ungrouped$WAVideoTranscoder = objc_getClass("WAVideoTranscoder"); _logos_superclass$_ungrouped$WAVideoTranscoder = class_getSuperclass(_logos_class$_ungrouped$WAVideoTranscoder); { _logos_register_hook$(_logos_class$_ungrouped$WAVideoTranscoder, @selector(isVideoEligibleForPassThrough), (IMP)&_logos_method$_ungrouped$WAVideoTranscoder$isVideoEligibleForPassThrough, (IMP *)&_logos_orig$_ungrouped$WAVideoTranscoder$isVideoEligibleForPassThrough);}Class _logos_class$_ungrouped$WAMultiSendEditableVideo = objc_getClass("WAMultiSendEditableVideo"); _logos_superclass$_ungrouped$WAMultiSendEditableVideo = class_getSuperclass(_logos_class$_ungrouped$WAMultiSendEditableVideo); { _logos_register_hook$(_logos_class$_ungrouped$WAMultiSendEditableVideo, @selector(needsFileSizeReduction), (IMP)&_logos_method$_ungrouped$WAMultiSendEditableVideo$needsFileSizeReduction, (IMP *)&_logos_orig$_ungrouped$WAMultiSendEditableVideo$needsFileSizeReduction);}Class _logos_class$_ungrouped$UIDevice = objc_getClass("UIDevice"); _logos_superclass$_ungrouped$UIDevice = class_getSuperclass(_logos_class$_ungrouped$UIDevice); { _logos_register_hook$(_logos_class$_ungrouped$UIDevice, @selector(wa_isDeviceSupported), (IMP)&_logos_method$_ungrouped$UIDevice$wa_isDeviceSupported, (IMP *)&_logos_orig$_ungrouped$UIDevice$wa_isDeviceSupported);}Class _logos_class$_ungrouped$_UINavigationBarLargeTitleView = objc_getClass("_UINavigationBarLargeTitleView"); _logos_superclass$_ungrouped$_UINavigationBarLargeTitleView = class_getSuperclass(_logos_class$_ungrouped$_UINavigationBarLargeTitleView); { _logos_register_hook$(_logos_class$_ungrouped$_UINavigationBarLargeTitleView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$_UINavigationBarLargeTitleView$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$_UINavigationBarLargeTitleView$layoutSubviews);}Class _logos_class$_ungrouped$_UIStatusBarForegroundView = objc_getClass("_UIStatusBarForegroundView"); _logos_superclass$_ungrouped$_UIStatusBarForegroundView = class_getSuperclass(_logos_class$_ungrouped$_UIStatusBarForegroundView); { _logos_register_hook$(_logos_class$_ungrouped$_UIStatusBarForegroundView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$_UIStatusBarForegroundView$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$_UIStatusBarForegroundView$layoutSubviews);}Class _logos_class$_ungrouped$_WADraggableInputContainerView = objc_getClass("_WADraggableInputContainerView"); _logos_superclass$_ungrouped$_WADraggableInputContainerView = class_getSuperclass(_logos_class$_ungrouped$_WADraggableInputContainerView); { _logos_register_hook$(_logos_class$_ungrouped$_WADraggableInputContainerView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$_WADraggableInputContainerView$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$_WADraggableInputContainerView$layoutSubviews);}Class _logos_class$_ungrouped$_WACustomBehaviorsTableView = objc_getClass("_WACustomBehaviorsTableView"); _logos_superclass$_ungrouped$_WACustomBehaviorsTableView = class_getSuperclass(_logos_class$_ungrouped$_WACustomBehaviorsTableView); { _logos_register_hook$(_logos_class$_ungrouped$_WACustomBehaviorsTableView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$_WACustomBehaviorsTableView$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$_WACustomBehaviorsTableView$layoutSubviews);}Class _logos_class$_ungrouped$_UIBarBackground = objc_getClass("_UIBarBackground"); _logos_superclass$_ungrouped$_UIBarBackground = class_getSuperclass(_logos_class$_ungrouped$_UIBarBackground); { _logos_register_hook$(_logos_class$_ungrouped$_UIBarBackground, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$_UIBarBackground$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$_UIBarBackground$layoutSubviews);}Class _logos_class$_ungrouped$WATabBar = objc_getClass("WATabBar"); _logos_superclass$_ungrouped$WATabBar = class_getSuperclass(_logos_class$_ungrouped$WATabBar); { _logos_register_hook$(_logos_class$_ungrouped$WATabBar, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$WATabBar$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$WATabBar$layoutSubviews);}Class _logos_class$_ungrouped$UITableViewCell = objc_getClass("UITableViewCell"); _logos_superclass$_ungrouped$UITableViewCell = class_getSuperclass(_logos_class$_ungrouped$UITableViewCell); { _logos_register_hook$(_logos_class$_ungrouped$UITableViewCell, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$UITableViewCell$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$UITableViewCell$layoutSubviews);}Class _logos_class$_ungrouped$UITableView = objc_getClass("UITableView"); _logos_superclass$_ungrouped$UITableView = class_getSuperclass(_logos_class$_ungrouped$UITableView); { _logos_register_hook$(_logos_class$_ungrouped$UITableView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$UITableView$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$UITableView$layoutSubviews);}Class _logos_class$_ungrouped$UISearchBarTextField = objc_getClass("UISearchBarTextField"); _logos_superclass$_ungrouped$UISearchBarTextField = class_getSuperclass(_logos_class$_ungrouped$UISearchBarTextField); { _logos_register_hook$(_logos_class$_ungrouped$UISearchBarTextField, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$UISearchBarTextField$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$UISearchBarTextField$layoutSubviews);}Class _logos_class$_ungrouped$UILabel = objc_getClass("UILabel"); _logos_superclass$_ungrouped$UILabel = class_getSuperclass(_logos_class$_ungrouped$UILabel); { _logos_register_hook$(_logos_class$_ungrouped$UILabel, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$UILabel$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$UILabel$layoutSubviews);}Class _logos_class$_ungrouped$WALabel = objc_getClass("WALabel"); _logos_superclass$_ungrouped$WALabel = class_getSuperclass(_logos_class$_ungrouped$WALabel); { _logos_register_hook$(_logos_class$_ungrouped$WALabel, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$WALabel$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$WALabel$layoutSubviews);}Class _logos_class$_ungrouped$WABadgedLabel = objc_getClass("WABadgedLabel"); _logos_superclass$_ungrouped$WABadgedLabel = class_getSuperclass(_logos_class$_ungrouped$WABadgedLabel); { _logos_register_hook$(_logos_class$_ungrouped$WABadgedLabel, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$WABadgedLabel$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$WABadgedLabel$layoutSubviews);}Class _logos_class$_ungrouped$UITableViewLabel = objc_getClass("UITableViewLabel"); _logos_superclass$_ungrouped$UITableViewLabel = class_getSuperclass(_logos_class$_ungrouped$UITableViewLabel); { _logos_register_hook$(_logos_class$_ungrouped$UITableViewLabel, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$UITableViewLabel$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$UITableViewLabel$layoutSubviews);}Class _logos_class$_ungrouped$_WADividerCellBackground = objc_getClass("_WADividerCellBackground"); _logos_superclass$_ungrouped$_WADividerCellBackground = class_getSuperclass(_logos_class$_ungrouped$_WADividerCellBackground); { _logos_register_hook$(_logos_class$_ungrouped$_WADividerCellBackground, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$_WADividerCellBackground$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$_WADividerCellBackground$layoutSubviews);}Class _logos_class$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard = objc_getClass("_UIBackdropViewSettingsLightEmojiKeyboard"); _logos_superclass$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard = class_getSuperclass(_logos_class$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard); { _logos_register_hook$(_logos_class$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard, @selector(_defaultColorTintColorWithOpacity:), (IMP)&_logos_method$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard$_defaultColorTintColorWithOpacity$, (IMP *)&_logos_orig$_ungrouped$_UIBackdropViewSettingsLightEmojiKeyboard$_defaultColorTintColorWithOpacity$);}Class _logos_class$_ungrouped$_UIBackdropViewSettingsLightKeyboard = objc_getClass("_UIBackdropViewSettingsLightKeyboard"); _logos_superclass$_ungrouped$_UIBackdropViewSettingsLightKeyboard = class_getSuperclass(_logos_class$_ungrouped$_UIBackdropViewSettingsLightKeyboard); { _logos_register_hook$(_logos_class$_ungrouped$_UIBackdropViewSettingsLightKeyboard, @selector(_defaultColorTintColorWithOpacity:), (IMP)&_logos_method$_ungrouped$_UIBackdropViewSettingsLightKeyboard$_defaultColorTintColorWithOpacity$, (IMP *)&_logos_orig$_ungrouped$_UIBackdropViewSettingsLightKeyboard$_defaultColorTintColorWithOpacity$);}Class _logos_class$_ungrouped$WAChatBar = objc_getClass("WAChatBar"); _logos_superclass$_ungrouped$WAChatBar = class_getSuperclass(_logos_class$_ungrouped$WAChatBar); { _logos_register_hook$(_logos_class$_ungrouped$WAChatBar, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$WAChatBar$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$WAChatBar$layoutSubviews);}Class _logos_class$_ungrouped$UITableViewCellSelectedBackground = objc_getClass("UITableViewCellSelectedBackground"); _logos_superclass$_ungrouped$UITableViewCellSelectedBackground = class_getSuperclass(_logos_class$_ungrouped$UITableViewCellSelectedBackground); { _logos_register_hook$(_logos_class$_ungrouped$UITableViewCellSelectedBackground, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$UITableViewCellSelectedBackground$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$UITableViewCellSelectedBackground$layoutSubviews);}Class _logos_class$_ungrouped$WAChatMessagesTableView = objc_getClass("WAChatMessagesTableView"); _logos_superclass$_ungrouped$WAChatMessagesTableView = class_getSuperclass(_logos_class$_ungrouped$WAChatMessagesTableView); { _logos_register_hook$(_logos_class$_ungrouped$WAChatMessagesTableView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$WAChatMessagesTableView$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$WAChatMessagesTableView$layoutSubviews);}Class _logos_class$_ungrouped$WAChatMessagesTableViewCell = objc_getClass("WAChatMessagesTableViewCell"); _logos_superclass$_ungrouped$WAChatMessagesTableViewCell = class_getSuperclass(_logos_class$_ungrouped$WAChatMessagesTableViewCell); { _logos_register_hook$(_logos_class$_ungrouped$WAChatMessagesTableViewCell, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$WAChatMessagesTableViewCell$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$WAChatMessagesTableViewCell$layoutSubviews);}Class _logos_class$_ungrouped$WAMessageBubbleTableViewCell = objc_getClass("WAMessageBubbleTableViewCell"); _logos_superclass$_ungrouped$WAMessageBubbleTableViewCell = class_getSuperclass(_logos_class$_ungrouped$WAMessageBubbleTableViewCell); { _logos_register_hook$(_logos_class$_ungrouped$WAMessageBubbleTableViewCell, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$WAMessageBubbleTableViewCell$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$WAMessageBubbleTableViewCell$layoutSubviews);}Class _logos_class$_ungrouped$WAInputTextView = objc_getClass("WAInputTextView"); _logos_superclass$_ungrouped$WAInputTextView = class_getSuperclass(_logos_class$_ungrouped$WAInputTextView); { _logos_register_hook$(_logos_class$_ungrouped$WAInputTextView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$WAInputTextView$layoutSubviews, (IMP *)&_logos_orig$_ungrouped$WAInputTextView$layoutSubviews);}} }
#line 741 "/Volumes/WD/MacBook/MyTweakXcode/whats10/whats10/whats10.xm"
