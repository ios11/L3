//
//  FTBPost.h
//  Futubra
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FTBMessage.h"

@class FTBComment;

@interface FTBPost : FTBMessage

@property (nonatomic) NSInteger likeCount;
@property (nonatomic, readonly, nonnull) NSArray<FTBComment *> *comments;

- (void)addComment:(nonnull FTBComment *)comment;
- (void)removeComment:(nonnull FTBComment *)comment;

@end
