//
//  DestinationDetails.m
//  Navigation Controller
//
//  Created by Walter Gonzalez Domenzain on 24/06/16.
//  Copyright © 2016 Smartplace. All rights reserved.
//

#import "DestinationDetails.h"

@interface DestinationDetails ()
@property NSMutableArray *cityTitles;

@property NSString *stTitleSel;

@end

@implementation DestinationDetails
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
- (void)initController {
    self.lblTitle.text          = self.destinationTitle;
    if([self.lblTitle.text  isEqual: @"Jalisco"])
    {
    self.cityTitles  = [[NSMutableArray alloc] initWithObjects: @"GDL", @"Zapopan", @"Tonala", @"Vallarta", @"Arandas", nil];
    }
    else if([self.lblTitle.text  isEqual: @"Sinaloa"])
    {
    self.cityTitles  = [[NSMutableArray alloc] initWithObjects: @"Culiacan", @"Los Mochis", @"Mazatlan", @"Guasave", @"Rosario", nil];
    }
    else if([self.lblTitle.text  isEqual: @"Sonora"])
    {
    self.cityTitles  = [[NSMutableArray alloc] initWithObjects: @"Hermosillo", @"Navojoa", @"Nogales", @"Ures", @"Rayon", nil];
    }
    else if([self.lblTitle.text  isEqual: @"BCS"])
    {
    self.cityTitles  = [[NSMutableArray alloc] initWithObjects: @"La Paz", @"Comondu", @"Mulege", @"Santa Rosalia", @"Loreto", nil];
    }
    else
    {
    self.cityTitles  = [[NSMutableArray alloc] initWithObjects: @"Tepic", @"Bahia de Banderas", @"San Blas", @"Tecuala", @"Compostela", nil];
    }
    
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.cityTitles.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}
//-------------------------------------------------------------------------------
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    //1. Setup the CATransform3D structure
    CATransform3D rotation;
    rotation = CATransform3DMakeRotation( (90.0*M_PI)/180, 0.0, 0.7, 0.4);
    rotation.m34 = 1.0/ -600;
    
    //2. Define the initial state (Before the animation)
    cell.layer.shadowColor = [[UIColor blackColor]CGColor];
    cell.layer.shadowOffset = CGSizeMake(10, 10);
    cell.alpha = 0;
    
    cell.layer.transform = rotation;
    cell.layer.anchorPoint = CGPointMake(0, 0.5);
    
    //3. Define the final state (After the animation) and commit the animation
    [UIView beginAnimations:@"rotation" context:NULL];
    [UIView setAnimationDuration:0.4];
    cell.layer.transform = CATransform3DIdentity;
    cell.alpha = 1;
    cell.layer.shadowOffset = CGSizeMake(0, 0);
    
    //Reassure that cell its in its place (WaGo)
    cell.frame = CGRectMake(0, cell.frame.origin.y, cell.frame.size.width, cell.frame.size.height);
    [UIView commitAnimations];
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellCity *cell = (cellCity *)[tableView dequeueReusableCellWithIdentifier:@"cellCity"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellCity" bundle:nil] forCellReuseIdentifier:@"cellCity"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellCity"];
    }
    //Fill cell with info from arrays
    cell.lblCity.text   = self.cityTitles[indexPath.row];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.stTitleSel       = self.cityTitles[indexPath.row];
    [self performSegueWithIdentifier:@"CityDetail" sender:self];
}
/**********************************************************************************************/
#pragma mark - Navigation
/**********************************************************************************************/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.destinationViewController isKindOfClass:[CityDetail class]]) {
        CityDetail *destination     = [segue destinationViewController];
        destination.cityTitle       = self.stTitleSel;
        destination.cityState       = self.destinationTitle;
        
    }

}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
