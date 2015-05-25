//
//  ViewController.m
//  TimerTutorial
//
//  Created by Marcela Silva de Albuquerque on 5/22/15.
//  Copyright (c) 2015 Marcela Silva de Albuquerque. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self countDown];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)countDown {
    seconds = 20;
    timerLabel.text = [NSString stringWithFormat:@"Time: %li", seconds];
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(subtractTime) userInfo:nil repeats:YES];
}

- (void)subtractTime {
    seconds--;
    timerLabel.text = [NSString stringWithFormat:@"Time: %li", seconds];
    
    if (seconds == 0) {
        [timer invalidate];
    }
}

@end
