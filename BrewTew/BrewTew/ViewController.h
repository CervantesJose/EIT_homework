//
//  ViewController.h
//  BrewTew
//
//  Created by Consultant on 6/28/22.
//

#import <UIKit/UIKit.h>


@protocol AddPostDelegate <NSObject>

-(void)addCountry: (NSString *)countryName;

@end

@interface ViewController : UIViewController

@property (nonatomic, weak) id <AddPostDelegate> delegate;

@property (nonatomic, weak) ViewController *firstVC;

@property (nonatomic, copy)void(^selectedPost)(NSString *);

-(void)getLastBrewery: (void(^)(NSString *))selectedPost;


@end

