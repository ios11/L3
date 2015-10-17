//
//  FMLGalleryItem.m
//  FamilyStream
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FMLGalleryItem.h"

@implementation FMLGalleryItem

- (instancetype)initWithAuthorName:(NSString *)authorName
                   publicationDate:(NSDate *)publicationDate {
    if (self = [super init]) {
        _authorName = [authorName copy];
        _publicationDate = publicationDate;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@:%@", self.authorName, self.publicationDate];
}

@end
