@Entry
@Component
struct Index {
  @State message: string = 'Hello Friend!'

  build() {
    Row() {
      Navigation() {
        Text('hello world').fontSize(30)
      }
      .toolBar({items:[
        {value: "func", icon: "./image/ic_public_highlights.svg", action: ()=>{}},
        {value: "func", icon: "./image/ic_public_highlights.svg", action: ()=>{}},
        {value: "func", icon: "./image/ic_public_highlights.svg", action: ()=>{}}]})
    }
    .height('100%')
  }
}