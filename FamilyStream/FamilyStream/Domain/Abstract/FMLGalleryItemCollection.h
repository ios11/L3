//
//  FMLGalleryItemCollection.h
//  FamilyStream
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FMLGalleryItem.h"

@class FMLGalleryItem;
@class FMLPhoto;

@protocol FMLGalleryItemCollection <NSObject>

@property (nonatomic, readonly, nullable) NSString *authorName;
@property (nonatomic, readonly, nullable) NSDate *publicationDate;
@property (nonatomic, readonly, nonnull) NSArray<FMLGalleryItem *> *subitems;

/// @return YES if photo can be added according to business rules.
- (BOOL)canAddPhoto:(nonnull FMLPhoto *)photo;

/// Adds photo if it can be added according to business rules, throws exception otherwise.
- (void)addPhoto:(nonnull FMLPhoto *)photo;

/// Removes photo.
/// @return YES if photo was removed.
- (BOOL)removePhoto:(nonnull FMLPhoto *)photo;

@end

@interface FMLGalleryItemCollection : FMLGalleryItem <FMLGalleryItemCollection>

/// Builds new collection subitems collection.
- (nonnull id<FMLGalleryItemCollection>)emptySubitems;

@end
