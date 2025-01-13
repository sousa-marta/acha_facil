import 'package:acha_facil/models/feature_model.dart';

final featuresData = [
  FeatureModel(
      title: 'Whatsapp and a Bigger Title',
      description:
          'A quite long description to test how the layout behaves. And some more just in case.',
      iconPath: 'assets/images/whatsapp.png',
      navigateTo: 'path',
      category: Category.communication),
  FeatureModel(
      title: 'Telefone',
      iconPath: 'assets/images/whatsapp.png',
      navigateTo: 'path',
      category: Category.communication),
  FeatureModel(
      title: 'Outra Feature Maior',
      iconPath: 'assets/images/whatsapp.png',
      navigateTo: 'path',
      category: Category.health),
  FeatureModel(
    title: 'Uma feature sem categoria',
    iconPath: 'assets/images/whatsapp.png',
    navigateTo: 'path',
  ),
  FeatureModel(
      title: 'Outra Feature',
      iconPath: 'assets/images/whatsapp.png',
      navigateTo: 'path',
      category: Category.health),
];
