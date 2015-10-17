//
//  FMLPhoto.m
//  FamilyStream
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FMLPhoto.h"
#import <POSRx/POSRxUtils.h>

@implementation FMLPhoto
@dynamic authorName;
@dynamic publicationDate;

POSRX_DEADLY_INITIALIZER(init)
POSRX_DEADLY_INITIALIZER(initWithAuthorName:(NSString *)authorName publicationDate:(NSDate *)publicationDate)

- (instancetype)initWithAuthorName:(NSString *)authorName
                   publicationDate:(NSDate *)publicationDate
                          imageURL:(NSURL *)imageURL {
    POSRX_CHECK(authorName);
    POSRX_CHECK(publicationDate);
    POSRX_CHECK(imageURL);
    if (self = [super initWithAuthorName:authorName publicationDate:publicationDate]) {
        _imageURL = imageURL;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@:%@", [super description], _imageURL];
}

@end
