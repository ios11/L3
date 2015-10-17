//
//  FMLCompositePhotoCollection.m
//  FamilyStream
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FMLGalleryItemCollection.h"
#import <POSRx/POSRxUtils.h>

@implementation FMLGalleryItemCollection {
    NSMutableArray *_subitems;
}
@synthesize subitems = _subitems;

- (instancetype)init {
    if (self = [super init]) {
        _subitems = [NSMutableArray new];
    }
    return self;
}

- (NSString *)authorName {
    return [_subitems.firstObject authorName];
}

- (NSDate *)publicationDate {
    return [_subitems.firstObject publicationDate];
}

- (id<FMLGalleryItemCollection>)emptySubitems {
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   reason:@"Unknown type of sublitems."
                                 userInfo:nil];
}

- (BOOL)canAddPhoto:(nonnull FMLPhoto *)photo {
    return _subitems.count == 0;
}

- (void)addPhoto:(nonnull FMLPhoto *)photo {
    POSRX_CHECK(photo);
    POSRX_CHECK([self canAddPhoto:photo]);
    if (_subitems.count == 0) {
        [_subitems addObject:[self emptySubitems]];
    }
    if ([_subitems.lastObject canAddPhoto:photo]) {
        [_subitems.lastObject addPhoto:photo];
    } else {
        [_subitems addObject:[self emptySubitems]];
        [_subitems.lastObject addPhoto:photo];
    }
}

- (BOOL)removePhoto:(nonnull FMLPhoto *)photo {
    POSRX_CHECK(photo);
    FMLGalleryItemCollection *modifiedCollection = nil;
    for (FMLGalleryItemCollection *collection in _subitems) {
        if ([collection removePhoto:photo]) {
            modifiedCollection = collection;
            break;
        }
    }
    if (modifiedCollection && modifiedCollection.subitems.count == 0) {
        [_subitems removeObject:modifiedCollection];
    }
    return modifiedCollection != nil;
}

@end
