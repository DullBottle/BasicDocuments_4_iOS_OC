## BasicDocuments_iOS_OC

### Overview

...

### 文件目录架构

```
.
|---- MVVM_Demo
|         |-----Frameworks:虚拟文件夹，在Build Phases中添加的系统库会自动归入此文件夹
|		  |-----General:通用类
|		  |			|-----Base:基类
|		  |			|-----Categories:公共扩展类(一些常用的扩展，比如UIColor+expanded)
|		  |			|-----Core:公共核心类(个人信息，接口API etc.)
|		  |			|-----Models:公共数据模型
|		  |			|-----Views:公共视图
|		  |-----Utils:工程相关辅助类(类似数据请求、表单上传、网络监测 etc.)
|		  |-----View Controllers:视图控制器类
|		  |			|-----Views:...
|		  |			|-----ViewModels:...
|		  |-----Models:Data Objects
|		  |-----Vendors:第三方SDK(比如WeiboSDK、WeixinSDK etc.)
|		  |-----Resource:资源文件
|		  |			|-----Fonts:字体
|		  |			|-----Images:图片(此处添加整屏的图片资源，icon还是放到Assets中)
|		  |			|-----Sounds:声音
|		  |			|-----Videos:视频
|-----CocoaPods:类库管理工具
		  |-----AFNetWorking
		  |-----SDWebImage
		  |-----DateTools
		  |-----Masonry
		  |-----UICKeyChainStore:iOS KeyChain的封装
		  |-----ReactiveCocoa
		  |-----libextobjc
		  |-----TTTAttributedLabel:rich text
		  |...etc...
```





