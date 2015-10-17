//
//  FTBContent.h
//  Futubra
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FTBContent : NSObject

@property (nonatomic, readonly) NSString *text;

/// Creates content with text.
- (instancetype)initWithText:(NSString *)text;

@end
