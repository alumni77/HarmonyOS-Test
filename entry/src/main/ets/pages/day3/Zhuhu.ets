@Entry
@Component
struct Zhihu {
  build() {
    Stack({ alignContent: Alignment.Bottom }) {
      Column() {
        Scroll() {
          Column() {
            NavComp()
            CommentComp()
            Divider()
              .strokeWidth(8)
              .color('#f5f5f5')
          }
          .padding({ bottom: 50 })
        }
      }
      .width('100%')
      .height('100%')
    }
  }
}

@Component
struct NavComp {
  build() {
    Row() {
      Row() {
        Image($r('app.media.ic_public_arrow_left'))
          .width(16)
          .aspectRatio(1)
      }
      .width(24)
      .aspectRatio(1)
      .backgroundColor('#f5f5f5')
      .borderRadius(12)
      .justifyContent(FlexAlign.Center)
      .margin({ left: 16 })

      Text('评论回复')
        .layoutWeight(1)
        .textAlign(TextAlign.Center)
        .padding({ right: 40 })
    }
    .height(40)
    .border({ width: { bottom: 0.5 }, color: '#e4e4e4' })
  }
}

@Component
struct CommentComp {
  build() {
    Row() {
      Image($r('app.media.avatar'))
        .width(32)
        .aspectRatio(1)
        .borderRadius(16)
      Column({ space: 5 }) {
        Text('周杰伦')
          .width('100%')
          .fontWeight(FontWeight.Bold)
          .fontSize(20)
        Blank()
        Text('写布局的口诀是从上到下,从左到右,从大到小,从外到里,头顶天,脚踩地！❤️‍🔥')
          .width('100%')
          .fontSize(17)
        Blank()
        Row() {
          Text('07-16 · IP属地北京')
            .fontSize(12)
            .fontColor('#c3c4c5')
          Row({ space: 4 }) {
            Image($r('app.media.ic_public_heart'))
              .width(14)
              .aspectRatio(1)
              .fillColor('#c3c4c5')
            Text('100')
              .fontSize(12)
              .fontColor('#c3c4c5')
          }
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .layoutWeight(1)
      .padding({ left: 10 })
    }
    .padding(15)
    .alignItems(VerticalAlign.Top)
  }
}