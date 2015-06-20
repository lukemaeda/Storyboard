//
//  ViewController02.m
//  Storyboard
//
//  Created by MAEDA HAJIME on 2014/04/11.
//  Copyright (c) 2014年 HAJIME MAEDA. All rights reserved.
//

//#import "ViewController.h"
#import "ViewController02.h"
//#import "ViewController03.h"

@interface ViewController02 ()



@end

@implementation ViewController02

//- (id)initWithNibName:(NSString *)nibNameOrNil
//               bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // View01から値反映
    self.tfMessage.text = self.tempMsg02;
    
    [self.tfMessage resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


// 値1 キーボードを隠す Did End On Exit と併用している
- (IBAction)didEndValue01:(id)sender
{
    
    
}

// 戻るボタンReturn
- (IBAction)backView01:(id)sender {
    
    // デリゲートメソッド呼び出し(デリゲート作成 4/4)
    [self.delegate ViewController02BeforeExit:self];
    
    // ビュー閉じる（終わらせる）
    [self dismissViewControllerAnimated:YES
                             completion:nil];
    
}

@end
