//  食堂页面
import { HeaderComponent } from '../component/HeaderComponent'

@Extend(Image)
function iconStyle(){
  .width(26)
  .height(26)
  .margin({right: 10})
}

@Component
export struct Community{

  @State title:string = '圈子'

  build(){
    Column(){
      //  分为三部分
      //  第一部分 本页标题
      HeaderComponent({title: `${this.title}`})
        .margin(10)
      //  第二你分 内容
      Column(){
        Row(){  // 圈子分两类  1、社区   2、好友
            Row(){  // 社区
              Image($r('app.media.community'))
                .iconStyle()

              Text('社区')
            }
            .width('45%')
            .backgroundColor(Color.Gray)
            .borderRadius(10)
            .padding(10)
            .margin({right: 5})
            // .justifyContent(FlexAlign.Center)

            Row(){  //  好友
              Image($r('app.media.friends'))
                .iconStyle()

              Text('好友')
            }
            .width('45%')
            .backgroundColor(Color.Gray)
            .borderRadius(10)
            .padding(10)
            .margin({left: 5})
          // .justifyContent(FlexAlign.Center)


        }
        .width('90%')
        .justifyContent(FlexAlign.Center)

      }
      .width('100%')
      .alignItems(HorizontalAlign.Center)
      .margin({top: 5})

    }
    .width('100%')
    .height('100%')
  }
}