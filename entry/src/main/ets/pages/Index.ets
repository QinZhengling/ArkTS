import router from '@ohos.router'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State i_width: number = 150

  aboutToAppear() {

  }



  build() {

    Column() {
      Column() {
        Circle({ width: 250, height: 250 }).fill('#FFB133').offset({ x: 110, y: -40 });
        Text('Login').fontColor('#fff').fontSize(48).fontWeight(600).offset({ x: -100, y: -100 });
        Circle({ width: 30, height: 30 }).fill('#FFB133').offset({ x: -170, y: -64 });
        Circle({ width: 70, height: 70 }).fill('#FFB133').offset({ x: -120, y: -50 });
      }.width('100%').height('40%')

      Column() {
        Column() {
          Text('账户')
            .textAlign(TextAlign.Start)
            .width('80%')
            .height(20)
            .fontSize(18)
            .fontWeight(600)
            .margin(44);
          TextInput({ placeholder: '请输入您的账户' })
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

        Row() {
          Row() {
            Checkbox()
            Text('保持登录').fontSize(12).fontWeight(400).fontColor('#707070')
          }

          Row() {
            Text('忘记密码？').fontSize(12).fontWeight(400).fontColor('#707070')
          }
        }
        .margin(30)
        .width('80%')
        .justifyContent(FlexAlign.SpaceBetween)
        .border({ color: '#ADADAD', radius: 0 })
        .backgroundColor('#FFF')

        Button('Login').backgroundColor("#F9A826").width('80%').height(40).fontSize(18)
        Row() {
          Text('您还没有账号？点击这里').fontSize(12).fontWeight(400).fontColor('#707070')
          Text('注册！').fontSize(12).fontWeight(400).fontColor('#F9A826').onClick(() => {
            router.pushUrl({
              url: 'pages/Register',
              params: {
                data1: 'message',
                data2: {
                  data3: [123, 456, 789]
                }
              }
            }, router.RouterMode.Single, (err) => {
              if (err) {
                console.error(`pushUrl failed, code is ${err.code}, message is ${err.message}`);
                return;
              }
              console.info('pushUrl success');
            });
          })
        }.margin(20)

        Row() {
          Divider().width('30%')
          Text('其他登陆方式').fontSize(12).fontWeight(400).fontColor('#707070')
          Divider().width('30%')
        }.width('80%')
        .justifyContent(FlexAlign.SpaceBetween)

        Row() {
          Image($r('app.media.QQ')).width(20).height(20).interpolation(ImageInterpolation.High)
          Image($r('app.media.wechat')).width(20).height(20).interpolation(ImageInterpolation.High)
        }.width('20%').justifyContent(FlexAlign.SpaceAround).margin(20)
      }
      .width('100%')
      .height('60%')
      .borderRadius({ topLeft: 20, topRight: 20 })
      .backgroundColor('#FFFFFF')
    }
    .width('100%')
    .height('100%')

    .backgroundColor('#F9A825')
  }
}