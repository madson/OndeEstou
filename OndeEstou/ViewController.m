//
//  ViewController.m
//  OndeEstou
//
//  Created by Madson Mac on 7/3/12.
//  Copyright (c) 2012 madsonmac.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

	- (void)viewDidLoad
	{
		[super viewDidLoad];
		
		CLLocationManager *locationManager = [[CLLocationManager alloc] init];
		
		locationManager.delegate = self;
		
		[locationManager startUpdatingLocation];
		
		[mapView setShowsUserLocation:YES];
	}

- (void)locationManager:(CLLocationManager *)manager
	didUpdateToLocation:(CLLocation *)newLocation
		   fromLocation:(CLLocation *)oldLocation
{
	if (newLocation != oldLocation)
	{
        CLLocationCoordinate2D location; 
		location.latitude = newLocation.coordinate.latitude;
		location.longitude = newLocation.coordinate.longitude;
		
		MKCoordinateSpan span;
        span.latitudeDelta = 0.005;
        span.longitudeDelta = 0.005;
		
        MKCoordinateRegion region;
        region.span = span;
        region.center = location;
		
		[mapView setRegion:region animated:YES];
	}
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
