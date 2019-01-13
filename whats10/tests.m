//
//  tests.m
//  whats10
//
//  Created by MacBook 10 on 7‏/10‏/2018.
//

#import "tests.h"
#import "imports.h"



@interface tests ()

@end





@implementation tests

- (void)viewDidLoad {
    [super viewDidLoad];

//    UIButton *Whats10Btn = [[UIButton alloc]init];
//    [Whats10Btn setFrame:CGRectMake(0, 0, 50, 50)];
//    [Whats10Btn setBackgroundImage:[UIImage imageNamed:@"/Library/Application Support/Whats10.bundle/Img10Settings.png"] forState:UIControlStateNormal];
//    [Whats10Btn addTarget:self action:@selector(<#selector#>) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:Whats10Btn];
    self.view.backgroundColor = [UIColor clearColor];

    

}
- (void)layoutSubviews{
//    self.view.backgroundColor = Nightk10Color;
}

- (void)viewWillAppear:(_Bool)arg1{
    
    [self didClosePortraitAdView];
    
}
-(void)didClosePortraitAdView{
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
