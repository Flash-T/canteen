//  食堂页面
import { HeaderComponent } from '../component/HeaderComponent'
import router from '@ohos.router'

@Extend(Image)
function iconStyle(){
  .width(26)
  .height(26)
  .margin({right: 10})
}


@Component
export struct Canteen{

  @State title:string = '食堂'

  build(){
    Column(){
      //  分为三部分
      //  第一部分 本页标题
      HeaderComponent({title: `${this.title}`})
        .margin(10)
      //  第二你分 内容
      Column(){
        Row(){  // 楚园食堂
          Image($r('app.media.restaurant'))
            .iconStyle()

          Text('楚园')
        }
        .width('90%')
        .justifyContent(FlexAlign.Start)
        .backgroundColor(Color.Gray)
        .borderRadius(10)
        .padding(8)
        .margin({top: 10})
        .onClick(() =>{
          router.pushUrl({ url: '../CanteenB' })
        })

        Row(){  // 汉园食堂
          Image($r('app.media.restaurant'))
            .width(26)
            .height(26)
            .margin({right: 10})

          Text('汉园')
        }
        .width('90%')
        .justifyContent(FlexAlign.Start)
        .backgroundColor(Color.Gray)
        .borderRadius(10)
        .padding(8)
        .margin({top: 10})

        Row(){  // 商业街
          Image($r('app.media.restaurant'))
            .width(26)
            .height(26)
            .margin({right: 10})

          Text('商业街')
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