//
//  ImageMapper.m
//  BadHunter
//
//  Created by Filipe Patrício on 04/06/15.
//  Copyright (c) 2015 Filipe Patrício. All rights reserved.
//

#import "ImageMapper.h"

@implementation ImageMapper
+ (void) storeImage:(UIImage *)image withUUID:(NSString *)uuid {
    NSData *data = UIImagePNGRepresentation(image);
    NSURL *imageURL = [self URLFromUUID:uuid];
    NSString *imagePath = [imageURL path];
    [data writeToFile:imagePath atomically:YES];
}


+ (void) deleteImageWithUUID:(NSString *)uuid {
    NSError *error;
    [[NSFileManager defaultManager] removeItemAtURL:[self URLFromUUID:uuid]
                                              error:&error];
}


+ (UIImage *) retrieveImageWithUUID:(NSString *)uuid {
    NSURL *imageURL = [self URLFromUUID:uuid];
    NSData *data = [NSData dataWithContentsOfURL:imageURL];
    return [UIImage imageWithData:data];
}


#pragma mark - UUID to URL mapping

+ (NSURL *) URLFromUUID:(NSString *)uuid {
    NSURL *dirURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory
                                                            inDomains:NSUserDomainMask] lastObject];
    NSURL *fileURL = [dirURL URLByAppendingPathComponent:[uuid stringByAppendingPathExtension:@"png"]];
    return fileURL;
}
@end
