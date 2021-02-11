//
//  TableFromStepSourceView.m
//  Agenda_Persoanl
//
//  Created by AngelZuñiga on 2/1/21.
//

#import "TableFromStepSourceView.h"

@implementation TableFromStepSourceView
-(void)printOption{
    NSLog(@"Option %@",self.delegateSteps);
    self.titleIdentifierLabel.text=[self.delegateSteps stepOption] ;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
