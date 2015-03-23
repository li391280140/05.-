#import"MBProgressHUB+ADD.h"
//添加遮盖蒙版
[MBProgressHUB showMessage:@"正在帮你加载数据..." toView:self.view];
//移除遮盖
[MBProgressHUB hideHUDForView:self.view animated:YES];
//提示错误信息
[MBProgressHUB showError:@"加载数据错误..." toView:self.view];


//1.蒙版添加监听事件
[_cover addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(coverClick)]];
/**
    2.点击了遮盖*/
- (void)coverClick
{
    // 1.移除遮盖
    [_cover removeFromSuperview];
    _cover = nil;
    
    // 2.取消选中当前的按钮
    _selectedBtn.selected = NO;
    _selectedBtn = nil;
}
