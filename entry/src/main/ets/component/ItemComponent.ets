//  内容页面组件

@Component
export struct ItemComponent{

 @State  message: string = ''

  build(){
    Column(){
      Row(){  //每一行的内容
        Column(){
          Image($r("app.media.restaurant"))
            .width(24)
            .height(24)
        }
        .width('20%')
        Column(){
          Text(this.message)
        }
        .width('80%')
        .alignItems(HorizontalAlign.Start)
      }
    }
  }
}