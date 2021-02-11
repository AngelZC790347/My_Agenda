//
//  HeadView.m
//  Agenda_Persoanl
//
//  Created by AngelZuñiga on 2/1/21.
//

#import "HeadView.h"
@implementation HeadView
-(void)updateInfoWithName:(NSString*)nameString TittleString:(NSString *)tittleString{
    self.userNameLabel.text=[nameString copy];
    self.tittleFromThisViewLabel.text=[tittleString copy];
}
@end
