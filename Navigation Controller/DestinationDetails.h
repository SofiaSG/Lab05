//
//  DestinationDetails.h
//  Navigation Controller
//
//  Created by Walter Gonzalez Domenzain on 24/06/16.
//  Copyright © 2016 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "cellCity.h"
#include "CityDetail.h"

@interface DestinationDetails : UIViewController
@property NSString *destinationTitle;
@property NSString *destinationDescription;
@property NSString *destinationPhoto;

@property (strong, nonatomic) IBOutlet UILabel *lblTitle;

@end
