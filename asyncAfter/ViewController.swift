//
//  ViewController.swift
//  asyncAfter
//
//  Created by PF on 17/2/6.
//  Copyright © 2017年 PF. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//http://www.cocoachina.com/swift/20161008/17692.html
    override func viewDidLoad() {
        super.viewDidLoad()
//
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
//            //TO DO
//            print("public func asyncAfter(deadline: DispatchTime, qos: DispatchQoS = default, flags: DispatchWorkItemFlags = default, execute work: @escaping @convention(block) () -> Swift.Void)")
//        }
////
//        //使用DispatchWorkItem代替原来的dispatch_block_t
//        
//        //优先级对应关系
//        /*
//         * DISPATCH_QUEUE_PRIORITY_HIGH:         .userInitiated
//         * DISPATCH_QUEUE_PRIORITY_DEFAULT:      .default
//         * DISPATCH_QUEUE_PRIORITY_LOW:          .utility
//         * DISPATCH_QUEUE_PRIORITY_BACKGROUND:   .background
//         */
//        
//        //执行操作
//        /*
//         //执行
//         public func perform()
//         //等待
//         public func wait()
//         //等待延时
//         public func wait(timeout: DispatchTime) -> DispatchTimeoutResult
//         //等待延时
//         public func wait(wallTimeout: DispatchWallTime) -> DispatchTimeoutResult
//         //通知，同group操作
//         public func notify(qos: DispatchQoS = default, flags: DispatchWorkItemFlags = default, queue: DispatchQueue, execute: @escaping @convention(block) () -> Swift.Void)
//         
//         public func notify(queue: DispatchQueue, execute: DispatchWorkItem)
//         //退出
//         public func cancel()
//         //是否退出
//         public var isCancelled: Bool { get }
//         */
//        
//        let workItem = DispatchWorkItem.init(qos: .unspecified, flags: .barrier) {
//            //TO DO
//            print("public func asyncAfter(deadline: DispatchTime, execute: DispatchWorkItem)")
//        }
//        
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: workItem)
////
//        //上面方法的结合版
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, qos: .default, flags: .barrier) {
//            //TO DO
//            print("public func asyncAfter(deadline: DispatchTime, execute: DispatchWorkItem)")
//
//        }
////
//        //DispatchTime DispatchWallTime区别
//        //文字理解
//        /*
//         DispatchTime时钟，当你电脑休眠的时候就停止计时
//         DispatchWallTime挂钟 ，一直在计时
//         */
//        DispatchQueue.main.asyncAfter(wallDeadline: DispatchWallTime.now() + 4) { 
//            //TO DO
//        }
////
//        //同方法 DispatchQueue.main.asyncAfter(deadline
//        DispatchQueue.main.asyncAfter(wallDeadline: DispatchWallTime.now() + 5, execute: workItem)
////  
//        //同方法 DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, qos: .default, flags: .barrier)
//        DispatchQueue.main.asyncAfter(wallDeadline: DispatchWallTime.now() + 6, qos: .default, flags: .barrier) { 
//            //TO DO
//        }
        Demo()
        
    }

    func Demo() -> Void {
        
        let queue = DispatchQueue.main
        
        let workItem1 = DispatchWorkItem.init(block: {
            //TO DO
            print("UI刷新")
        })
        
        let workItem2 = DispatchWorkItem.init(block: {
            //TO DO
            print("更新数据")
            sleep(2)
            print("获取数据完成")
        })
        
        workItem2.notify(queue: queue, execute: workItem1)
        queue.async(execute: workItem2)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

