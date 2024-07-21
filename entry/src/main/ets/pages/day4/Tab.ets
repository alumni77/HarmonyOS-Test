import CommonConstants from './CommonConstants'
import { MinePage } from './Setting'

@Extend(TabContent)
function tabContentStyle(){
  .padding({
    // left:$r('app.float.mainPage_tabTitles_padding'),
    // right:$r('app.float.mainPage_tabTitles_padding')
  })
  .backgroundColor('#f4f4f4')
}

@Entry
@Component
struct MainPage {
  @State currentIndex: number = CommonConstants.HOME_TAB_INDEX
  private tabsController:TabsController = new TabsController()

  @Builder TabBuilder(title:string,index:number,selectedImg:Resource,normalImg:Resource){
    Column(){
      Image(this.currentIndex ===index?selectedImg:normalImg)
        .width($r('app.float.mainPage_baseTab_size'))
        .height($r('app.float.mainPage_baseTab_size'))
      Text(title)
        .margin({top:$r('app.float.mainPage_baseTab_top')})
        .fontSize($r('app.float.main_tab_fontSize'))
        .fontColor(this.currentIndex===index?'#1AAD19': $r('app.color.mainPage_normal'))
    }
    .justifyContent(FlexAlign.Center)
    .height($r('app.float.mainPage_barHeight'))
    .width(CommonConstants.FULL_PARENT)
    .onClick(()=>{
      this.currentIndex = index
      this.tabsController.changeIndex(this.currentIndex)
    })
  }
  build() {
    Tabs({
      barPosition:BarPosition.End,
      controller:this.tabsController
    }){
      TabContent(){
        Text('微信')
      }
      .tabContentStyle()
      .tabBar(this.TabBuilder('微信' , 0, $r('app.media.ic_public_community_messages_filled'),$r('app.media.ic_public_community_messages')))

      TabContent(){
        Text('通讯录')
      }
      .tabContentStyle()
      .tabBar(this.TabBuilder('通讯录' , 1, $r('app.media.ic_public_contacts_group_filled'),$r('app.media.ic_public_contacts_group')))

      TabContent(){
        Text('发现')
      }
      .tabContentStyle()
      .tabBar(this.TabBuilder('发现' , 2, $r('app.media.ic_gallery_discover_filled'),$r('app.media.ic_gallery_discover')))

      TabContent(){
        MinePage()
      }
      .tabContentStyle()
      .tabBar(this.TabBuilder('我的' , 3, $r('app.media.ic_public_contacts_filled'),$r('app.media.ic_public_contacts')))
    }
  }
}
