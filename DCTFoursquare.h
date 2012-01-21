//
//  DCTFoursquare.h
//  DCTFoursquare
//
//  Created by Daniel Tull on 21.01.2012.
//  Copyright (c) 2012 Daniel Tull Limited. All rights reserved.
//

#ifndef dctfoursquare
#define dctfoursquare_1_0     10000
#define dctfoursquare         dctfoursquare_1_0
#endif


#import "DCTConnectionController.h"
#if dctconnectioncontroller < 20200
#warning "DCTConnectionController 2.2 is required with DCTFoursquare. Update at https://github.com/danielctull/DCTConnectionController"
#endif



#import "DCTFoundation.h"
#if dctfoundation < 20001
#warning "DCTFoundation 2.0.1 is required with DCTFoursquare. Get it at https://github.com/danielctull/DCTFoundation"
#endif



#import "DCTCoreData.h"
#if dctcoredata < 20100
#warning "DCTCoreData 2.1 is required with DCTFoursquare. Get it at https://github.com/danielctull/DCTCoreData"
#endif



#import "DCTCoreDataStack.h"
#if dctcoredatastack < 10000
#warning "DCTCoreDataStack 1.0 is required with DCTFoursquare. Get it at https://github.com/danielctull/DCTCoreDataStack"
#endif

