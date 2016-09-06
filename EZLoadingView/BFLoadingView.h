//
//  BFLoadingView.h
//  百思不得姐
//
//  Created by odm2 on 16/8/30.
//  Copyright © 2016年 fantasticiOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BFLoadingView : UIView<NSCopying,NSMutableCopying>


+(instancetype)sharedLoadingView;

-(void)showLoadingViewInParentView:(UIView *)parentView;
-(void)stopLoadingView;


+(void)showBFLoadingViewWithParentView:(UIView *)parentView;
+(void)stopBFLoadingView;
@end
