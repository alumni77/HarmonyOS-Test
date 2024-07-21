import { GoodItem, listinfo } from './GoodComp'
import { SegmentButton, SegmentButtonOptions } from '@ohos.arkui.advanced.SegmentButton'

@Entry
@Component
struct ForEachCase02 {
  @State tabOptions: SegmentButtonOptions = SegmentButtonOptions.tab({
    buttons: [{ text: '单列' }, { text: '双列' }]
  })
  @State tabSelectedIndex: number[] = [0]
  @State list: GoodItem[] = listinfo

  build() {
    Column() {
      SegmentButton({ options: this.tabOptions, selectedIndexes: $tabSelectedIndex })
      if (this.tabSelectedIndex.includes(0)) {
        List() {
          ForEach(this.list, (item: GoodItem) => {
            ListItem() {
              Row({ space: 10 }) {
                Image(item.goodImg)
                  .width(120)
                  .height(200)
                Column() {
                  Text(item.goodsName)
                    .fontWeight(FontWeight.Bold)
                    .width("100%")
                    .maxLines(4)
                    .textOverflow({ overflow: TextOverflow.Ellipsis })
                  Text('￥' + item.goodPrice)
                    .fontColor(Color.Red)
                    .width("100%")
                }
                .padding({
                  top: 5,
                  bottom: 5
                })
                .justifyContent(FlexAlign.SpaceBetween)
                .height(200)
                .layoutWeight(1)
              }
            }
            .padding({
              top: 10,
              left: 20,
              right: 20,
              bottom: 10
            })
          })
        }
      }
      else if (this.tabSelectedIndex.includes(1)) {
        Grid() {
          ForEach(this.list, (item: GoodItem) => {
            GridItem() {
              Column() {
                Image(item.goodImg)
                  .height(200)
                Row({ space: 2 }) {
                  Text('￥' + item.goodPrice)
                    .fontWeight(FontWeight.Bold)
                    .fontColor(Color.Red)
                  Text(item.goodsName)
                    .maxLines(1)
                    .layoutWeight(1)
                    .fontWeight(FontWeight.Bold)
                }
              }
            }
          })
        }
        .columnsGap(20)
        .rowsGap(20)
        .columnsTemplate("1fr 1fr")
        .padding(20)
      }
    }
  }
}
