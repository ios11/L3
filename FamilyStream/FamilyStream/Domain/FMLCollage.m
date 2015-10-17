//
//  FMLCollage.m
//  FamilyStream
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FMLCollage.h"
#import "FMLPhoto.h"
#import <POSRx/POSRxUtils.h>

@implementation FMLCollage {
    NSMutableArray<FMLPhoto *> *_photos;
}
@synthesize subitems = _photos;

- (instancetype)init {
    if (self = [super init]) {
        _photos = [NSMutableArray new];
    }
    return self;
}

- (NSString *)authorName {
    return _photos.firstObject.authorName;
}

- (NSDate *)publicationDate {
    return _photos.firstObject.publicationDate;
}

- (instancetype)emptyCollection {
    return [[self.class alloc] init];
}

- (BOOL)canAddPhoto:(FMLPhoto *)photo {
    return self.subitems.count < 3;
}

- (void)addPhoto:(FMLPhoto *)photo {
    POSRX_CHECK(photo);
    POSRX_CHECK([self canAddPhoto:photo]);
    [_photos addObject:photo];
}

- (BOOL)removePhoto:(FMLPhoto *)photo {
    NSInteger beforePhotoCount = _photos.count;
    [_photos removeObject:photo];
    NSInteger afterPhotoCount = _photos.count;
    return beforePhotoCount != afterPhotoCount;
}

- (NSString *)description {
    NSMutableString *description = [NSMutableString new];
    [description appendFormat:@"  %@ (%@)\r", self.class, @(_photos.count)];
    for (id item in _photos) {
        [description appendFormat:@"      %@\r", item];
    }
    return description;
}

@end
