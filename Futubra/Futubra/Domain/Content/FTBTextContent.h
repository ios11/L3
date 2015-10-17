//
//  FTBTextContent.h
//  Futubra
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FTBContent.h"

@interface FTBTextContent : FTBContent

@property (nonatomic, readonly, nonnull) NSString *text;

/// Creates content with text.
/// @remark This is the only designated initializer.
/// @param text Text should contain at least one symbol.
- (nonnull instancetype)initWithText:(nonnull NSString *)text;

@end
