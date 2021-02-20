//
//  ViewController.m
//  Agenda_Personal
//
//  Created by AngelZuñiga on 2/11/21.
//


#import "ViewController.h"
#import "../Sources-Classes/Usuario.h"
#import "../Views-Components/HeadView.h"
#import "../Views-Components/TableFromStepSourceView.h"
#import "../Views-Components/NavigationView.h"
@interface ViewController ()

@end
@implementation ViewController{
    BOOL isShowingPortrait;
    Usuario*currentUser;
    UIView*tempNavbarView;
    NSArray*rootViewLandscapeConstraints;
}
-(void)viewDidLoad{
    [super viewDidLoad];
    //[self.navigatiobarMainView setupTittlesOfButtons];
    //currentUser=[[Usuario alloc]initWithName:@"Angel Zuñiga" Password:@"agzc9806545202" Email:@"angel1200z@hotmail.com" Age:21];
    isShowingPortrait=self.traitCollection.verticalSizeClass==UIUserInterfaceSizeClassRegular;//Var to indicate the position of the view
    tempNavbarView=self.navigatiobarMainView;
    self.tableMainView.delegateSteps=self.navigatiobarMainView;
    self.navigatiobarMainView.changed=false;//Firstly the User dons change the state Of The navigationView(None button was clicked)
    self.navigatiobarMainView.delegate=self;//pointer this view as delegade from navigationView
    [self.headerMainView updateInfoWithName:currentUser.usrName];
    [self updateTableView];
    //Init the setupCostraint
    [self setupLandscapeContraints];
    [self.navigatiobarMainView setupLandscapeConstraints];
    
}
-(void)displayLayaoutLandscapeConstraints{
    [self.view removeConstraints:self.navigationbarPortraitConstraints];
    [self.navigatiobarMainView removeConstraints:self.navigatiobarMainView.portraitConstraints];
    [self.view addConstraints:rootViewLandscapeConstraints];
    [self.navigatiobarMainView addConstraints:self.navigatiobarMainView.landscapeConstraint];
}
-(void)setupLandscapeContraints{
    NSDictionary*tempsViews=NSDictionaryOfVariableBindings(tempNavbarView);
    rootViewLandscapeConstraints=[NSLayoutConstraint constraintsWithVisualFormat:@"V:[tempNavbarView]-5-|" options:0 metrics:nil views:tempsViews];
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    if (!isShowingPortrait) {
        [self displayLayaoutLandscapeConstraints];
    }
}
- (void) traitCollectionDidChange: (UITraitCollection *) previousTraitCollection {
    [super traitCollectionDidChange: previousTraitCollection];
    if ((self.traitCollection.verticalSizeClass != previousTraitCollection.verticalSizeClass)
        || (self.traitCollection.horizontalSizeClass != previousTraitCollection.horizontalSizeClass)) {
        if (self.traitCollection.verticalSizeClass==UIUserInterfaceSizeClassRegular) {
            //is Portratit
            [self.view removeConstraints:rootViewLandscapeConstraints];
            [self.navigatiobarMainView removeConstraints:self.navigatiobarMainView.landscapeConstraint];
            [self.view addConstraints:self.navigationbarPortraitConstraints];
            [self.navigatiobarMainView addConstraints:self.navigatiobarMainView.portraitConstraints];
            isShowingPortrait=YES;
            
        } else if(self.traitCollection.verticalSizeClass==UIUserInterfaceSizeClassCompact) {
            //is Landscape
            [self displayLayaoutLandscapeConstraints];
            isShowingPortrait=NO;
        }
    }
}
-(void)updateTableView{
    if (self.navigatiobarMainView.isChanged==true) {
        [self.tableMainView printOption];
        self.navigatiobarMainView.changed=false;
    }/*else{
        self.tableMainView.titleIdentifierLabel.text=NSLocalizedStringWithDefaultValue(@"Label Table", nil, [NSBundle mainBundle], @"Steps", @"Tittle of table view");
    }*/
}
@end

