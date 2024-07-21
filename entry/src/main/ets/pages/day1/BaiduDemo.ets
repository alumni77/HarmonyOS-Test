@Entry
@Component
struct GoogleDemo {
  build() {
    Column() {
      Row() {
        Stack({ alignContent: Alignment.TopEnd }) {
          Image('https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png')
            .width(160)
          Text() {
            Span('鸿蒙')
            Span('版')
              .fontColor('red')
          }
          .fontSize(12)
          .offset({
            x:-20,
            y: 30
          })
        }
      }
      .width('100%')
      .justifyContent(FlexAlign.Center)

      Row() {
        TextInput({ placeholder: '输入搜索词' })
          .layoutWeight(1)
          .border({
            width: 2,
            color: '#ccc'
          })
          .height(40)
          .borderRadius({
            topLeft: 4,
            bottomLeft: 4
          })
          .backgroundColor('#fff')
        Button('百度一下')
          .type(ButtonType.Normal)
          .translate({
            x: -2
          })
          .borderRadius({
            topRight: 4,
            bottomRight: 4
          })
          .backgroundColor('#4e6ef2')

      }
      .width('100%')
      .padding(16)
      .justifyContent(FlexAlign.Center)
    }
    .padding(5)
    .justifyContent(FlexAlign.Start)
    .height('100%')

  }
}