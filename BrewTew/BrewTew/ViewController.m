//
//  ViewController.m
//  BrewTew
//
//  Created by Consultant on 6/28/22.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
#import "Brewery.h"

NSString *firstVC = @"FirstVC";
NSString *selectedBrew = @"brewState";

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *brewListTableView;
@property NSMutableArray<Brewery *> *breweries;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self fetchData];
    [self setupUI];
    NSLog(@"%@", self.firstVC);
    
}

-(void)setupUI {
    self.breweries = NSMutableArray.new;
    self.navigationItem.title = @"BREWERIES";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
}

-(void)fetchData {
    /*
     Url
     */
    NSString *urlString = @"https://api.openbrewerydb.org/breweries";
    NSURL *url = [NSURL URLWithString: urlString];

    
    [[NSURLSession.sharedSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSError *err;
        //need to pass in the address of the error
        NSArray *postArray = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingAllowFragments error:&err];
        if (err) {
            NSLog(@"Failed to parse JSON: %@", err);
            return;
        }
        NSMutableArray <Brewery *> *breweries = NSMutableArray.new;
        for (NSDictionary *brewDict in postArray) {
            NSString *name = brewDict[@"name"];
            NSString *city = brewDict[@"city"];
            NSString *state = brewDict[@"state"];
            Brewery *brewery = Brewery.new;
            brewery.name = name;
            brewery.city = city;
            brewery.state = state;
            [breweries addObject:brewery];
        }
        
        self.breweries = breweries;
        NSLog(@"Here are the posts :%@", breweries);
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.brewListTableView reloadData];
        });
        
    }] resume];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //get count of countries in countries list for number of tableview cells
    return self.breweries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:selectedBrew forIndexPath:indexPath];
    
    cell.textLabel.text = self.breweries[indexPath.row].name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@, %@", self.breweries[indexPath.row].city, self.breweries[indexPath.row].state];

    return cell;
    
}

-(void)getLastBrewery:(void (^)(NSString *))selectedBrew {
    selectedBrew(self.breweries.lastObject);
}


@end
