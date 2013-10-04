
#import <UIKit/UIKit.h>
#import "Attraction.h"

@interface MainViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, retain) UITableView *tableView;
@property (nonatomic, retain) NSMutableArray *attractionsArray;
@property (nonatomic, retain) Attraction *attraction;

@end

