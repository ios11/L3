//
//  main.m
//  Futubra
//
//  Created by Pavel Osipov on 17.10.15.
//  Copyright © 2015 Pavel Osipov. All rights reserved.
//

#import "FTBComment.h"
#import "FTBPost.h"
#import "FTBFeed.h"
#import "FTBTextContent.h"
#import "FTBImageContent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FTBFeed *feed = [FTBFeed new];
        
        FTBPost *nytPost =
        [[FTBPost alloc]
         initWithAuthorName:@"New York Times"
         content:[[FTBImageContent alloc]
                  initWithImageURL:[NSURL URLWithString:@"http://static01.nyt.com/images/2015/10/16/sports/"
                                                         "SUB-15BATFLIPweb1/SUB-15BATFLIPweb1-master1050.jpg"]
                  text:@"Baseball Reaches a Flipping Point"]];
        [nytPost addComment:
         [[FTBComment alloc]
          initWithAuthorName:@"Steve"
          content:[[FTBTextContent alloc] initWithText:@"There are two issues:..."]]];
        [nytPost addComment:
         [[FTBComment alloc]
          initWithAuthorName:@"Crafty B"
          content:[[FTBTextContent alloc] initWithText:@"I'm indifferent to the bat flip debate..."]]];
        [feed addPost:nytPost];

        FTBPost *uefaPost =
        [[FTBPost alloc]
         initWithAuthorName:@"UEFA.com"
         content:[[FTBImageContent alloc]
                  initWithImageURL:[NSURL URLWithString:@"http://www.uefa.com/MultimediaFiles/"
                                                         "Photo/competitions/Comp_Matches/02/27/50/32/2275032_w2.jpg"]
                  text:@"BATE seal tenth straight title in Belarus"]];
        [uefaPost addComment:
         [[FTBComment alloc]
          initWithAuthorName:@"Artem"
          content:[[FTBTextContent alloc] initWithText:@"Nicely done."]]];
        [uefaPost addComment:
         [[FTBComment alloc]
          initWithAuthorName:@"Martin"
          content:[[FTBTextContent alloc] initWithText:@"I'm delighted!"]]];
        [feed addPost:uefaPost];

        
        NSLog(@"%@", feed);
    }
    return 0;
}
