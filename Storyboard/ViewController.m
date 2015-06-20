//
//  ViewController.m
//  Storyboard
//
//  Created by MAEDA HAJIME on 2014/04/11.
//  Copyright (c) 2014年 HAJIME MAEDA. All rights reserved.
//

#import "ViewController.h"
#import "ViewController02.h" // ヘッダーファイル定義（デリゲート使用　1/4）
#import "ViewController03.h"

@interface ViewController ()
<ViewController02Delegate> // プロトコル実装（デリゲート使用　2/4）

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 他ビュー遷移時
- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender
{

    // セグエ判定
    if ([segue.identifier isEqualToString:@"SegueTo02"]) {
        
        NSLog(@"View02行ってきます");
        
        ViewController02 *vw = (ViewController02 *)
                        segue.destinationViewController;
        
        vw.tempMsg02 = @"View01からのメッセージデータです。";
        
        // 設定（デリゲート）（デリゲート使用　4/4）
        vw.delegate = self;
        
        
    } else if ([segue.identifier isEqualToString:@"SegueTo03"]){
        
        NSLog(@"View03行ってきます");
        
        ViewController03 *vw = (ViewController03 *)
                        segue.destinationViewController;

        vw.tempMsg03 = @"View01からのメッセージデータです。";
        
    }
    
}

// 他ビュー終了時（UnWind Segue(iOS6-)）View03
- (IBAction)returnView01:(UIStoryboardSegue *)segue {
    
    if ([segue.identifier isEqualToString:@"SegueFrom03"]) {
        
        // 遷移先インスタンス取得
        ViewController03 *vw = (ViewController03 *)
                        segue.sourceViewController;
        
        // 空っぽで良い
        NSLog(@"%@",vw.tfMessage.text);
        
    }
}

#pragma mark - ViewController02Delegate Methd
// メソッドの実装（デリゲート使用　3/4）
-(void)ViewController02BeforeExit:(ViewController02 *)view {
    
    //NSLog(@"%s", __func__);
    
    NSLog(@"%@", view.tfMessage.text);
    
}

@end
