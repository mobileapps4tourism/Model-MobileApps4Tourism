		
#import <UIKit/UIKit.h>
#import "Attraction.h"
		
@interface ViewDetailsISController : UIViewController
		
@property (nonatomic, retain) IBOutlet UIImageView *imageView;
@property (nonatomic, retain) IBOutlet UITextView *textView;
@property (nonatomic, retain) Attraction *attraction;
		
@end