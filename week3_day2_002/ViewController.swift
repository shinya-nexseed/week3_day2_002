//
//  ViewController.swift
//  week3_day2_002
//
//  Created by Shinya Hirai on 2015/10/20.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // ローカル通知は実行するためのボタンをコードで生成してみます。
        //// 定義
        let notificationFireBtn: UIButton = UIButton()
        
        //// 初期化
        notificationFireBtn.frame = CGRectMake(100, 400, 175, 60)
        notificationFireBtn.backgroundColor = UIColor.orangeColor()
        notificationFireBtn.setTitle("通知", forState: .Normal)
        
        //// アクション
        notificationFireBtn.addTarget(self, action: "tapBtn:", forControlEvents: .TouchUpInside)
        
        //// self.viewに設置
        self.view.addSubview(notificationFireBtn)
    }
    
    func tapBtn(sender: UIButton) {
        println(__FUNCTION__)
        
        // ローカル通知の設定をする
        //// Notificationを生成
        let notification: UILocalNotification = UILocalNotification()
        
        //// タイトルを代入
        notification.alertTitle = "Fire"
        
        //// メッセージを代入
        notification.alertBody = "ファイヤー!!!"
        
        //// 再生サウンドを設定する
        notification.soundName = UILocalNotificationDefaultSoundName
        
        //// Timezoneを設定する
        notification.timeZone = NSTimeZone.defaultTimeZone()
        
        //// 10秒後に設定する
        notification.fireDate = NSDate(timeIntervalSinceNow: 10)
        
        // Notificationを表示する
        UIApplication.sharedApplication().scheduleLocalNotification(notification)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

