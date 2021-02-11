//
//  HeadView.h
//  Agenda_Persoanl
//
//  Created by AngelZuñiga on 2/1/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HeadView : UIView
@property (weak,nonatomic)IBOutlet UILabel*tittleFromThisViewLabel;
@property (weak,nonatomic)IBOutlet UILabel*userNameLabel;
-(void)updateInfoWithName:(NSString*)nameString TittleString:(NSString*)tittleString;
@end
NS_ASSUME_NONNULL_END
