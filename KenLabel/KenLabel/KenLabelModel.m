//
//  KenLabelModel.m
//  KenLabel
//
//  Created by 科技部2 on 2017/10/11.
//  Copyright © 2017年 Ken. All rights reserved.
//

#import "KenLabelModel.h"

@implementation KenLabelModel

+(instancetype)initWithOtherText:(NSString *)otherText andValue:(id)value{
    
    KenLabelModel *model = [[KenLabelModel alloc]init];
    model.otherText = otherText;
    model.value = value;
    return model;
}

+(NSArray *)initWithDictionary:(NSDictionary *)dic{
    
    NSMutableArray *arr = [NSMutableArray array];
    
    for (NSString * key in dic.allKeys) {
        
        [arr addObject:[KenLabelModel initWithOtherText:key andValue:dic[key]]];
        
    }
    
    return arr;
}

@end
