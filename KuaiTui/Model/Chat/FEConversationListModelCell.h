//
//  IConversationListModelCell.h
//  KuaiTui
//
//  Created by hzf on 16/9/9.
//  Copyright © 2016年 neitui. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FEConversationListModelCell <NSObject>

@required

@property (strong, nonatomic) id model;

+ (NSString *)cellIndentifierWithModel:(id)model;

+ (CGFloat)cellHeightWithModel:(id)model;

@optional

- (instancetype)initWithStyle:(UITableViewCellStyle)style
              reuseIdentifier:(NSString *)reuseIdentifier
                        model:(id)model;

@end
