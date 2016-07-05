//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

/*
 
 *  Define your methods here!
 
 */

- (NSString *) stringWithDeliLine:(NSMutableArray *)deliLine {
    NSString *theLine = @"The line is:\n";
    NSMutableArray *mDeliLine = [NSMutableArray arrayWithArray:deliLine];
    if ([mDeliLine count] == 0) {
        return [NSString stringWithFormat:@"The line is currently empty."];
    } else {
        for (NSUInteger i=0; i<5; i++) {
            [mDeliLine replaceObjectAtIndex:i withObject:[NSString stringWithFormat:@"%lu. %@\n", i+1, mDeliLine[i]]];
        }
        NSString *theWholeLine = [mDeliLine componentsJoinedByString:@""];
        theWholeLine = [theWholeLine substringToIndex:[theWholeLine length] - 1];
        return [NSString stringWithFormat:@"%@%@", theLine, theWholeLine];
    }
    
}

- (NSMutableArray *) addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine {
    NSMutableArray *moreDeliLine = [NSMutableArray arrayWithArray:deliLine];
    [moreDeliLine addObject:name];
    return moreDeliLine;
}

- (NSString *) serveNextCustomerInDeliLine:(NSMutableArray *)deliLine {
    NSString *customer = deliLine[0];
    [deliLine removeObjectAtIndex:0];
    return customer;
}

@end
