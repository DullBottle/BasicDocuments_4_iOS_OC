//
//  DetailView.m
//  MVVM_Demo
//
//  Created by 浚韩 陈 on 16/5/21.
//  Copyright © 2016年 Dressrosa. All rights reserved.
//

#import "DetailView.h"
#import "DetailViewModel.h"
#import "CoreTextAttributes.h"

@interface DetailView ()

@property (nonatomic, strong) ASNetworkImageNode *avatarNode;
@property (nonatomic, strong) ASTextNode *usernameNode;
@property (nonatomic, strong) ASTextNode *timeNode;
@property (nonatomic, strong) ASNetworkImageNode *imageNode;

@end

@implementation DetailView

#pragma mark - Overrides

- (instancetype)init {
    if (self = [super init]) {
        
        // avatar node.
        _avatarNode = [[ASNetworkImageNode alloc] init];
        _avatarNode.backgroundColor = ASDisplayNodeDefaultPlaceholderColor();
        _avatarNode.preferredFrameSize = CGSizeMake(44, 44);
        _avatarNode.cornerRadius = 22;
        _avatarNode.imageModificationBlock = ^UIImage *(UIImage *image) {
            
            // 完美圆角绘制
            UIImage *modifiedImage = nil;
            CGRect rect = CGRectMake(0, 0, image.size.width, image.size.height);
            
            UIGraphicsBeginImageContextWithOptions(rect.size, NO, [UIScreen mainScreen].scale);
            [[UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:44] addClip];
            [image drawInRect:rect];
            modifiedImage = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();
            
            return modifiedImage;
        };
        [self addSubnode:_avatarNode];
        
        // username node.
        _usernameNode = [[ASTextNode alloc] init];
        _usernameNode.maximumNumberOfLines = 1;
        [self addSubnode:_usernameNode];
        
        // time node.
        _timeNode = [[ASTextNode alloc] init];
        _timeNode.maximumNumberOfLines = 1;
        [self addSubnode:_timeNode];
        
        // image node.
        _imageNode = [[ASNetworkImageNode alloc] init];
        _imageNode.backgroundColor = ASDisplayNodeDefaultPlaceholderColor();
        _imageNode.preferredFrameSize = CGSizeMake(SCREEN_WIDTH, SCREEN_WIDTH + 205);
        [self addSubnode:_imageNode];
        
    }
    return self;
}

- (ASLayoutSpec *)layoutSpecThatFits:(ASSizeRange)constrainedSize {
    
    // header stack.
    ASLayoutSpec *spacer = [[ASLayoutSpec alloc] init];
    spacer.flexGrow = YES;
    
    ASStackLayoutSpec *headerStack = [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionHorizontal
                                                                             spacing:5.0f
                                                                      justifyContent:ASStackLayoutJustifyContentStart
                                                                          alignItems:ASStackLayoutAlignItemsCenter
                                                                            children:[@[_avatarNode, _usernameNode, spacer, _timeNode] mutableCopy]];
    
    ASInsetLayoutSpec *headerWithInset = [ASInsetLayoutSpec insetLayoutSpecWithInsets:UIEdgeInsetsMake(70, 10, 0, 10)
                                                                                child:headerStack];
    headerWithInset.flexShrink = YES;
    
    ASStackLayoutSpec *verticalStack = [ASStackLayoutSpec stackLayoutSpecWithDirection:ASStackLayoutDirectionVertical
                                                                               spacing:5.0f
                                                                        justifyContent:ASStackLayoutJustifyContentStart
                                                                            alignItems:ASStackLayoutAlignItemsStretch
                                                                              children:@[headerWithInset, _imageNode]];
    
    return verticalStack;
}

- (void)didLoad {
    [super didLoad];
    
    // viewDidLoad
    
    RAC(self.usernameNode, attributedString) = RACObserve(self.viewModel, username);
    RAC(self.timeNode, attributedString) = RACObserve(self.viewModel, time);
    RAC(self.avatarNode, URL) = RACObserve(self.viewModel, avatar);
    RAC(self.imageNode, URL) = RACObserve(self.viewModel, image);
}

- (void)layout {
    [super layout];
    
    
}

@end




























