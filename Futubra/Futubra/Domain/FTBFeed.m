//
//  FTBFeed.m
//  Futubra
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FTBFeed.h"
#import <POSRx/POSRxUtils.h>

@implementation FTBFeed {
    NSMutableArray<FTBPost *> *_posts;
}
@synthesize posts = _posts;

- (instancetype)init {
    if (self = [super init]) {
        _posts = [NSMutableArray new];
    }
    return self;
}

- (void)addPost:(FTBPost *)post {
    POSRX_CHECK(post);
    [_posts addObject:post];
}

- (void)removePost:(FTBPost *)post {
    POSRX_CHECK(post);
    [_posts removeObject:post];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"posts: %@", _posts];
}

@end
