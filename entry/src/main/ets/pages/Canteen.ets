//  食堂页面
import { ItemComponent } from '../component/ItemComponent'
import { CanteenData } from './Models'

@Entry
@Component
struct Canteen{

  @State title:string = '食堂'

  // private title:string = '食堂'

  //  食堂种类
  @State canteen: CanteenData[] = [
    new CanteenData('楚园'),
    new CanteenData('汉园')
  ]



  build(){
    Column(){
      //  分为三部分
      //  第一部分 本页标题
      Row(){
        Text(this.title)
      }
      //  第二你分 内容
      Column(){
        ItemComponent({message: '汉园' })
        // ItemComponent({ message: '汉园' })
        .width('90%')
        ItemComponent({message: 'chuyuan' })
          // ItemComponent({ message: '汉园' })
          .width('90%')
      }
      //  第三部分 导航栏
    }
    .width('100%')
    .height('100%')
  }
}
