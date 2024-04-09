//  标题区域插件

@Component
export struct HeaderComponent{

  @State title:string = ''

  build(){
    Row(){
      Column(){  //  第一部分：返回键
        Image($r('app.media.back'))
      }
      .width('10%')

      Column(){  //  第二部分：标题
        Text(this.title)
      }
      .width('80%')

      Column(){  //  第三部分：刷新
        Image($r('app.media.refresh'))
      }
      .width('10%')
    }
    .width('100%')
  }

}