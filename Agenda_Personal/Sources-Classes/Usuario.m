//
//  Usuario.m
//  Agenda_Personal
//
//  Created by AngelZuñiga on 2/3/21.
//

#import "Usuario.h"

@implementation Usuario
-(id)initWithName:(NSString *)argName Password:(NSString *)argPassword Email:(NSString *)argEmail Age:(int)argAge{
    self=[super init];
    if (self!=NULL) {
        _usrName=[argName copy];
        _usrPassword=[argPassword copy];
        _usrAge=argAge;
        _usrEmail=[argEmail copy];
    }
    return  self;
}
-(void)updateUser{
    
}

@end
