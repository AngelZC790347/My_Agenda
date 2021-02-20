//
//  HeadView.m
//  Agenda_Persoanl
//
//  Created by AngelZuñiga on 2/1/21.
//

#import "HeadView.h"
@implementation HeadView
-(void)updateInfoWithName:(nonnull NSString*)nameString{
    self.userNameLabel.text=[nameString copy];
    
}
@end
