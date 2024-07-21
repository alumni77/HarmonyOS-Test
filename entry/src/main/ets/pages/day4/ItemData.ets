
export default class ItemData{

  /**
   * 列表项的文本。
   */
  title: string;
  /**
   * 列表项的图片。
   */
  img: Resource;
  /**
   * 列表项的其他资源。
   */
  upperGap:boolean;

  routerGo?:string;

  constructor(title: string, img: Resource,upperGap:boolean,routerGo?:string) {
    this.title = title;
    this.img = img;
    this.upperGap = upperGap;
    this.routerGo =routerGo

  }
}