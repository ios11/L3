//
//  FMLGalleryItem.h
//  FamilyStream
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FMLGalleryItem : NSObject

@property (nonatomic, readonly) NSString *authorName;
@property (nonatomic, readonly) NSDate *publicationDate;

- (instancetype)initWithAuthorName:(NSString *)authorName
                   publicationDate:(NSDate *)publicationDate;

@end
