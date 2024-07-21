@Entry
@Component
struct ScrollPage {
  scroller: Scroller = new Scroller()

  build() {
    Row() {
      Column() {
        Scroll(this.scroller) {
          Row({ space: 10 }) {
            ScrollRow()
            ScrollRow()
            ScrollRow()
            ScrollRow()
            ScrollRow()
            ScrollRow()
            ScrollRow()
            ScrollRow()
            ScrollRow()
          }
        }
        .scrollable(ScrollDirection.Horizontal)
        .width('100%')
        .height(200)
        .backgroundColor('#ffc8c212')

        Row({ space: 20 }) {
          Button("向左")
            .onClick(() => {
              this.scroller.scrollEdge(Edge.Top)
            })
          Button("向右")
            .onClick(() => {
              this.scroller.scrollEdge(Edge.End)
            })
        }
        .margin({
          top: 20
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}

@Component
struct ScrollRow {
  build() {
    Row() {
      Image('https://ts1.cn.mm.bing.net/th?id=OIP-C.Zte3ljd4g6kqrWWyg-8fhAHaEo&w=316&h=197&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2')
    }
    .width(140)
    .height(180)
    .backgroundColor('#ff41b9be')
  }
}