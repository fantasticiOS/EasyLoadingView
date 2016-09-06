//
//  BFBlankView.m
//  beautyfacewashing
//
//  Created by odm1 on 16/9/2.
//  Copyright © 2016年 jingmi-mac2. All rights reserved.
//

#import "BFBlankView.h"
@interface BFBlankView ()

@property (strong, nonatomic) UIImageView   *pageImgView;
@property (strong, nonatomic) UILabel       *titleLabel;
@property (strong, nonatomic) UILabel       *subTitleLabel;


@end
static id instance = nil;



@implementation BFBlankView


+(instancetype)sharedBlankView{
    
    if(!instance) {
        
        static dispatch_once_t onceToken = 0;
        dispatch_once(&onceToken, ^{
            
            instance = [[super allocWithZone:NULL]init];
            
        });
        
        
    }
    
    return instance;
    
    
}

-(instancetype)initWithFrame:(CGRect)frame{
    if(self = [super initWithFrame:frame]){
        
        instance = [self customInitMethod];
    }
    
    return instance;
}
-(instancetype)init{
    
    if(self = [super init]){
//        instance = [self customInitMethod];
    }
    
    return instance;
}
+(instancetype)alloc{
    
    return [BFBlankView sharedBlankView];
}
+(instancetype)allocWithZone:(struct _NSZone *)zone{
    
    return [BFBlankView sharedBlankView];
}







-(id)copyWithZone:(NSZone *)zone{
    
    return instance;
    
}
-(id)copy{
    
    return instance;
    
}
-(id)mutableCopy{
    
    return instance;
}
-(id)mutableCopyWithZone:(NSZone *)zone{
    
    return instance;
    
}







-(void)showBlankViewWithTitle:(NSString *)title imageName:(NSString *)imgName inParentView:(UIView *)parentView{
    [parentView addSubview:self];
    
    self.frame = parentView.bounds;
    self.pageImgView.image = [UIImage imageNamed:imgName];
    self.titleLabel.text = title;
    
    
    
    
}
+(void)showBFBlankViewWithTitle:(NSString *)title imageName:(NSString *)imgName inParentView:(UIView *)parentView{
    [[BFBlankView sharedBlankView]showBlankViewWithTitle:title imageName:imgName inParentView:parentView];
    
}

-(void)removeBlankView{
    
    [self removeFromSuperview];
    
}

+(void)removeBlankView{
    
    [[BFBlankView sharedBlankView]removeBlankView];
    
}




#pragma mark - Private
-(instancetype)customInitMethod{
    
    UIImageView   *pageImgView = [[UIImageView alloc]init];
    self.pageImgView = pageImgView;
    [self addSubview:pageImgView];
    
    
    //    UILabel      *titleLabel = [[UILabel alloc]init];
    //    self.titleLabel = titleLabel;
    //    [self addSubview:titleLabel];
    //    titleLabel.textAlignment = NSTextAlignmentCenter;
    //    titleLabel.font = [UIFont systemFontOfSize:16];
    //    titleLabel.textColor = [UIColor getColor:@"666666"];
    //
    //    UILabel      *subTitleLabel = [[UILabel alloc]init];
    //    self.subTitleLabel = subTitleLabel;
    //    [self addSubview:subTitleLabel];
    //    subTitleLabel.textAlignment = NSTextAlignmentCenter;
    //    subTitleLabel.font = [UIFont systemFontOfSize:13];
    //    titleLabel.textColor = [UIColor getColor:@"333333"];
    
    
    [self.pageImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(@(0));
        make.centerY.equalTo(@(0));
        make.width.equalTo(@(SCREEN_WIDTH));
        make.height.equalTo(@(SCREEN_HEIGHT));
        
    }];
    
    
    //    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    //        make.centerX.equalTo(@(0));
    //        make.top.equalTo(self.pageImgView.mas_bottom).offset(15);
    //
    //    }];
    //
    //    [self.subTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
    //        make.centerX.equalTo(@(0));
    //        make.top.equalTo(self.titleLabel.mas_bottom).offset(15);
    //        
    //    }];
    
    
    
    
    
    return self;
    
    
}




@end
