//
//  CityDetail.h
//  Navigation Controller
//
//  Created by Lucio on 6/29/16.
//  Copyright © 2016 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CityDetail : UIViewController

@property NSString *cityTitle;
@property NSString *cityState;
@property (strong, nonatomic) IBOutlet UIImageView *imgcity;
@property (strong, nonatomic) IBOutlet UILabel *lblcity;
@property (strong, nonatomic) IBOutlet UILabel *lbldesc;

@end
