//  CanteenTogoSys
import { Canteen } from './Canteen'
import { Community } from './Community'
import { Orders } from './Orders'
import { Person } from './Person'

@Entry
@Component
struct Index {

  build() {
    Column() {

      Tabs(){  //  分为四个部分  1、食堂  2、圈子  3、订单  4、个人
       //  第一部分： 食堂
        TabContent(){
          Canteen()
        }
        .tabBar('食堂')
        .margin({
          top: 10,
        })
       //  第二部分： 圈子
        TabContent(){
          Community()
        }
        .tabBar('圈子')
        .margin({
          top: 10,
        })
       //  第三部分： 订单
        TabContent(){
          Orders()
        }
        .tabBar('订单')
        .margin({
          top: 10,
        })
       //  第四部分： 个人
        TabContent(){
          Person()
        }
        .tabBar('个人')
        .margin({
          top: 10,
        })
      }
      .barPosition(BarPosition.End)

    }
    .height('100%')

  }
}