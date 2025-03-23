import 'package:acha_facil/models/feature_model.dart';

final featuresData = [
  FeatureModel(
    id: '1',
    title: 'Whatsapp',
    description:
        'Mande mensagens pela internet - precisa estar conectado à internet!',
    iconPath: 'assets/images/whatsapp.png',
    navigateTo: 'https://wa.me',
    playStoreUrl: 'https://play.google.com/store/apps/details?id=com.whatsapp',
    appleStoreUrl:
        'https://apps.apple.com/br/app/whatsapp-messenger/id310633997',
    category: Category.communication,
  ),
  FeatureModel(
    id: '2',
    title: 'Telefone',
    description: 'Faça ligações usando a rede de telefone',
    iconPath: 'assets/images/phone.png',
    navigateTo: 'path',
    category: Category.communication,
  ),
  FeatureModel(
    id: '3',
    title: 'Contatos',
    description: 'Visualize seus contatos salvos',
    iconPath: 'assets/images/contacts.png',
    navigateTo: 'path',
    category: Category.communication,
  ),
  FeatureModel(
    id: '4',
    title: 'E-mail',
    description:
        'Acesse seu e-mail - precisa ter conta e estar conectado à internet!',
    iconPath: 'assets/images/email.png',
    navigateTo: 'path',
    category: Category.communication,
  ),
  FeatureModel(
    id: '5',
    title: 'Facebook',
    description:
        'Acesse o Facebook - precisa ter conta e estar conectado à internet!',
    iconPath: 'assets/images/facebook.png',
    navigateTo: 'path',
    category: Category.socialMedia,
  ),
  FeatureModel(
    id: '6',
    title: 'Instagram',
    description:
        'Acesse o Instagram - precisa ter conta e estar conectado à internet!',
    iconPath: 'assets/images/instagram.png',
    navigateTo: 'path',
    category: Category.socialMedia,
  ),
  FeatureModel(
    id: '7',
    title: 'Câmera',
    description: 'Acesse a câmera do seu celular para tirar fotos',
    iconPath: 'assets/images/camera.png',
    navigateTo: 'camera://',
    category: Category.media,
  ),
  FeatureModel(
    id: '8',
    title: 'Galeria de Fotos',
    description: 'Visualize as fotos tiradas com sua câmera',
    iconPath: 'assets/images/galeria.png',
    navigateTo: 'path',
    category: Category.media,
  ),
  FeatureModel(
    id: '9',
    title: 'Controle de Remédios',
    description: 'Visualize o controle de remédios',
    iconPath: 'assets/images/remedios.png',
    navigateTo: 'path',
    category: Category.health,
  ),
  FeatureModel(
    id: '10',
    title: 'Google',
    description: 'Acesse o Google para fazer pesquisas',
    iconPath: 'assets/images/google.png',
    navigateTo: 'path',
    category: Category.internet,
  ),
  FeatureModel(
    id: '11',
    title: 'Youtube',
    description: 'Acesse o Youtube para assistir vídeos',
    iconPath: 'assets/images/youtube.png',
    navigateTo: 'path',
    category: Category.internet,
  ),
  FeatureModel(
    id: '12',
    title: 'gov.br',
    description: 'Acesse o gov.br para acessar serviços do governo',
    iconPath: 'assets/images/govbr.png',
    navigateTo: 'path',
    category: Category.services,
  ),
];
