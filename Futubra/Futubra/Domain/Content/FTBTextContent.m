//
//  FTBTextContent.m
//  Futubra
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FTBTextContent.h"
#import <POSRx/POSRxUtils.h>

@implementation FTBTextContent
@dynamic text;

POSRX_DEADLY_INITIALIZER(init)

- (instancetype)initWithText:(NSString *)text {
    POSRX_CHECK(text.length > 0);
    self = [super initWithText:text];
    return self;
}

@end
