//
//  ViewController.h
//  TimerTutorial
//
//  Created by Marcela Silva de Albuquerque on 5/22/15.
//  Copyright (c) 2015 Marcela Silva de Albuquerque. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    
    __weak IBOutlet UILabel *timerLabel;
    
    NSInteger seconds;
    NSTimer *timer;
    
}


@end

