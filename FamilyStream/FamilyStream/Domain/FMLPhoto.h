//
//  FMLPhoto.h
//  FamilyStream
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FMLGalleryItem.h"

@interface FMLPhoto : FMLGalleryItem

@property (nonatomic, readonly, nonnull) NSString *authorName;
@property (nonatomic, readonly, nonnull) NSDate *publicationDate;
@property (nonatomic, readonly, nonnull) NSURL *imageURL;

/// The only available initializer for that class.
- (nonnull instancetype)initWithAuthorName:(nonnull NSString *)authorName
                           publicationDate:(nonnull NSDate *)publicationDate
                                  imageURL:(nonnull NSURL *)imageURL;

@end
