//
//  HZYProViewController.m
//  Lottery
//
//  Created by huziyi on 2015-10-28.
//  Copyright © 2015 huziyi. All rights reserved.
//

#import "HZYProViewController.h"
#import "HZYProduct.h"
#import "ProductCell.h"

#define HZYProductCellID @"product"

@interface HZYProViewController ()
@property (nonatomic, strong) NSArray *products;
@end

@implementation HZYProViewController

- (NSArray *)products{
    if(_products == nil){
        //JSON file's path
        NSString *path = [[NSBundle mainBundle] pathForResource:@"products.json" ofType:nil];
        //load JSON file
        NSData *data = [NSData dataWithContentsOfFile:path];
        //translate the JSON data to the NSArray or NSDictionary
        NSArray *dictArray = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        
        //change the dictionary to the model
        NSMutableArray *productArray = [NSMutableArray array];
        for (NSDictionary *dict in dictArray) {
            HZYProduct *p = [HZYProduct productWithDict:dict];
            [productArray addObject:p];
        }
        
        _products = productArray;
    }
    return _products;
}

- (id)init{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    // the size of every cell
    layout.itemSize = CGSizeMake(80, 80);
    // set the vertical distance between the cell
    layout.minimumInteritemSpacing = 0;
    // set the horizontal distance between the cell
    layout.minimumLineSpacing = 10;
    // set the top distance
    layout.sectionInset = UIEdgeInsetsMake(layout.minimumLineSpacing, 0, 0, 0);
    return [super initWithCollectionViewLayout:layout];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    //[self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:HZYProductCellID];
    
    //use self xib file to get a new cell
    UINib *nib = [UINib nibWithNibName:@"ProductCell" bundle:nil];
    [self.collectionView registerNib:nib forCellWithReuseIdentifier:HZYProductCellID];
    
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:HZYProductCellID];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete implementation, return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of items
    return self.products.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    //1.get cell
    ProductCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:HZYProductCellID forIndexPath:indexPath];
    //2.send the model to the cell
    cell.product = self.products[indexPath.item];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    HZYProduct *p = self.products[indexPath.item];
    NSLog(@"clicked--%@",p.title);
}

@end
