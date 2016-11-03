//
//  ScreenshotDetailViewController.m
//  m2048
//
//  Created by Kelo Akalamudo on 11/3/16.
//  Copyright © 2016 Danqing. All rights reserved.
//

#import "ScreenshotDetailViewController.h"

@interface ScreenshotDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *detailImageView;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@end

@implementation ScreenshotDetailViewController

-(void)configureVCWithImage:(UIImage *)image
{
    self.detailImageView.image = image;
}

-(void)viewWillAppear:(BOOL)animated
{
    if (self.screenshot != nil){
        [self configureVCWithImage: self.screenshot];
    }
    self.detailLabel.text = @"2048 Demo";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(handleCancelButtonTapped:)];
    
    self.navigationController.navigationBar.topItem.leftBarButtonItem = cancelButton;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)handleCancelButtonTapped:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
