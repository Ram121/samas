import 'package:flutter/material.dart';

class SamasList {
  String name, description, details, heroTag;
  Color color;
  bool hasChild = false;
  SamasList(
      {this.name,
      this.description,
      this.color,
      this.details,
      this.heroTag,
      this.hasChild});
}

List samasList = [
  SamasList(
      name: 'अव्ययीभावः',
      description: 'पुर्वपदप्रधानः अव्ययीभावः',
      color: Color(0xff795548),
      details:
          'अव्ययीभाव समास क पूर्वपद हमेशा अव्यय होता हैं |\n\nप्रति - प्रतिदिनम् - दिने दिने |\nयथा - यथाशक्तिम् - शक्तिम् अनतिक्रम्य |\nउप - उप्योग्यम् - योग्यस्य समीपम् |\nअनु - अनुरथम् - रथस्य पश्च्यात् |\nनिर् - निर्मक्षिका - मक्षिकाणाम् अभावः |',
      heroTag: 'myTag1',
      hasChild: false),
  SamasList(
      name: 'द्वन्द्वः',
      description: 'उभयपदप्रधानः द्वन्द्वः',
      color: Color(0xff00bcd4),
      details:
          'इस समास में दोनो पदों को प्रधानता दी जाती हैं |\n\n१. इतरेतर द्वन्द्व\n\nसीतारामौ - सीता च रामः च |\nलवकुषौ - लवः च कुशः च |\nफ़लपुश्पाणि - फ़लानि च पुष्पाणि च |\nमातापितरौ - माता च पिता च |\n\n२. समाहारं द्वन्द्व',
      heroTag: 'myTag2',
      hasChild: false),
  SamasList(
      name: 'तत्पुरुषः',
      description: 'उत्तरपदप्रधानः तत्पुरुषः',
      color: Color(0xff673ab7),
      details:
          'जिस समास के उत्तरपद को प्रधानता दी जाती हैं वह तत्पुरुष समास कहलाता हैं |\nइस के पाच प्रकार होते हैं |',
      heroTag: 'myTag3',
      hasChild: true),
  SamasList(
      name: 'बहुव्रीहिः',
      description: 'अन्यपदप्रधानः बहुव्रीहिः',
      color: Color(0xffff9800),
      details: '',
      heroTag: 'myTag4',
      hasChild: false),
];
