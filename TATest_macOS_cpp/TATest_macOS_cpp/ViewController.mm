//
//  ViewController.m
//  TATest_macOS_cpp
//
//  Created by yazhoudeng on 2022/8/5.
//

#import "ViewController.h"


#include <iostream> //std::cout 需要


#include "TATestCPPMain.hpp"



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
    NSLog(@"====>>>>:如果要调用C++，必须把.m 改成.mm");

    printf("====>>>>:C\n");
    
    std::cout<<"====>>>>:C++\n";
    
    
    tatestcpp::TATestCPPMain::testone();
    
    tatestcpp::TATestCPPMain::testTA();
    
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
