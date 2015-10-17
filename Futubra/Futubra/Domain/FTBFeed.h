//
//  FTBFeed.h
//  Futubra
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FTBPost;

@interface FTBFeed : NSObject

@property (nonatomic, readonly, nonnull) NSArray<FTBPost *> *posts;

- (void)addPost:(nonnull FTBPost *)post;
- (void)removePost:(nonnull FTBPost *)post;

@end
