//
//     Generated by class-dump 3.5 (64 bit) (Debug version compiled Nov  9 2017 20:17:28).
//
//     class-dump is Copyright (C) 1997-1998, 2000-2001, 2004-2015 by Steve Nygard.
//

#import "WATableViewController.h"

@class NSArray, WACachedCopyMutableArray;

__attribute__((visibility("hidden")))
@interface WAStaticTableViewController : WATableViewController
{
    WACachedCopyMutableArray *_sections;
}


- (void)deselectActiveCell;
- (void)wa_fontSizeDidChange;
- (id)tableView:(id)arg1 actionCellForIndexPath:(id)arg2;
- (void)tableView:(id)arg1 performAction:(SEL)arg2 forRowAtIndexPath:(id)arg3 withSender:(id)arg4;
- (_Bool)tableView:(id)arg1 canPerformAction:(SEL)arg2 forRowAtIndexPath:(id)arg3 withSender:(id)arg4;
- (_Bool)tableView:(id)arg1 shouldShowMenuForRowAtIndexPath:(id)arg2;
- (void)tableView:(id)arg1 commitEditingStyle:(long long)arg2 forRowAtIndexPath:(id)arg3;
- (_Bool)tableView:(id)arg1 canEditRowAtIndexPath:(id)arg2;
- (void)tableView:(id)arg1 didSelectRowAtIndexPath:(id)arg2;
- (id)tableView:(id)arg1 willSelectRowAtIndexPath:(id)arg2;
- (id)tableView:(id)arg1 titleForFooterInSection:(long long)arg2;
- (id)tableView:(id)arg1 titleForHeaderInSection:(long long)arg2;
- (id)tableView:(id)arg1 cellForRowAtIndexPath:(id)arg2;
- (double)tableView:(id)arg1 heightForRowAtIndexPath:(id)arg2;
- (long long)tableView:(id)arg1 numberOfRowsInSection:(long long)arg2;
- (long long)numberOfSectionsInTableView:(id)arg1;
- (id)rowAtIndexPath:(id)arg1;
- (void)deleteSection:(id)arg1 withRowAnimation:(long long)arg2;
- (unsigned long long)deleteSection:(id)arg1;
- (void)insertSection:(id)arg1 atIndex:(long long)arg2 withRowAnimation:(long long)arg3;
- (void)deleteRow:(id)arg1 withRowAnimation:(long long)arg2;
- (void)insertRow:(id)arg1 atIndexPath:(id)arg2 withRowAnimation:(long long)arg3;
- (id)addSectionAtIndex:(long long)arg1;
- (id)addSection;
- (void)setupTableView;
- (void)internalReload;
- (void)reload;
- (void)viewDidLoad;
@property(readonly, copy, nonatomic) NSArray *sections;
- (id)initWithStyle:(long long)arg1;

@end

