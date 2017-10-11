//
//  KenLabelModel.h
//  KenLabel
//
//  Created by 科技部2 on 2017/10/11.
//  Copyright © 2017年 Ken. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KenLabelModel : NSObject

@property (nonatomic,copy) NSString *otherText;

//color or font
@property (nonatomic, strong) id value;


+(instancetype)initWithOtherText:(NSString *)otherText andValue:(id)value;

+(NSArray *)initWithDictionary:(NSDictionary *)dic;

@end
