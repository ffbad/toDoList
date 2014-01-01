//
//  AppController.h
//  toDoList
//
//  Created by 王 芳 on 13-12-19.
//  Copyright (c) 2013年 王 芳. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppController : NSObject
{
    IBOutlet NSTextField * textField;
    IBOutlet NSButton * addButton;
    IBOutlet NSTableView * tableView;
    NSMutableArray * toDoList;
}

-(IBAction)saveIt:(id)sender;

@end
