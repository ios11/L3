//
//  FTBVideoContent.h
//  Futubra
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FTBContent.h"

@interface FTBVideoContent : FTBContent

@property (nonatomic, readonly, nonnull) NSURL *videoURL;

/// The only available initializer for that kind of content.
- (nonnull instancetype)initWithVideoURL:(nonnull NSURL *)videoURL
                                    text:(nullable NSString *)text;

@end
