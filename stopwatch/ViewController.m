//
//  ViewController.m
//  stopwatch
//
//  Created by Rizwan Khan on 10/29/18.
//  Copyright © 2018 Rizwan Khan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize timeLabel, startBtn, resetBtn;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    running = NO;
    count = 0;
    timeLabel.text = @"00:00.00";
    
    startBtn.layer.cornerRadius = 45;
    resetBtn.layer.cornerRadius = 45;
    
}



- (IBAction)resetBtnPushed:(id)sender {
    
    [self stopTimer];
    
    count = 0;
    timeLabel.text = @"00:00.00";
    
}

- (IBAction)startBtnPushed:(id)sender {
    
    if(running == NO)
    {
        running = YES;
        [startBtn setTitle:@"STOP" forState:UIControlStateNormal];
        
        if(myTimer == nil)
        {
            myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];

        }
        
}
    else {
        [self stopTimer];
    }
    
}

-(void) stopTimer {
    
    running = NO;
    [myTimer invalidate];
    myTimer = nil;
    [startBtn setTitle:@"START" forState: UIControlStateNormal];
}


-(void) updateTimer {
    count++;
    
    int min = floor(count/100/60);
    int sec = floor(count/100);
    int mSec = count % 100;
    
    if(sec >= 60)
    {
        sec = sec % 60;
    }
    
    timeLabel.text = [NSString stringWithFormat:@"%02d:%02d.%02d", min, sec, mSec];
}

@end
