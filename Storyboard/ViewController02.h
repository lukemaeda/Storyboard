//
//  ViewController02.h
//  Storyboard
//
//  Created by MAEDA HAJIME on 2014/04/11.
//  Copyright (c) 2014年 HAJIME MAEDA. All rights reserved.
//

#import <UIKit/UIKit.h>

// プロトコルのプロトタイプ宣言(デリゲート作成 2/4)
@protocol ViewController02Delegate;

@interface ViewController02 : UIViewController

//-----------------

@property (weak, nonatomic) NSString *tempMsg02;
// 
@property (weak, nonatomic) IBOutlet UITextField *tfMessage;

//-----------------

// デリゲートのプロパティ定義(デリゲート作成 3/4)
@property (weak, nonatomic) id<ViewController02Delegate> delegate;

@end


// プロトコル定義（通信）(デリゲート作成 1/4)
@protocol ViewController02Delegate <NSObject>

@required  // 必須（デフォルト）
// 画面終了時のメソッド
- (void)ViewController02BeforeExit:(ViewController02 *)view;

@optional  // 任意

@end

