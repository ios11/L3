//
//  FTBMessage.m
//  Futubra
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FTBMessage.h"
#import <POSRx/POSRxUtils.h>

@implementation FTBMessage

POSRX_DEADLY_INITIALIZER(init)

- (instancetype)initWithAuthorName:(NSString *)authorName
                           content:(FTBContent *)content {
    POSRX_CHECK(authorName);
    POSRX_CHECK(content);
    if (self = [super init]) {
        _authorName = [authorName copy];
        _content = content;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@: %@", _authorName, _content];
}

@end
