//
//  LoginViewController.m
//  Agenda_Personal
//
//  Created by AngelZuñiga on 2/12/21.
//
#import "LoginViewController.h"
@interface LoginViewController ()
@end
@implementation LoginViewController{
    CGFloat defaultScrollViewHeightConstraints;
    BOOL isPortrait;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateScrollView];
    isPortrait=self.traitCollection.verticalSizeClass==UIUserInterfaceSizeClassRegular;
    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    if (!isPortrait) {
        self.tempScrollViewToSetup.alwaysBounceVertical=TRUE;
    }else{
        self.tempScrollViewToSetup.alwaysBounceVertical=FALSE;
    }
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewDidAppear:animated];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UIKeyboardWillHideNotification object:nil];
}

-(void)didReceiveMemoryWarning{
}
-(void)keyboarDidShow:(NSNotification*)notification{
    NSDictionary*userInfo=[notification userInfo];
    NSValue*aValue=userInfo[UIKeyboardFrameEndUserInfoKey];
    CGRect keyBoardRect=[aValue CGRectValue];
    keyBoardRect=[self.view convertRect:keyBoardRect fromView:nil];
    CGRect interseccion=CGRectIntersection(self.tempScrollViewToSetup.frame, keyBoardRect);
    self.scrollViewHeightConstraint.constant-=interseccion.size.height;
    [self.view updateConstraints];
}
-(void)keyboarWillHide:(NSNotification*)notification{
    self.scrollViewHeightConstraint.constant=defaultScrollViewHeightConstraints;
    [self.view updateConstraints];
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboarDidShow:) name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboarWillHide:) name:UIKeyboardWillHideNotification object:nil];
}
-(void)updateScrollView{//Methos To set equal size To super View
    CGSize *sizeToRect=(CGSize*)malloc(sizeof(CGSize));
    sizeToRect->height=self.view.frame.size.height;
    sizeToRect->width=self.view.frame.size.width;
    CGRect *rectToScroll=(CGRect*)malloc(sizeof(CGRect));
    rectToScroll->size=*sizeToRect;
    self.tempScrollViewToSetup.frame=*rectToScroll;
    NSLog(@"%lf",self.loginView.frame.size.width);
    free(sizeToRect);
    free(rectToScroll);
}
- (void) traitCollectionDidChange: (UITraitCollection *) previousTraitCollection {
    [super traitCollectionDidChange: previousTraitCollection];
    if ((self.traitCollection.verticalSizeClass != previousTraitCollection.verticalSizeClass)
        || (self.traitCollection.horizontalSizeClass != previousTraitCollection.horizontalSizeClass)) {
        if (self.traitCollection.verticalSizeClass==UIUserInterfaceSizeClassRegular) {
            //is Portratit
            self.tempScrollViewToSetup.alwaysBounceVertical=FALSE;
            [self updateScrollView];
        } else if(self.traitCollection.verticalSizeClass==UIUserInterfaceSizeClassCompact) {
            //is Landscape
           [self updateScrollView];
            self.tempScrollViewToSetup.alwaysBounceVertical=TRUE;

        }
    }
}
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
