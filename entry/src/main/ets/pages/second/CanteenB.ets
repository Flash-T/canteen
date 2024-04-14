//  食堂商家

@Entry
@Component
struct CanteenB {

  @State canteenTitle: String = '楚园';
  @State businessName: String = '商家名称';
  @State businessNow: Number= 0;

  build(){
    Column(){
      Row(){  // 食堂标题
        Text(`${this.canteenTitle}`)
          .fontSize(20)
          .fontWeight(600)
      }

      Divider() //  分隔线

      Column(){  //  商家列表
        Row(){  //  商家列表项
          Image($r('app.media.restaurant'))
            .width(26)
            .height(26)

          Text(`${this.businessName}`)   //  商家名称

          // BusinessState({businessNow: this.businessNow})  //商家出餐状态
        }

      }

    }

  }
}
