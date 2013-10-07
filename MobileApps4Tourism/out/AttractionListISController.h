
#import <UIKit/UIKit.h>
#import "ViewDetailsISController.h"
#import "Attraction.h"
		
@interface AttractionListISController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, retain) UITableView *tableView;
@property (nonatomic, retain) NSMutableArray *attractionsArray;
@property (nonatomic, retain) Attraction *attraction;

@end
