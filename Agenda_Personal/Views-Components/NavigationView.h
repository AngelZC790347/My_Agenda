//
//  NavigationMainView.h
//  Agenda_Persoanl
//
//  Created by AngelZuñiga on 2/1/21.
//

#import <UIKit/UIKit.h>
#import "../Protocols/TableViewFromStepsProtocol.h"
#import "../Protocols/ChangedStateProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface NavigationView : UIView<TableViewFromStepsProtocol>
@property(weak,nonatomic)id<ChangedStateProtocol>delegate;
@property(nonatomic,readonly) NSString*stringOption;
@property (nonatomic,getter=isChanged)BOOL changed;
@property IBOutlet UIButton*examsButton;
@property IBOutlet UIButton*projectsButton;
@property IBOutlet UIButton*practicesButton;
@property IBOutlet UIButton*tasksButton;
@property NSArray*landscapeConstraint;
@property IBOutletCollection(NSLayoutConstraint)NSArray*portraitConstraints;
-(void)changeStateWithString:(NSString*)stringOption;
-(void)setupLandscapeConstraints;
-(void)setupTittlesOfButtons;
- (IBAction)projectsDisplayerButton:(id)sender;
- (IBAction)practicesDisplayerButton:(id)sender;
- (IBAction)examsDisplayerButton:(id)sender;
- (IBAction)tasksDisplayerButton:(id)sender;

@end

NS_ASSUME_NONNULL_END
