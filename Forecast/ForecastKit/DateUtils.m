//
//  DateUtils.m
//  Forecast
//
//  Created by luck-mac on 15/5/2.
//  Copyright (c) 2015年 com.nju.luckymore. All rights reserved.
//

#import "DateUtils.h"

@implementation DateUtils
/***
 ***根据日期计算周几
 ****/
+(NSString *)weekDayWithDate:(NSDate *)date{
    NSCalendar *gregorian = [NSCalendar currentCalendar];
    NSDateComponents *weekDayComponents = [gregorian components:NSCalendarUnitWeekday fromDate:date];
    NSInteger mDay = [weekDayComponents weekday];
    NSArray *weekDays = @[@"Error",@"Sun",@"Mon",@"Tues",@"Wed",@"Thur",@"Fri",@"Sat"];
    return weekDays[mDay];
}
@end
