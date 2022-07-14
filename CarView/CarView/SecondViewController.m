//
//  SecondViewController.m
//  CarView
//
//  Created by Consultant on 6/27/22.
//


#import "SecondViewController.h"
#import "ViewController.h"


NSString *selectedCar = @"carState";

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UITableView *carListTableView;

@end

@implementation SecondViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupConfiguration];
    NSLog(@"%@", self.firstVC);
}

- (void)setupConfiguration {
    self.title = @"List of Cahs";
}
/*
 static list of cars and images array to populate tableview
 */
- (NSArray *)carList {
    
    NSArray *carList = [NSArray arrayWithObjects:@"AstonMartinDBSSuperleggera", @"AudiRs6Avant", @"BentleyContinentalGT", @"BugattiChiron", @"FerrariSF90Stradale", @"LamborghiniAventador", @"MercedesAMGGT63S", @"PorcheTaycan", @"VolvoPolestar", @"TeslaRoadster", nil];
    
    return carList;
}

/*
 TableView Methods; delegates have been set in storyboard
 */

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //get count of countries in countries list for number of tableview cells
    return self.carList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:selectedCar forIndexPath:indexPath];
    
    cell.textLabel.text = [self.carList objectAtIndex:indexPath.row];
    //cell.UIImage.image = [self.carList objectAtIndex:indexPath.row];

    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:false];
    [self.navigationController popToRootViewControllerAnimated:true];
         // Update the label
         //KVC
//  self.firstVC.clickHereLabel.text = [self.countriesList objectAtIndex:indexPath.row];
        //Delegation
//    [self.delegate addCountry:[self.countriesList objectAtIndex:indexPath.row]];
    //Block closure
    self.selectedCar([self.carList objectAtIndex:indexPath.row]);
}

-(void)getLastCar: (void(^)(NSString *))selectedCar {
    selectedCar(self.carList.lastObject);
}

@end
