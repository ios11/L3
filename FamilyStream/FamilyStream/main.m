//
//  main.m
//  FamilyStream
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FMLGallery.h"

@interface NSDate (FML)
@end

@implementation NSDate (FML)

+ (NSDate *)fml_dateWithYear:(NSInteger)year month:(NSInteger)month day:(NSInteger)day {
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    [comps setDay:day];
    [comps setMonth:month];
    [comps setYear:year];
    NSCalendar *gregorian = [[NSCalendar alloc]
                             initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    return [gregorian dateFromComponents:comps];
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FMLGallery *gallery = [FMLGallery new];
        [gallery addPhoto:[[FMLPhoto alloc]
                           initWithAuthorName:@"Pavel"
                           publicationDate:[NSDate fml_dateWithYear:2015 month:10 day:1]
                           imageURL:[NSURL URLWithString:@"https://500px.com/photo/80626185.jpg"]]];
        [gallery addPhoto:[[FMLPhoto alloc]
                           initWithAuthorName:@"Pavel"
                           publicationDate:[NSDate fml_dateWithYear:2015 month:10 day:1]
                           imageURL:[NSURL URLWithString:@"https://500px.com/photo/80626186.jpg"]]];
        [gallery addPhoto:[[FMLPhoto alloc]
                           initWithAuthorName:@"Bill"
                           publicationDate:[NSDate fml_dateWithYear:2015 month:10 day:1]
                           imageURL:[NSURL URLWithString:@"https://500px.com/photo/80626187.jpg"]]];
        [gallery addPhoto:[[FMLPhoto alloc]
                           initWithAuthorName:@"Pavel"
                           publicationDate:[NSDate fml_dateWithYear:2015 month:10 day:1]
                           imageURL:[NSURL URLWithString:@"https://500px.com/photo/80626188.jpg"]]];
        NSLog(@"%@", gallery);
    }
    return 0;
}
