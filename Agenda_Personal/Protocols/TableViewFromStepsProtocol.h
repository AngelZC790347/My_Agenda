//
//  TableViewFromStepsProtocol.h
//  Agenda_Personal
//
//  Created by AngelZuñiga on 2/3/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol TableViewFromStepsProtocol <NSObject>
-(NSString*)stepOption;
-(void)updateChanges;
@end

NS_ASSUME_NONNULL_END
