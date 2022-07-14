//
//  SecondViewController.h
//  CarView
//
//  Created by Consultant on 6/27/22.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@protocol AddCarDelegate <NSObject>

-(void)addCar: (NSString *)carName;

@end


@interface SecondViewController : UIViewController

@property (nonatomic, weak) id <AddCarDelegate> delegate;

@property (nonatomic, weak) ViewController *firstVC;

@property (nonatomic, copy)void(^selectedCar)(NSString *);

-(void)getLastCar: (void(^)(NSString *))selectedCar;

@end
