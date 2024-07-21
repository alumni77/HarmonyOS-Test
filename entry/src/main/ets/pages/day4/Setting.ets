import DataModel from './DataModel'
import ItemData from './ItemData'

@Entry
@Component
export struct MinePage {
  private arr: number[]=[110,0,1,2,3,120]

  build() {
    Column() {
      Row() {
        Image($r('app.media.avatar'))
          .width(70)
          .height(70)
          .margin({left:20,right:15})
        Column({ space: 15 }) {
          Text("衷杰")
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
          Row(){
            Text("微信号: 3210421126")
              .fontSize(14)
              .fontColor('')
            Image($r('app.media.ic_public_input_code'))
              .width(15)
              .height(15)
              .margin({left:20,right:15})
            Image($r('app.media.ic_public_arrow_right_filled'))
              .width(20)
              .height(20)
              .margin({right:15})
          }

        }.alignItems(HorizontalAlign.Start)
      }
      .width('100%')
      .height('22%')
      .backgroundColor('#ffffff')
      List({initialIndex:0}){
        ForEach(DataModel.getFirstGridData(),(item:ItemData)=>{
          ListItem(){
            Row(){
              Row(){
                Image(item.img)
                  .width(25)
                  .margin({left:15})
                Text(''+item.title)
                  .margin({left:15})
              }
              Image($r('app.media.ic_public_arrow_right_filled'))
                .width(20)
                .height(20)
                .margin({right:15})
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)

          }.margin({top:item.upperGap?10:0})
          .height(50)
          .width('100%')
          .borderRadius(10)
          .backgroundColor('#ffffff')
        })
      }
      .margin({top:10})
      .height('72%')
      .listDirection(Axis.Vertical)
      // .divider({strokeWidth:1,color:'#fffffa',startMargin:20,endMargin:0})
      .edgeEffect(EdgeEffect.Spring)
      .onScrollIndex((firstIndex:number,lastIndex:number)=>{
        console.log('first'+firstIndex,'last'+lastIndex)
      })
    }
    .height('100%')

  }
}
