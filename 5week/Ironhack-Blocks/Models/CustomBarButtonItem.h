//
//  CustomBarButtonItem.h
//  Models
//
//  Created by Filipe Patrício on 02/06/15.
//  Copyright (c) 2015 Produkt. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ActionBlock)();

@interface CustomBarButtonItem : UIBarButtonItem
-(instancetype)initWithTitle:(NSString *)title style:(UIBarButtonItemStyle)style actionBlock:(ActionBlock)block;
@end
