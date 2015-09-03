/*
 * Copyright 2015-present Facebook, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may
 * not use this file except in compliance with the License. You may obtain
 * a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations
 * under the License.
 */

#import "AppViewController.h"

@interface AppViewController ()

@end

@implementation AppViewController {
    UILabel *_label;
}

- (void) viewDidLoad {
    self.view.backgroundColor = [UIColor whiteColor];
    _label = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, self.view.bounds.size.width, 80.0f)];
    _label.text = @"Hello from Buck!";
    _label.textAlignment = NSTextAlignmentCenter;
    _label.font = [UIFont boldSystemFontOfSize:32.0f];
    _label.adjustsFontSizeToFitWidth = YES;
    _label.backgroundColor = [UIColor clearColor];
    [self.view addSubview:_label];
}

- (void) viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    _label.center = CGPointMake(self.view.frame.size.width * 0.5f, self.view.frame.size.height * 0.5f);
}

@end
