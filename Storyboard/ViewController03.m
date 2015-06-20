//
//  ViewController03.m
//  Storyboard
//
//  Created by MAEDA HAJIME on 2014/04/14.
//  Copyright (c) 2014年 HAJIME MAEDA. All rights reserved.
//

#import "ViewController03.h"
#import "ViewController.h"

@interface ViewController03 ()

@end

@implementation ViewController03

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"%@",self.tempMsg03);
    
    // View01から値反映
    self.tfMessage.text = self.tempMsg03;

    
    [self.tfMessage resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

/*
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    

        NSLog(@"行ってきます");
        // セグエ判定
        if ([segue.identifier isEqualToString:@"SegueTo03"]) {
            
            NSLog(@"View02行ってきます");
            
            ViewController *vw = (ViewController *)
            segue.destinationViewController;
            
            vw.tempMsg = @"View01からのメッセージデータです。";
            
            
        } else if ([segue.identifier isEqualToString:@"SegueT03"]){
            
            NSLog(@"View03行ってきます");
            
        }
        
}
*/

// 値1 キーボードを隠す Did End On Exit と併用している
- (IBAction)didEndValue01:(id)sender
{
    
}


// 戻るボタンReturn
- (IBAction)backView01:(id)sender {
    
    // ビュー閉じる（終わらせる）
    [self dismissViewControllerAnimated:YES
                             completion:nil];
    
}

@end
