//
//  ViewController.h
//  Agenda_Personal
//
//  Created by AngelZuñiga on 2/11/21.
//

#import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
#import "./Protocols/ChangedStateProtocol.h"
@class HeadView;
@class NavigationView;
@class TableFromStepSourceView;
@interface ViewController : UIViewController<ChangedStateProtocol>
@property (weak, nonatomic) IBOutlet HeadView *headerMainView;
@property (weak, nonatomic) IBOutlet NavigationView *navigatiobarMainView;
@property (weak, nonatomic) IBOutlet TableFromStepSourceView *tableMainView;
@property (strong, nonatomic) IBOutletCollection(NSLayoutConstraint) NSArray *navigationbarPortraitConstraints;

@end


