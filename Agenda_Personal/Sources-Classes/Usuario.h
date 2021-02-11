//
//  Usuario.h
//  Agenda_Personal
//
//  Created by AngelZuñiga on 2/3/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Usuario : UIResponder
@property int usrAge;
@property NSString *usrName;
@property NSString *usrPassword;
@property NSString *usrEmail;
-(id)initWithName:(NSString*)argName Password:(NSString*)argPassword Email:(NSString*)argEmail Age:(int)argAge;
-(void)updateUser;
@end

NS_ASSUME_NONNULL_END
