//  标题区域插件

@Component
export struct HeaderComponent{

  @State
  title:string = ''

  build(){
    Row(){
      Column(){  //  第一部分：返回键
        Image($r('app.media.back'))
          .width(24)
          .height(24)
      }
      .width('10%')

      Column(){  //  第二部分：标题
        Text(this.title)
          .fontSize(20)
          .fontWeight(600)
      }
      .width('80%')

      Column(){  //  第三部分：刷新
        Image($r('app.media.refresh'))
          .width(24)
          .height(24)

      }
      .width('10%')
    }
    .width('100%')
    .padding(5)

  }

}