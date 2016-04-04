//
//  ViewController.m
//  Day10HW2_ChangePositionOfImage
//
//  Created by Emily Hu on 4/3/16.
//  Copyright © 2016 Emily Hu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *firstImage;
@property (weak, nonatomic) IBOutlet UIImageView *secondImage;
- (IBAction)changeBtn_Pressed:(id)sender;

@end

@implementation ViewController
int count;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    count=1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeBtn_Pressed:(id)sender {
    
    if(count%2==1){
        _firstImage.image=[UIImage imageNamed:@"2.png"];
        _secondImage.image=[UIImage imageNamed:@"1.png"];
    }else if(count%2==0){
        _firstImage.image=[UIImage imageNamed:@"1.png"];
        _secondImage.image=[UIImage imageNamed:@"2.png"];
    }
    count++;
}
@end
