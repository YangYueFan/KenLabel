//
//  ViewController.m
//  KenLabel
//
//  Created by 科技部2 on 2017/10/11.
//  Copyright © 2017年 Ken. All rights reserved.
//

#import "ViewController.h"
#import "KenLabel.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet KenLabel *label1;
@property (weak, nonatomic) IBOutlet KenLabel *label2;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSDictionary *dic = @{@"逝去":[UIColor redColor],
                          @"夕阳":[UIColor orangeColor],
                          @"青春":@[[UIFont fontWithName:@"Arial-BoldItalicMT" size:30.0],[UIColor greenColor]],
                          };
    
    
    [self.label1 setContentText:@"我想起那天夕阳下的奔跑，那是我逝去的青春"
                      attribute:dic];
    self.label1.backgroundColor = [UIColor colorWithRed:237/255.0 green:237/255.0 blue:237/255.0 alpha:1.0];
    
    [self.label2 setContentText:@"我想起那天夕阳下的奔跑，那是我逝去的青春"
                     attributes:[KenLabelModel initWithDictionary:dic]];
    self.label2.backgroundColor = [UIColor colorWithRed:237/255.0 green:237/255.0 blue:237/255.0 alpha:1.0];
    
    
    KenLabel *label = [[KenLabel alloc]initWithFrame:CGRectMake(8, 250, [UIScreen mainScreen].bounds.size.width-16, 80)];
    [label setContentText:@"我想起那天夕阳下的奔跑，那是我逝去的青春" attribute:dic];
    label.numberOfLines = 0;
    [self.view addSubview:label];
    label.backgroundColor = [UIColor colorWithRed:237/255.0 green:237/255.0 blue:237/255.0 alpha:1.0];
    
    NSLog(@"%0.1f",[label getLabelHeight]);
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        label.labelH = [label getLabelHeight];
    });
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
