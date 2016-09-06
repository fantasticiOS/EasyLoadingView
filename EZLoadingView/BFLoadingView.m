//
//  BFLoadingView.m
//  百思不得姐
//
//  Created by odm2 on 16/8/30.
//  Copyright © 2016年 fantasticiOS. All rights reserved.
//

#import "BFLoadingView.h"

@interface BFLoadingView()

@property (strong, nonatomic) UIImageView *gifView;

@end

static id instace = nil;
@implementation BFLoadingView

/**
 *  重载方法
 *
 */
+(instancetype)sharedLoadingView{
    if(!instace){
        static dispatch_once_t onceToken = 0;
        
        dispatch_once(&onceToken, ^{
            
            
            instace = [[super allocWithZone:NULL]init];
            
        });
        
    }
    
    
    return instace;
}

-(instancetype)init{
    
    if(self = [super init]) {
        
        instace = [self initWithImages];
        
    }
    return instace;
    
    
}
-(instancetype)initWithFrame:(CGRect)frame{
    
    if(self = [super initWithFrame:frame]){
        
        instace = [self initWithImages];
        
    }
    return instace;
}
+(instancetype)allocWithZone:(struct _NSZone *)zone{
    
    return [BFLoadingView sharedLoadingView];
}
+(instancetype)alloc{
    
    return instace;
}



-(id)copyWithZone:(NSZone *)zone{
    
    
    return instace;
    
}
-(id)copy{
    
    
    return instace;
}
-(id)mutableCopy{
    
    return instace;
}
-(id)mutableCopyWithZone:(NSZone *)zone{
    
    return instace;
}





/**
 *  私有方法
 *
 */
-(instancetype)initWithImages{
    
    
    
    self.userInteractionEnabled = NO;
    UIImageView *gifView = [[UIImageView alloc]init];
    [self addSubview:gifView];
    self.gifView = gifView;
    [gifView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(100));
        make.height.equalTo(@(75));
    }];
    gifView.animationImages = @[
                                [UIImage imageNamed:@"app_loading_0"],
                                [UIImage imageNamed:@"app_loading_1"]
                                ];
    gifView.animationRepeatCount = 0;
    
    gifView.animationDuration = 0.3;
    
    
    
    return  self;
}



-(void)showLoadingViewInParentView:(UIView *)parentView{
    
    self.frame = parentView.bounds;
    [parentView addSubview:self];
    [self.gifView startAnimating];
    
    
}
+(void)showBFLoadingViewWithParentView:(UIView *)parentView{
    
    [[BFLoadingView sharedLoadingView]showLoadingViewInParentView:parentView];
    
    
}
-(void)stopLoadingView{
    
    [self removeFromSuperview];
    
    
}
+(void)stopBFLoadingView{
    
    [[BFLoadingView sharedLoadingView]stopLoadingView];
    
}
@end
