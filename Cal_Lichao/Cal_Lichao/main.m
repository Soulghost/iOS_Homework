//
//  main.m
//  Cal_Lichao
//
//  Created by soulghost on 1/10/2016.
//  Copyright © 2016 lichao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SLCal.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        printf("%s\n",[SLCal calendarWithArgc:argc argv:argv].UTF8String);
    }
    return 0;
}
