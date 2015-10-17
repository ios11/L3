//
//  FMLGallery.h
//  FamilyStream
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FMLGalleryItemCollection.h"
#import "FMLCollageGroup.h"

@interface FMLGallery : FMLGalleryItemCollection

@property (nonatomic, readonly, nonnull) NSArray<FMLCollageGroup *> *subitems;

@end
