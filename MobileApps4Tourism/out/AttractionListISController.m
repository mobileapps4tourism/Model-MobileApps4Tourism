		
#import "AttractionListISController.h"

@interface AttractionListISController ()

@end

@implementation AttractionListISController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    //Init objects
    self.attractionsArray = [[NSMutableArray alloc] init];
    
    self.attraction = [[Attraction alloc] init];
    self.attraction.name = @"Vicentine";
    self.attraction.description = @"The beach is easily reached by using the toll road west of Faro. Vicentine beach is a protected natural park where the high cliffs eroded by the Atlantic into a fantastic shape and sweep to the long sandy strand. Vila Nova de Milfontes is the most attractive resort there, despite the village Almograve and Zambujeira Mar has other best beaches.";
    self.attraction.image = [UIImage imageNamed:@"1.png"];
    [self.attractionsArray addObject:self.attraction];
    
	self.attraction = [[Attraction alloc] init];
    self.attraction.name = @"Algarve";
    self.attraction.description = @"Resort in Carvoeiro Algarve is a popular tourist attraction in Portugal.";
    self.attraction.image = [UIImage imageNamed:@"2.png"];
    [self.attractionsArray addObject:self.attraction];
    
    self.attraction = [[Attraction alloc] init];
    self.attraction.name = @"Faro";
    self.attraction.description = @"Tavira is located at east of Faro commonly visited by British tourists. Convento da Graca, a 16th-century Pousada which has been renovated very popular because it offers excellent service. You can take the train along the coast as far to the west of Lagos and Vila Real de Santo Antonio on the Spanish border. Sitting beside a long sandy beach cabanas to the opening menu for the departure of a boat trip through the Formosa Ria nature reserve.";
    self.attraction.image = [UIImage imageNamed:@"3.png"];
    [self.attractionsArray addObject:self.attraction];
    
    self.attraction = [[Attraction alloc] init];
    self.attraction.name = @"Sintra";
    self.attraction.description = @"A romantic attraction of the 19th century who became a favorite tourist. There are a beautiful palace in Sintra Hotels in this area has been renovated to provide modern comfort behind the old world elegance. Here you can enjoy a wonderful trip, with panoramic views, through the wooded hills.";
    self.attraction.image = [UIImage imageNamed:@"4.png"];
    [self.attractionsArray addObject:self.attraction];
    
    self.attraction = [[Attraction alloc] init];
    self.attraction.name = @"Porto";
    self.attraction.description = @"Porto is a great city, a combination of quaint shops that sell a lot of corsets, pastry cream, and clodhopping shoes, and a striking modern design, especially Serralves Museum of Contemporary Art and the home of the famous acoustic House of Music.";
    self.attraction.image = [UIImage imageNamed:@"5.png"];
    [self.attractionsArray addObject:self.attraction];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 460) style:UITableViewStylePlain];
    
    self.tableView.rowHeight = 50;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    self.title = @"Attractions";   
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.attractionsArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    self.attraction = [self.attractionsArray objectAtIndex:indexPath.row];
    cell.textLabel.text = self.attraction.name;
    cell.imageView.image = self.attraction.image;
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    ViewDetailsISController *viewDetailsISController = [[ViewDetailsISController alloc] init];
    viewDetailsISController.attraction = [self.attractionsArray objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:ViewDetailsISController animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
