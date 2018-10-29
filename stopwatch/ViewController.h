//
//  ViewController.h
//  stopwatch
//
//  Created by Rizwan Khan on 10/29/18.
//  Copyright © 2018 Rizwan Khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSTimer *myTimer;
    BOOL running;
    int count;
}

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UIButton *startBtn;
@property (weak, nonatomic) IBOutlet UIButton *resetBtn;


- (IBAction)startBtnPushed:(id)sender;

- (IBAction)resetBtnPushed:(id)sender;


- (void) updateTimer;



@end

