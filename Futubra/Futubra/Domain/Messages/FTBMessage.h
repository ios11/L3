//
//  FTBMessage.h
//  Futubra
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FTBContent;

@interface FTBMessage : NSObject

@property (nonatomic, readonly, nonnull) NSString *authorName;
@property (nonatomic, readonly, nonnull) FTBContent *content;

/// The only available initializer for message.
- (nonnull instancetype)initWithAuthorName:(nonnull NSString *)authorName
                                   content:(nonnull FTBContent *)content;

@end
