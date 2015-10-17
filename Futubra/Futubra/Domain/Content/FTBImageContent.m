//
//  FTBImageContent.m
//  Futubra
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FTBImageContent.h"
#import <POSRx/POSRxUtils.h>

@implementation FTBImageContent

POSRX_DEADLY_INITIALIZER(init);
POSRX_DEADLY_INITIALIZER(initWithText:(NSString *)text);

- (instancetype)initWithImageURL:(NSURL *)imageURL
                            text:(NSString *)text {
    POSRX_CHECK(imageURL);
    if (self = [super initWithText:text]) {
        _imageURL = [imageURL copy];
    }
    return self;
}

@end
