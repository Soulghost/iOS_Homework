//
//  main.m
//  Cal_Dakui
//
//  Created by soulghost on 1/10/2016.
//  Copyright © 2016 dakui. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DKCal.h"

void dealParams(int argc, const char ** argv);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        dealParams(argc, argv);
    }
    return 0;
}

void dealParams(int argc, const char ** argv) {
    DKCal *cal = [DKCal sharedCal];
    NSString *output = nil;
    switch (argc) {
        case 1:
            output = [cal calendarForDate:[NSDate date]];
            break;
        case 2: {// 年份
            int y = atoi(argv[1]);
            output = [cal calendarForYear:y];
            break;
        }
        case 3: {
            int m = atoi(argv[1]);
            int y = atoi(argv[2]);
            NSDateFormatter *formatter = [NSDateFormatter new];
            formatter.dateFormat = @"yyyy-MM";
            NSDate *date = [formatter dateFromString:[NSString stringWithFormat:@"%04d-%02d",y,m]];
            output = [cal calendarForDate:date];
            break;
        }
        default:
            break;
    }
    printf("%s\n", output.UTF8String);
}
