//
//  BFBlankView.h
//  beautyfacewashing
//
//  Created by odm1 on 16/9/2.
//  Copyright © 2016年 jingmi-mac2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BFBlankView : UIView
+(instancetype)sharedBlankView;

-(void)showBlankViewWithTitle:(NSString *)title imageName:(NSString *)imgName inParentView:(UIView *)parentView;
+(void)showBFBlankViewWithTitle:(NSString *)title imageName:(NSString *)imgName inParentView:(UIView *)parentView;

-(void)removeBlankView;
+(void)removeBlankView;


@end
