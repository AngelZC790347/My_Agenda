//
//  NavigationMainView.m
//  Agenda_Persoanl
//
//  Created by AngelZuñiga on 2/1/21.
//

#import "NavigationView.h"
@interface NavigationView()
@property NSString*stringOption;
@end
@implementation NavigationView{
    UIButton*tempTaskButtons;
}
/*-(void)setupTittlesOfButtons{
    NSString*localString;
    localString=NSLocalizedStringWithDefaultValue(@"ExamsButton", nil, [NSBundle mainBundle], @"Exams", @"Button for display exams");
    [self.examsButton setTitle:localString forState:UIControlStateNormal];
    localString=NSLocalizedStringWithDefaultValue(@"ProjectsButton", nil, [NSBundle mainBundle], @"Projects", @"Button for display projects");
    [self.projectsButton setTitle:localString forState:UIControlStateNormal];
    localString=NSLocalizedStringWithDefaultValue(@"PracticesButton", nil, [NSBundle mainBundle], @"Practices", @"Button for display practices");
    [self.practicesButton setTitle:localString forState:UIControlStateNormal];
    localString=NSLocalizedStringWithDefaultValue(@"TasksButton", nil, [NSBundle mainBundle], @"Tasks", @"Button for display tasks");
    [self.tasksButton setTitle:localString forState:UIControlStateNormal];
}*/
-(void)setupLandscapeConstraints{
    tempTaskButtons=self.tasksButton;
    NSDictionary*tempsViews=NSDictionaryOfVariableBindings(tempTaskButtons);
    self.landscapeConstraint=[NSLayoutConstraint constraintsWithVisualFormat:@"V:[tempTaskButtons]-0-|" options:0 metrics:nil views:tempsViews];
}
-(void)changeStateWithString:(NSString*)stringOtion{
    self.stringOption=[stringOtion copy];
    self.changed=true;
    [self.delegate updateTableView];
}
- (IBAction)tasksDisplayerButton:(UIButton *)sender {
    [self changeStateWithString:[self.tasksButton currentTitle]];
}

- (IBAction)examsDisplayerButton:(UIButton *)sender {
    [self changeStateWithString:[self.examsButton currentTitle]];
}
- (IBAction)practicesDisplayerButton:(UIButton*)sender {
    [self changeStateWithString:[self.practicesButton currentTitle]];
}
- (IBAction)projectsDisplayerButton:(UIButton*)sender {
    [self changeStateWithString:[self.projectsButton currentTitle]];
}
-(NSString*)stepOption{
    return self.stringOption;
}
-(void)updateChanges{
    
}
- (IBAction)projectsButton:(id)sender {
}
@end
