import promptAction from '@ohos.promptAction';

@Entry
@Component
struct register {
  @State password: string = '';
  @State s_password: string = '';
  @State account: string = '';

  build() {
    Column() {
      Column() {
        Circle({ width: 250, height: 250 }).fill('#FFB133').offset({ x: -110, y: -40 });
        Text('Register').fontColor('#fff').fontSize(44).fontWeight(600).offset({ x: -70, y: -100 });
        Circle({ width: 30, height: 30 }).fill('#FFB133').offset({ x: 170, y: -64 });
        Circle({ width: 70, height: 70 }).fill('#FFB133').offset({ x: 120, y: -50 });
      }.width('100%')
      .height('40%')

      Column() {
        Column() {
          Column() {
            Text('账户')
              .textAlign(TextAlign.Start)
              .width('80%')
              .height(20)
              .fontSize(18)
              .fontWeight(600)
              .margin({ top: 20, bottom: 30 })
            TextInput({ placeholder: '请输入您的账户' })
              .onChange((value) => {
                this.account = value
              })
              .placeholderColor('#ADADAD')
              .width('80%')
              .margin(-20)
              .border({ color: '#ADADAD', radius: 0 })
              .borderWidth({ bottom: 1 })
              .backgroundColor('#FFF')
              .padding({ left: 0 })
          }.margin({ top: 20 }).height('20%')

          Column() {
            Text('密码')
              .textAlign(TextAlign.Start)
              .width('80%')
              .height(20)
              .fontSize(18)
              .fontWeight(600)
              .margin({ top: 20, bottom: 30 })
            TextInput({ placeholder: '请输入您的账户密码' })
              .type(InputType.Password)
              .onChange((value) => {
                this.password = value
              })
              .placeholderColor('#ADADAD')
              .width('80%')
              .margin(-20)
              .border({ color: '#ADADAD', radius: 0 })
              .borderWidth({ bottom: 1 })
              .backgroundColor('#FFF')
              .padding({ left: 0 })
          }.margin({ top: 20 }).height('20%')

          Column() {
            Text('密码')
              .textAlign(TextAlign.Start)
              .width('80%')
              .height(20)
              .fontSize(18)
              .fontWeight(600)
              .margin({ top: 20, bottom: 30 })
            TextInput({ placeholder: '请再次输入您的密码' })
              .type(InputType.Password)
              .onChange((value) => {
                this.s_password = value
              })
              .placeholderColor('#ADADAD')
              .width('80%')
              .margin(-20)
              .border({ color: '#ADADAD', radius: 0 })
              .borderWidth({ bottom: 1 })
              .backgroundColor('#FFF')
              .padding({ left: 0 })
          }.margin({ top: 20 }).height('20%')
        }

        Column() {
          Button('Login')
            .onClick(() => {
              if (!this.account || !this.password || !this.s_password) {
                try {
                  promptAction.showToast({
                    message: '请填写完整信息',
                    duration: 2000,
                  });
                } catch (error) {
                  console.error(`showToast args error code is ${error.code}, message is ${error.message}`);
                }
                ;
                return
              }
              if (this.password !== this.s_password) {
                try {
                  promptAction.showToast({
                    message: '两次输入的密码不一致',
                    duration: 2000,
                  });
                } catch (error) {
                  console.error(`showToast args error code is ${error.code}, message is ${error.message}`);
                }
                ;
                return
              }
              console.log(this.password, this.s_password, this.account)
            })
            .backgroundColor("#F9A826")
            .width('80%')
            .height(40)
            .fontSize(18)
        }.margin({ top: 20 })
      }
      .width('100%')
      .height('60%')
      .borderRadius({ topLeft: 20, topRight: 20 })
      .backgroundColor('#FFFFFF')
    }.width('100%')
    .height('100%')

    .backgroundColor('#F9A825')
  }
}