//  食堂页面
import { HeaderComponent } from '../component/HeaderComponent'

@Extend(Image)
function iconStyle(){
  .width(26)
  .height(26)
  .margin({right: 10})
}

@Component
export struct Person{

  @State title:string = '个人'

  build(){
    Column(){
      //  分为三部分
      //  第一部分 本页标题
      HeaderComponent({title: `${this.title}`})
        .margin(10)
      //  第二你分 内容
      Column(){
        Row(){  // 账号信息
          Image($r('app.media.information'))
            .iconStyle()
          Text('账号信息')
        }
        .width('90%')
        .justifyContent(FlexAlign.Start)
        .backgroundColor(Color.Gray)
        .borderRadius(10)
        .padding(8)
        .margin({top: 10})

        Row(){  // 积分
          Image($r('app.media.scores'))
            .iconStyle()
          Text('积分')
        }
        .width('90%')
        .justifyContent(FlexAlign.Start)
        .backgroundColor(Color.Gray)
        .borderRadius(10)
        .padding(8)
        .margin({top: 10})

        Row(){  // 联系我们
          Image($r('app.media.contact'))
            .iconStyle()
          Text('联系我们')
        }
        .width('90%')
        .justifyContent(FlexAlign.Start)
        .width('90%')
        .justifyContent(FlexAlign.Start)
        .backgroundColor(Color.Gray)
        .borderRadius(10)
        .padding(8)
        .margin({top: 10})

      }
      .width('100%')
      .alignItems(HorizontalAlign.Center)
    }
    .width('100%')
    .height('100%')
  }
}