@Entry
@Component
struct register {
  build() {
    Column() {
      Column() {
        Circle({ width: 250, height: 250 }).fill('#FFB133').offset({ x: 110, y: -40 });
        Text('Register').fontColor('#fff').fontSize(48).fontWeight(600).offset({ x: -90, y: -100 });
        Circle({ width: 30, height: 30 }).fill('#FFB133').offset({ x: -170, y: -64 });
        Circle({ width: 70, height: 70 }).fill('#FFB133').offset({ x: -120, y: -50 });
      }.width('100%')

      Column() {
        Column() {
          Text('用户名')
            .textAlign(TextAlign.Start)
            .width('80%')
            .height(20)
            .fontSize(18)
            .fontWeight(600)
            .margin(44);
          TextInput({ placeholder: '请输入您的用户名' })
            .placeholderColor('#ADADAD')
            .width('80%')
            .margin(-20)
            .border({ color: '#ADADAD', radius: 0 })
            .borderWidth({ bottom: 1 })
            .backgroundColor('#FFF')
            .padding({ left: 0 });
          Text('密码')
            .textAlign(TextAlign.Start)
            .width('80%')
            .height(20)
            .fontSize(18)
            .fontWeight(600)
            .margin(44);
          TextInput({ placeholder: '请输入您的密码' })
            .type(InputType.Password)
            .placeholderColor('#ADADAD')
            .width('80%')
            .margin(-20)
            .border({ color: '#ADADAD', radius: 0 })
            .borderWidth({ bottom: 1 })
            .backgroundColor('#FFF')
            .padding({ left: 0 });
        }

      }
      .width('100%')
      .height('100%')
      .borderRadius({ topLeft: 20, topRight: 20 })
      .backgroundColor('#FFFFFF')
      .offset({ y: -80 })
    }.width('100%')
    .height('100%')

    .backgroundColor('#F9A825')
  }
}