//
//  ViewController.m
//  TomCat
//
//  Created by 王宇 on 15/4/14.
//  Copyright (c) 2015年 VOREVER. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (BOOL)prefersStatusBarHidden{
    return YES;
}

- (void)animotinWithName:(NSString *)AnimotinName andCount:(NSInteger)count{
    if (_tom.isAnimating) {
        return;
    }
    NSMutableArray *arrayTom = [NSMutableArray array];
    for (int i=0; i<=count; i++) {
        NSString *name = [NSString stringWithFormat:@"%@_%02d.jpg",AnimotinName,i];
        NSString *path = [[NSBundle mainBundle] pathForResource:name ofType:nil];
        UIImage *imageTom = [UIImage imageWithContentsOfFile:path];
        [arrayTom addObject:imageTom];
    }
    _tom.animationImages = arrayTom;
    _tom.animationRepeatCount = 1;
    _tom.animationDuration = arrayTom.count * 0.075;
    [_tom startAnimating];
    [_tom performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:_tom.animationDuration];
}

- (IBAction)knockout {
    [self animotinWithName:@"knockout" andCount:80];
}

- (IBAction)stomach {
    [self animotinWithName:@"stomach" andCount:33];
}

- (IBAction)footleft {
    [self animotinWithName:@"footRight" andCount:29];
}

- (IBAction)footright {
    [self animotinWithName:@"footLeft" andCount:29];
}

- (IBAction)angry {
    [self animotinWithName:@"angry" andCount:25];
}

- (IBAction)eat {
    [self animotinWithName:@"eat" andCount:39];
}

- (IBAction)fart {
    [self animotinWithName:@"fart" andCount:27];
}

- (IBAction)drink {
    [self animotinWithName:@"drink" andCount:80];
}

- (IBAction)pie {
    [self animotinWithName:@"pie" andCount:23];
}

- (IBAction)scratch {
    [self animotinWithName:@"scratch" andCount:55];
}

- (IBAction)cymbal {
    [self animotinWithName:@"cymbal" andCount:12];
}

@end
