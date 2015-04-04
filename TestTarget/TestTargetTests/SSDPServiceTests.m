//
//  SSDPServiceTests.m
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
#import "SSDPService.h"

static NSString * const kLocationHeaderString = @"headerString";
static NSString * const kServiceTypeHeaderString = @"serviceType";
static NSString * const kUniqueServiceNameHeaderString = @"usn";
static NSString * const kServerHeaderString = @"server";

@interface SSDPServiceTests : XCTestCase

@end

@implementation SSDPServiceTests

- (void)testServiceCanBeInitiatedWithHeaders {
    // given
    NSDictionary *headers = @{ @"location" : kLocationHeaderString,
                               @"st" : kServiceTypeHeaderString,
                               @"usn" : kUniqueServiceNameHeaderString,
                               @"server" : kServiceTypeHeaderString };
    NSURL *location = [NSURL URLWithString:kLocationHeaderString];
    
    // when
    SSDPService *service = [[SSDPService alloc] initWithHeaders:headers];
    
    // then
    XCTAssert([service.location isEqual:location], @"Location should be set");
    XCTAssert([service.serviceType isEqualToString:kServiceTypeHeaderString], @"Service type should be set");
    XCTAssert([service.uniqueServiceName isEqualToString:kUniqueServiceNameHeaderString], @"Unique service name should be set");
    XCTAssert([service.server isEqualToString:kServiceTypeHeaderString], @"Server should be set");
}

@end
