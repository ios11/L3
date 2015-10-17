//
//  FMLCollageGroup.h
//  FamilyStream
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FMLGalleryItemCollection.h"
#import "FMLCollage.h"

@interface FMLCollageGroup : FMLGalleryItemCollection

@property (nonatomic, readonly, nonnull) NSArray<FMLCollage *> *subitems;

@end
