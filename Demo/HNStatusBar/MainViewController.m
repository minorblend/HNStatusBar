//
//  MainViewController.m
//  HNStatusBar
//
// This is under The MIT License
//
// Copyright © 2012 Ha-Nyung Chung <minorblend@gmail.com>
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//

#import "MainViewController.h"

#import "HNStatusBar.h"

@interface MainViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)showText:(id)sender;
- (IBAction)showTextAndDisappear:(id)sender;
- (IBAction)clearText:(id)sender;
- (IBAction)changeProgress:(UISlider *)sender;

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)showText:(id)sender {
    [HNStatusBar setText:self.textField.text];
}

- (IBAction)showTextAndDisappear:(id)sender {
    [HNStatusBar setText:self.textField.text during:3 animated:YES];
}

- (IBAction)clearText:(id)sender {
    [HNStatusBar clearText];
}

- (IBAction)changeProgress:(UISlider *)sender {
    [HNStatusBar setProgress:sender.value];
}
@end
