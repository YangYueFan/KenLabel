//
//  KenLabel.m
//  KenLabel
//
//  Created by 科技部2 on 2017/10/11.
//  Copyright © 2017年 Ken. All rights reserved.
//

#import "KenLabel.h"



@implementation KenLabel


-(void)setContentText:(NSString *)contentStr attribute:(NSDictionary *)dic{
    
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc]initWithString:contentStr];
    
    for (NSString *key in dic.allKeys) {
        NSRange range = [[str string] rangeOfString:key];
        
        if ([dic[key] isKindOfClass:[NSArray class]]) {
            for (id value1 in dic[key]) {
                if ([value1 isKindOfClass:[UIColor class]]) {
                    [str addAttribute:NSForegroundColorAttributeName value:value1 range:range];
                }else if ([value1 isKindOfClass:[UIFont class]]){
                    [str addAttribute:NSFontAttributeName value:value1 range:range];
                }else{
                    NSLog(@"value is error");
                }
            }
        }else if ([dic[key] isKindOfClass:[UIColor class]]) {
            [str addAttribute:NSForegroundColorAttributeName value:dic[key] range:range];
        }else if ([dic[key] isKindOfClass:[UIFont class]]){
            [str addAttribute:NSFontAttributeName value:dic[key] range:range];
        }else{
            NSLog(@"value is error");
        }
    }
    self.attributedText = str;
    
}

-(void)setContentText:(NSString *)contentStr attributes:(NSArray<KenLabelModel *> *)attributes{

    NSMutableAttributedString *str = [[NSMutableAttributedString alloc]initWithString:contentStr];
    
    for (KenLabelModel *model in attributes) {
        NSRange range = [[str string] rangeOfString:model.otherText];
        
        if ([model.value isKindOfClass:[NSArray class]]) {
            for (id value1 in model.value) {
                if ([value1 isKindOfClass:[UIColor class]]) {
                    [str addAttribute:NSForegroundColorAttributeName value:value1 range:range];
                }else if ([value1 isKindOfClass:[UIFont class]]){
                    [str addAttribute:NSFontAttributeName value:value1 range:range];
                }else{
                    NSLog(@"value is error");
                }
            }
        }else if ([model.value isKindOfClass:[UIColor class]]) {
            [str addAttribute:NSForegroundColorAttributeName value:model.value range:range];
        }else if ([model.value isKindOfClass:[UIFont class]]){
            [str addAttribute:NSFontAttributeName value:model.value range:range];
        }else{
            NSLog(@"value is error");
        }
    }
    self.attributedText = str;
    
}

// 获取文本高度 （默认上下左右边距都为8）
-(CGFloat)getLabelHeight{
    NSString *textStr = nil;
    if (self.attributedText.length>0) {
        textStr = self.attributedText.string;
    }else{
        textStr = self.text;
    }

    // 设置文字属性 要和label的一致
    NSDictionary *attrs = @{NSFontAttributeName:self.font};
    CGSize maxSize = CGSizeMake(KMainSize.width-16, MAXFLOAT);
    
    // 计算文字占据的高度
    CGSize size = [textStr boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
    
    return size.height + 16;
    
}

-(void)setLabelH:(CGFloat)labelH{
    CGRect rect = self.frame;
    rect.size.height = labelH;
    self.frame = rect;
}

@end
