import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/entry_page_screen_widgets/clinic_widget.dart';

class ClinicPage extends StatelessWidget {
  const ClinicPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> wList = [
      const ClinicWidget(),
      const ClinicWidget(),
      const ClinicWidget(),
    ];
    return Column(
      children: [
        Container(
          height: Get.height * 0.35,
          width: Get.width,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: Image.network(
                    'https://s3-alpha-sig.figma.com/img/5cd3/68ce/e99722a2c4031c5065ab4f21cd73bc6b?Expires=1673827200&Signature=Gc~UUzX8daOoMk-9ek9rUNVRShdsG81jFYBhCXzKtMZzYFrLYTBJCTFIZKhHakwzldF01ZwZwnfXzBv6JH7UBXa6EbF76uUj4Dt1i3tjQbJbMtNK1BG9DYMgDiwKmGrupC5IOLMdqfVW15bf0B~6v3BcvDuOsFruHJDEnSvFtrJszKYz1E8znafq7r44UsGaA4unPX~yDaU3Jmr62kdcnpXx2uuzG0IevfeQZeKUbzICAarDOt8983Zmp9OCU5ibfZYdABSaP8AOarQUlwd3kq3y4dgP9aOKvvQnc35XtsUvPsWq6VdPI0ebXBHwGwmrS69Vd~Uf~TyhDX5owgkpJQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4')
                .image,
          )),
          child: Column(
            children: [
              Container(
                height: Get.height * 0.15,
                width: Get.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(400, 150),
                    bottomRight: Radius.elliptical(400, 150),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 80,
                      width: 180,
                      child: Image.network(
                        'https://s3-alpha-sig.figma.com/img/89c6/39aa/e73e6c7fdae3786e76752305d3c376c0?Expires=1673827200&Signature=IOaubPEWC0aLm6BZIWb31ttrDC8d~uRL6eIVpXKlHRbkhIQOAj-c6tUUAVV8ZYUcCFzwoW3nREuEAzP9nCxsknyWIii~u1howZbWAbVbxB3eFdrUkgMCgTus1FuFJ~AUsooUb82d1uC0fsjh-OPVxAxoaug5d~Yv-Z3CCSqhxKebJeCiTJcIaVvF0Q35BcnJWDB5Q8dlHeCHj35~TSWgKBH-SlHrobFl9K8IGawsSiC0OFFqQQdSCMiFWPwLuCtlI5bf6GBNWkjN~hzNNvXBRsC4EyD~SrGGpIm-BBZHwWcEDX8nE7Ga1EPCoUSrFKIH6v~ZGQjGrsmW867LrKDGJA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: Get.height*0.5,
          child: ListView.builder(
              itemCount: wList.length,
              itemBuilder: (BuildContext context, int index) {
                return wList[index];
              }),
        ),
      ],
    );
  }
}
