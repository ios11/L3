//
//  FTBContent.m
//  Futubra
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FTBContent.h"

@implementation FTBContent

- (instancetype)initWithText:(NSString *)text {
    if (self = [super init]) {
        _text = [text copy];
    }
    return self;
}

- (NSString *)description {
    return _text;
}

@end
