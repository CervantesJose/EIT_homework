//
//  ViewController.m
//  CarView
//
//  Created by Consultant on 6/27/22.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import <UIKit/UIKit.h>


/*
 Storyboard identifiers for first and second VCs
 */
NSString  *firstVC = @"FirstVC";
NSString  *secondVC = @"SecondVC";


@interface ViewController () <AddCarDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupConfiguration];

}

- (void)setupConfiguration {
    self.title = @"Selected Car";
    self.clickHereLabel.layer.cornerRadius = 20;
    self.clickHereLabel.text = @"Tap Here";
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickHereTapped:)];
    [self.clickHereView addGestureRecognizer:tapGesture];
    
    
    //UIImageView *carImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
    
    
       
    self.UIImage.image = [UIImage imageNamed:@"AstonMartinDBSSuperleggera"];
    
}

- (IBAction)clickHereTapped:(id)sender {
    
    SecondViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:secondVC];
    
    // Delegation
//    [secondViewController setDelegate:self];
    // KVC
//    secondViewController.firstVC = self;
    
    // Block passing data back
    secondViewController.selectedCar = ^(NSString *car) {
        self.clickHereLabel.text = car;
    };
    
    [secondViewController getLastCar:^(NSString * finalCar) {
        
    }];
    [self.navigationController pushViewController:secondViewController animated:YES];
}

- (void)addCar:(NSString *)carName {
    
    [self.clickHereLabel setText:carName];
    

}

@end
