//
//  KTViewController.m
//  KuaiTui
//
//  Created by hzf on 16/9/19.
//  Copyright © 2016年 neitui. All rights reserved.
//

#import "KTSearchController.h"

@interface KTSearchController ()<UISearchBarDelegate>

@end

@implementation KTSearchController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar {
    DLog(@"")
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
    DLog(@"")
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
