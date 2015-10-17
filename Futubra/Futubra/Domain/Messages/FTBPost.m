//
//  FTBPost.m
//  Futubra
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FTBPost.h"
#import <POSRx/POSRxUtils.h>

@implementation FTBPost {
    NSMutableArray<FTBComment *> *_comments;
}
@synthesize comments = _comments;

- (instancetype)initWithAuthorName:(NSString *)authorName
                           content:(FTBContent *)content {
    if (self = [super initWithAuthorName:authorName content:content]) {
        _comments = [NSMutableArray new];
    }
    return self;
}

- (void)setLikeCount:(NSInteger)likeCount {
    POSRX_CHECK(likeCount >= 0);
    _likeCount = likeCount;
}

- (void)addComment:(FTBComment *)comment {
    POSRX_CHECK(comment);
    [_comments addObject:comment];
}

- (void)removeComment:(FTBComment *)comment {
    POSRX_CHECK(comment);
    [_comments removeObject:comment];
}

- (NSString *)description {
    NSMutableString *description = [NSMutableString new];
    [description appendFormat:@"%@\r", [super description]];
    if (_comments) {
        [description appendFormat:@"    Comments (%@):\r", @(_comments.count)];
        for (FTBComment *comment in _comments) {
            [description appendFormat:@"        %@\r", comment];
        }
    }
    return description;
}

@end
