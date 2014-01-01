//
//  AppController.m
//  toDoList
//
//  Created by 王 芳 on 13-12-19.
//  Copyright (c) 2013年 王 芳. All rights reserved.
//

#import "AppController.h"

@implementation AppController : NSObject


-(id)init
{
    if (![super init])
    {
        return nil;
    }
    
    toDoList = [[NSMutableArray alloc] init];
    
    NSLog(@"init");
    
    return self;
}

-(IBAction)saveIt:(id)sender
{
    NSString *string = [textField stringValue];
    
    if ([string length] == 0)
    {
        return;
    }
    
    NSLog(@"input is: %@", string);
    
    [toDoList insertObject:string atIndex:pow];
}


-(NSInteger)numberOfRowsInTableView:(NSMutableArray *)tv
{
    return [toDoList count];
}

-(id)tableView:(NSMutableArray *)tv
    objectValueForTableColumn:(NSTableColumn *)tableColumn
                        row:(NSInteger)row
{
    NSString *v = [toDoList objectAtIndex:row];
    return v;
}

@end
