//
//  LoginViewController.h
//  Agenda_Personal
//
//  Created by AngelZuñiga on 2/12/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class Usuario;
@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIScrollView *tempScrollViewToSetup;
@property (strong, nonatomic) IBOutlet UIView *loginView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *scrollViewHeightConstraint;

@end

NS_ASSUME_NONNULL_END
