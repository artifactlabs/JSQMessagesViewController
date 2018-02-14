//
//  Created by Jesse Squires
//  http://www.jessesquires.com
//
//
//  Documentation
//  http://cocoadocs.org/docsets/JSQMessagesViewController
//
//
//  GitHub
//  https://github.com/jessesquires/JSQMessagesViewController
//
//
//  License
//  Copyright (c) 2014 Jesse Squires
//  Released under an MIT license: http://opensource.org/licenses/MIT
//

#import "JSQMessagesCollectionViewCellOutgoing.h"

@implementation JSQMessagesCollectionViewCellOutgoing

@synthesize timestampLabel = _timestampLabel;

#pragma mark - Getter method overrides

- (UILabel *)timestampLabel
{
    if (!_timestampLabel) {
        _timestampLabel = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetWidth([[[UIApplication sharedApplication] keyWindow] frame]), 0.0, 75.0, 38.0)];
        _timestampLabel.textColor = [UIColor lightGrayColor];
        _timestampLabel.font = [UIFont systemFontOfSize:11.0];
        _timestampLabel.textAlignment = NSTextAlignmentLeft;
    }

    return _timestampLabel;
}

#pragma mark - Overrides

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.messageBubbleTopLabel.textAlignment = NSTextAlignmentRight;
    self.cellBottomLabel.textAlignment = NSTextAlignmentRight;
    [self.contentView addSubview:[self timestampLabel]];
}

@end
