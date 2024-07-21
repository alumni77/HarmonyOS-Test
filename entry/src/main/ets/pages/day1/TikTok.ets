@Entry
@Component
struct TikTok {
  build() {
    Row() {
      Column() {
        Stack() {
          Text('抖音')
            .fontSize(150)
            .fontColor('#ffea0000')
            .fontWeight(FontWeight.Bold)
            .translate({
              x: 10,
              y: -10
            })

          Text('抖音')
            .fontSize(150)
            .fontColor('#ff4717e9')
            .fontWeight(FontWeight.Bold)
            .translate({
              x: 5,
              y: -5
            })

          Text('抖音')
            .fontSize(150)
            .fontColor('#000000')
            .fontWeight(FontWeight.Bold)

        }
      }
      .width('100%')
    }
    .height('100%')
  }
}