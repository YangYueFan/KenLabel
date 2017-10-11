//
//  KenLabel.h
//  KenLabel
//
//  Created by 科技部2 on 2017/10/11.
//  Copyright © 2017年 Ken. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KenLabelModel.h"

#define KMainSize [UIScreen mainScreen].bounds.size

@interface KenLabel : UILabel


@property (nonatomic,assign) CGFloat labelH;

-(void)setContentText:(NSString *)contentStr attribute:(NSDictionary *)dic;
-(void)setContentText:(NSString *)contentStr attributes:(NSArray<KenLabelModel *> *)attributes;
-(CGFloat)getLabelHeight;


@end
