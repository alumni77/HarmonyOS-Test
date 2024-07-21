@Entry
@Component
struct Layout {
  build() {
    Column() {
      head()
      main()
      foot()
    }
  }
}

@Component
struct head {
  build() {
    Row() {
      Text('首页')
        .fontColor('white')
        .fontSize(30)
    }
    .backgroundColor('red')
    .height('10%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }
}

export { head }

@Component
struct main {
  build() {
    Column() {
      Text('我是底部的文字')
        .fontSize(20)
        .fontColor('red')
    }
    .width('100%')
    .height('80%')
    .justifyContent(FlexAlign.End)
  }
}

export { main }

@Component
struct foot {
  build() {
    Row() {
      Column() {
      }
      .backgroundColor('white')
      .width(45)
      .height(45)

      Column() {
      }
      .backgroundColor('white')
      .width(45)
      .height(45)

      Column() {
      }
      .backgroundColor('white')
      .width(45)
      .height(45)

    }
    .backgroundColor('red')
    .width('100%')
    .height(100)
    .justifyContent(FlexAlign.SpaceAround)

    .alignItems(VerticalAlign.Center)

  }
}

export { foot }