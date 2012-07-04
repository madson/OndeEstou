//
//  ViewController.h
//  OndeEstou
//
//  Created by Madson Mac on 7/3/12.
//  Copyright (c) 2012 madsonmac.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate>
{
	IBOutlet MKMapView *mapView;
}

@end