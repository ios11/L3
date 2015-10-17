//
//  FMLGallery.m
//  FamilyStream
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FMLGallery.h"
#import "FMLCollageGroup.h"
#import <POSRx/POSRxUtils.h>

@implementation FMLGallery
@dynamic subitems;

- (BOOL)canAddPhoto:(FMLPhoto *)photo {
    return YES;
}

- (id<FMLGalleryItemCollection>)emptySubitems {
    return [FMLCollageGroup new];
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
