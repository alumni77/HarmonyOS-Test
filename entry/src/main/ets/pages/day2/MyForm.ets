import { promptAction } from '@kit.ArkUI'

interface Form {
  name: string
  age: string
  sex: "男" | "女"
  bank: BankInfo
  agreement: boolean
}

interface BankInfo {
  bankCard: string
  balance: string
}

@Entry
@Component
struct MyForm {
  @State displayData: boolean = false
  @State myInfo: Form = {
    name: '衷杰',
    age: '20',
    sex: '男',
    bank: {
      bankCard: '123456789',
      balance: '$1000000000000000000000'
    },
    agreement: false
  }

  isEmpty(): boolean {
    if (!this.myInfo.name || !this.myInfo.age || !this.myInfo.bank.bankCard
      || !this.myInfo.bank.balance || !this.myInfo.agreement) {
      return true;
    }
    return false;
  }

  build() {
    Row() {

      Column({ space: 15 }) {
        Text("注册")
          .fontSize(50)
        Row() {
          if (this.displayData)
            Text(JSON.stringify(this.myInfo))
        }

        Row({ space: 5 }) {
          Text("姓名:")
          TextInput({ text: this.myInfo.name })
            .layoutWeight(1)
            .onChange((value) => {
              this.myInfo.name = value
            })
        }
        .width("90%")


        Row({ space: 5 }) {
          Text("年龄:")
          TextInput({ text: this.myInfo.age })
            .layoutWeight(1)
            .onChange((value) => {
              this.myInfo.age = value
            })
        }
        .width("90%")

        Row({ space: 5 }) {
          Text("性别:")
          Select([{ value: "男" }, { value: "女" }])
            .value(this.myInfo.sex)
            .layoutWeight(1)
            .onSelect((index: number, value: string) => {
              this.myInfo.sex = value as "男" | "女"
            })
        }
        .width("90%")

        Row({ space: 5 }) {
          Text("银行卡:")
          TextInput({ text: this.myInfo.bank.bankCard })
            .layoutWeight(1)
            .onChange((value) => {
              this.myInfo.bank.bankCard = value
              this.myInfo.bank = new BankInfoModel(this.myInfo.bank)
            })
        }
        .width("90%")

        Row({ space: 5 }) {
          Text("银行余额:")
          TextInput({ text: this.myInfo.bank.balance })
            .layoutWeight(1)
            .onChange((value) => {
              this.myInfo.bank.balance = value
              this.myInfo.bank = new BankInfoModel(this.myInfo.bank)
            })
        }
        .width("90%")

        Row() {
          Checkbox({ name: 'checkbox', group: 'checkboxGroup' })
            .select(false)
            .shape(CheckBoxShape.ROUNDED_SQUARE)
            .onChange((value: boolean) => {
              this.myInfo.agreement = value
            })
          Text("我已阅读相关协议")
        }
        .width("90%")
        .justifyContent(FlexAlign.Center)

        Button('注册')
          .onClick(() => {
            this.displayData = true
            if (!this.isEmpty()) {
              promptAction.showToast({ message: "注册成功" })
            } else {
              promptAction.showToast({ message: "内容不能为空" })

            }
          })
          .width('80%')
          .enabled(this.myInfo.agreement)
      }
      .alignItems(HorizontalAlign.Center)
      .width('100%')
    }
    .height('80%')
  }
}


export class FormModel implements Form {
  name: string = ''
  age: string = ''
  sex: "男" | "女" = "男"
  bank: BankInfo = new BankInfoModel({} as BankInfo)
  agreement: boolean = false

  constructor(model: Form) {
    this.name = model.name
    this.age = model.age
    this.sex = model.sex
    this.bank = model.bank
    this.agreement = model.agreement
  }
}

export class BankInfoModel implements BankInfo {
  bankCard: string = ''
  balance: string = ''

  constructor(model: BankInfo) {
    this.bankCard = model.bankCard
    this.balance = model.balance
  }
}