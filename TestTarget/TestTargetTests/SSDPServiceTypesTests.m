//
//  SSDPServiceTypesTests.m
//  Copyright (c) 2015 Paul Williamson
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

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "SSDPServiceTypes.h"

@interface SSDPServiceTypesTests : XCTestCase

@end

@implementation SSDPServiceTypesTests

#pragma mark - General Device Searches

- (void)testServiceTypeAll {
    NSString *expected = @"ssdp:all";
    XCTAssert([SSDPServiceType_All isEqualToString:expected],
              @"All devices service type incorrect");
}

- (void)testServiceTypeRootDevice {
    NSString *expected = @"upnp:rootdevice";
    XCTAssert([SSDPServiceType_UPnP_RootDevice isEqualToString:expected],
              @"Root devices service type incorrect");
}

#pragma mark - Internet Gateway Devices

- (void)testServiceTypeInternetGatewayDevice1 {
    NSString *expected = @"urn:schemas-upnp-org:device:InternetGatewayDevice:1";
    XCTAssert([SSDPServiceType_UPnP_InternetGatewayDevice1 isEqualToString:expected],
              @"Internet gateway device service type incorrect");
}

- (void)testServiceTypeWANConnectionDevice1 {
    NSString *expected = @"urn:schemas-upnp-org:device:WANConnectionDevice:1";
    XCTAssert([SSDPServiceType_UPnP_WANConnectionDevice1 isEqualToString:expected],
              @"WAN connection device service type incorrect");
}

- (void)testServiceTypeWANDevice1 {
    NSString *expected = @"urn:schemas-upnp-org:device:WANDevice:1";
    XCTAssert([SSDPServiceType_UPnP_WANDevice1 isEqualToString:expected],
              @"WAN device service type incorrect");
}

- (void)testServiceTypeWANCommonInterfaceConfig {
    NSString *expected = @"urn:schemas-upnp-org:service:WANCommonInterfaceConfig:1";
    XCTAssert([SSDPServiceType_UPnP_WANCommonInterfaceConfig1 isEqualToString:expected],
              @"WAN common interface config service type incorrect");
}

- (void)testServiceTypeWANIPConnection {
    NSString *expected = @"urn:schemas-upnp-org:service:WANIPConnection:1";
    XCTAssert([SSDPServiceType_UPnP_WANIPConnection1 isEqualToString:expected],
              @"WAN IP connection service type incorrect");
}

- (void)testServiceTypeLayer3Forwarding {
    NSString *expected = @"urn:schemas-upnp-org:service:Layer3Forwarding:1";
    XCTAssert([SSDPServiceType_UPnP_Layer3Forwarding1 isEqualToString:expected],
              @"Layer 3 forwarding service type incorrect");
}

#pragma mark - AV Profile

- (void)testServiceTypeMediaServer {
    NSString *expected = @"urn:schemas-upnp-org:device:MediaServer:1";
    XCTAssert([SSDPServiceType_UPnP_MediaServer1 isEqualToString:expected],
              @"Media server device service type incorrect");
}

- (void)testServiceTypeMediaRenderer {
    NSString *expected = @"urn:schemas-upnp-org:device:MediaRenderer:1";
    XCTAssert([SSDPServiceType_UPnP_MediaRenderer1 isEqualToString:expected],
              @"Media renderer device service type incorrect");
}

- (void)testServiceTypeContentDirectory {
    NSString *expected = @"urn:schemas-upnp-org:service:ContentDirectory:1";
    XCTAssert([SSDPServiceType_UPnP_ContentDirectory1 isEqualToString:expected],
              @"Content directory service type incorrect");
}

- (void)testServiceTypeConnectionManager {
    NSString *expected = @"urn:schemas-upnp-org:service:ConnectionManager:1";
    XCTAssert([SSDPServiceType_UPnP_ConnectionManager1 isEqualToString:expected],
              @"Connection manager service type incorrect");
}

- (void)testServiceTypeRenderingControl {
    NSString *expected = @"urn:schemas-upnp-org:service:RenderingControl:1";
    XCTAssert([SSDPServiceType_UPnP_RenderingControl1 isEqualToString:expected],
              @"Rendering control service type incorrect");
}

- (void)testServiceTypeAVTransport {
    NSString *expected = @"urn:schemas-upnp-org:service:AVTransport:1";
    XCTAssert([SSDPServiceType_UPnP_AVTransport1 isEqualToString:expected],
              @"AV transport service type incorrect");
}

#pragma mark - Microsoft A/V Profile

- (void)testServiceTypeMediaReceiverRegistrar {
    NSString *expected = @"urn:microsoft.com:service:X_MS_MediaReceiverRegistrar:1";
    XCTAssert([SSDPServiceType_Microsoft_MediaReceiverRegistrar1 isEqualToString:expected],
              @"Microsoft media receiver registrar service type incorrect");
}

@end
