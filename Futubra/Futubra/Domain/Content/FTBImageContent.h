//
//  FTBImageContent.h
//  Futubra
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FTBContent.h"

@interface FTBImageContent : FTBContent

@property (nonatomic, readonly, nonnull) NSURL *imageURL;

/// The only available initializer for that kind of content.
- (nonnull instancetype)initWithImageURL:(nonnull NSURL *)imageURL
                                    text:(nullable NSString *)text;

@end
