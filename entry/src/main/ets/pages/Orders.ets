//  食堂页面
import { HeaderComponent } from '../component/HeaderComponent'

@Extend(Image)
function iconStyle(){
  .width(26)
  .height(26)
  .margin({right: 10})
}

@Component
export struct Orders{

  @State title:string = '订单'

  build(){
    Column(){
      //  分为三部分
      //  第一部分 本页标题
      HeaderComponent({title: `${this.title}`})
        .margin(10)
      //  第二你分 内容
      Column(){
        Row(){  // 我的订单
          Image($r('app.media.order'))
            .iconStyle()

          Text('我的订单')
        }
        .width('90%')
        .justifyContent(FlexAlign.Start)
        .width('90%')
        .justifyContent(FlexAlign.Start)
        .backgroundColor(Color.Gray)
        .borderRadius(10)
        .padding(8)
        .margin({top: 10})

        Row(){  // 配送订单
          Image($r('app.media.takeaway'))
            .iconStyle()

          Text('配送订单')
        }
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