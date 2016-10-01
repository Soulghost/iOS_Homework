//
//  main.m
//  Cal_ZM
//
//  Created by soulghost on 1/10/2016.
//  Copyright © 2016 zhanmin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZMCal.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [ZMCal printCalendarWithArgc:argc argv:argv];
    }
    return 0;
}
