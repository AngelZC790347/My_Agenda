//
//  TableFromStepSourceView.h
//  Agenda_Persoanl
//
//  Created by AngelZuñiga on 2/1/21.
//

#import <UIKit/UIKit.h>
#import "../Protocols/TableViewFromStepsProtocol.h"
NS_ASSUME_NONNULL_BEGIN
@class TableFromStepSourceView;
@interface TableFromStepSourceView : UITableView
@property (weak, nonatomic) IBOutlet UILabel *titleIdentifierLabel;
@property(nonatomic,weak) id<TableViewFromStepsProtocol>delegateSteps;
-(void)printOption;
@end

NS_ASSUME_NONNULL_END
