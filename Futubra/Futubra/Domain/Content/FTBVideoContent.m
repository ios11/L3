//
//  FTBVideoContent.m
//  Futubra
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FTBVideoContent.h"
#import <POSRx/POSRxUtils.h>

@implementation FTBVideoContent

POSRX_DEADLY_INITIALIZER(init);
POSRX_DEADLY_INITIALIZER(initWithText:(NSString *)text);

- (instancetype)initWithVideoURL:(NSURL *)videoURL
                            text:(NSString *)text {
    POSRX_CHECK(videoURL);
    if (self = [super initWithText:text]) {
        _videoURL = [videoURL copy];
    }
    return self;
}

@end
