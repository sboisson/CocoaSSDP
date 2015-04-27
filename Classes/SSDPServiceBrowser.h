//
//  SSDPServiceBrowser.h
//  Copyright (c) 2014 Stephane Boisson
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import <Foundation/Foundation.h>

@class SSDPServiceBrowser;
@class SSDPService;

/**
 The `SSDPServiceBrowserDelegate` protocol is adopted by an object that wishes
 to be informed of devices that are found or removed during a browsers search
 cycle.
 */
@protocol SSDPServiceBrowserDelegate

/**
 Report the browser failed to start browsing for services.

 @param browser The current browser instance.
 @param error   An `NSError` detailing the error which occured.
 */
- (void)ssdpBrowser:(SSDPServiceBrowser *)browser didNotStartBrowsingForServices:(NSError *)error;

/**
 Report a found `SSDPService`.

 @param browser The current browser instance.
 @param service The service which was found.
 */
- (void)ssdpBrowser:(SSDPServiceBrowser *)browser didFindService:(SSDPService *)service;

/**
 Report a removed `SSDPService`.

 @param browser The current browser instance.
 @param service The service which was found.
 */
- (void)ssdpBrowser:(SSDPServiceBrowser *)browser didRemoveService:(SSDPService *)service;
@end


@interface SSDPServiceBrowser : NSObject

/**
 The network interface to bind to.
 */
@property(readonly, nonatomic) NSString *networkInterface;

/**
 A delegate to inform of browsing events.
 */
@property(assign, nonatomic) id<SSDPServiceBrowserDelegate> delegate;

/**
 Initialize a new browser on a specific network interface.

 @param networkInterface The network interface to bind to.

 @return Returns a browser instance bound to a service type and network interface.
 */
- (id)initWithInterface:(NSString *)networkInterface;

/**
 Start browsing for UPnP services matching the browsers service type.

 @param serviceType The UPnP service type to search for.
 */
- (void)startBrowsingForServices:(NSString *)serviceType;

/**
 Stop browsing for UPnP services.
 */
- (void)stopBrowsingForServices;


/**
 Get a list of network interfaces available to the current device.

 @return Returns a dictionary of interface names and addresses.
 */
+ (NSDictionary *)availableNetworkInterfaces;

@end
