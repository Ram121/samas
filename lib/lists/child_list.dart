import 'dart:ui';

class ChildSamas {
  String name, description, heroTag1;
  bool hasChild = false;
  Color color;
  ChildSamas(
      {this.name, this.description, this.hasChild, this.color, this.heroTag1});
}

List tatpurushList = [
  ChildSamas(
    name: 'विभक्ति तत्पुरुष',
    hasChild: true,
    heroTag1: 'myTag100',
    color: Color(0xffb388ff).withOpacity(0.6),
    description:
        'द्वितिया से सप्तमी विभक्ति तक ऐसे छह प्रकार विभक्ति तत्पुरुष के होते हैं |',
  ),
  ChildSamas(
    name: 'नञ् तत्पुरुष',
    hasChild: false,
    heroTag1: 'myTag101',
  ),
  ChildSamas(
    name: 'उपपद तत्पुरुष',
    hasChild: false,
    heroTag1: 'myTag102',
  ),
  ChildSamas(
    name: 'प्रादि तत्पुरुष',
    hasChild: false,
    heroTag1: 'myTag103',
  ),
  ChildSamas(
    name: 'कर्मधारय',
    hasChild: false,
    heroTag1: 'myTag104',
  ),
];
