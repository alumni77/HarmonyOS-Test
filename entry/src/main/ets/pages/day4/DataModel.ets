import ItemData from './ItemData'

export class DataModel{

  getFirstGridData():Array<ItemData>{
    let firstGridData:ItemData[]=[
      new ItemData('服务',$r('app.media.ic_public_wechat_pay'),false),
      new ItemData('收藏',$r('app.media.ic_public_coolect'),true),
      new ItemData('朋友圈',$r('app.media.ic_public_picture'),false),
      new ItemData('卡包',$r('app.media.ic_desktop_servicewidgets'),false),
      new ItemData('表情',$r('app.media.ic_public_emoji'),false),
      new ItemData('设置',$r('app.media.ic_public_settings'),true)
    ]
    return firstGridData
  }
}


export default new DataModel()
