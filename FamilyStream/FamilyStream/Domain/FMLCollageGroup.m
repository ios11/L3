//
//  FMLCollageGroup.m
//  FamilyStream
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FMLCollageGroup.h"
#import "FMLCollage.h"
#import "FMLPhoto.h"
#import <POSRx/POSRxUtils.h>

@implementation FMLCollageGroup
@dynamic subitems;

- (id<FMLGalleryItemCollection>)emptySubitems {
    return [FMLCollage new];
}

- (BOOL)canAddPhoto:(nonnull FMLPhoto *)photo {
    if (self.subitems.count == 0) {
        return YES;
    }
    if (![self.subitems.firstObject.authorName isEqualToString:photo.authorName]) {
        return NO;
    }
    NSDateComponents *components = [[NSCalendar currentCalendar]
                                    components:NSCalendarUnitDay
                                    fromDate:self.subitems.firstObject.publicationDate
                                    toDate:photo.publicationDate
                                    options:0];
    return components.day < 1;
}

- (NSString *)description {
    NSMutableString *description = [NSMutableString new];
    [description appendFormat:@"%@ (%@)\r", self.class, @(self.subitems.count)];
    for (id item in self.subitems) {
        [description appendFormat:@"  %@\r", item];
    }
    return description;
}

@end
