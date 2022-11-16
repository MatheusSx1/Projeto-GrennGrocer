import 'package:flutter/cupertino.dart';
import 'package:lojinha/src/models/cart_item_model.dart';
import 'package:lojinha/src/models/item_model.dart';
import 'package:lojinha/src/models/order_model.dart';
import 'package:lojinha/src/models/user_model.dart';

ItemModel blusa = ItemModel(
  description: 'Moletom Liso Masculino E Feminino Blusa de Frio Canguru',
  imgUrl: 'assets/roupa/Blusa.jpg',
  itemName: 'Blusa Moleton',
  price: 10.0,
  unit: 'Peça',
  tamanho: 'Tamanho/P',
);

ItemModel calca = ItemModel(
  imgUrl: 'assets/roupa/Calça.jpg',
  itemName: 'Calça Joker',
  price: 30.5,
  unit: 'Peça',
  description: 'Calça Joker masculina',
  tamanho: 'Tamanho/50',
);

ItemModel camisa = ItemModel(
  imgUrl: 'assets/roupa/Camisa.jpg',
  itemName: 'Camisa Básica',
  price: 10.0,
  unit: 'Peça',
  description: 'Camisa Masculina Básica',
  tamanho: 'Tamanho/G',
);

ItemModel saia = ItemModel(
    imgUrl: 'assets/roupa/Saia.jpg',
    itemName: 'Saia Jeans',
    price: 30.0,
    unit: 'Peça',
    description: 'Saia Moda Evangélica',
    tamanho: 'Tamanho/48');

ItemModel tenis = ItemModel(
  imgUrl: 'assets/roupa/Tênis.jpg',
  itemName: 'Tênis Feminino',
  price: 40.0,
  unit: 'Par ',
  description: 'Tênis Vans Feminino',
  tamanho: 'Tamanho/38',
);

ItemModel vestido = ItemModel(
  imgUrl: 'assets/roupa/Vestido.jpg',
  itemName: 'Vestido Evangélico',
  price: 60,
  unit: 'Peça',
  description: 'Vestido Feminino Moda Evangélica',
  tamanho: 'Tamanho/36',
);

// Lista de produtos
List<ItemModel> items = [
  blusa,
  calca,
  camisa,
  saia,
  tenis,
  vestido,
];

List<String> categories = [
  'Roupas',
  'Saias',
  'Calças',
  'Camisas',
  'Vestidos',
  'Blusas',
  'Calçados',
];

List<CartItemModel> carItems = [
  CartItemModel(
    item: blusa,
    quantity: 1,
  ),

  CartItemModel(
    item: calca,
    quantity: 2,
  ),

  CartItemModel(
    item: camisa,
    quantity: 3,
  ),
];

UserModel user = UserModel(
    phone: '14 9 98935996', 
    cpf: '999.999.999-99', 
    email: 'matheus@email.com', 
    name: 'Matheus Santos', 
    password: '',
    );

    List<OrderModel> orders = [
  // Pedido 01
  OrderModel(
    copyAndPaste: 'q1w2e3r4t5y6',
    createdDateTime: DateTime.parse(
      '2022-06-08 10:00:10.458',
    ),
    overdueDateTime: DateTime.parse(
      '2025-06-08 11:00:10.458',
    ),
    id: 'asd6a54da6s2d1',
    status: 'pending_payment',
    total: 81.0,
    items: [
      CartItemModel(
        item: calca,
        quantity: 2, 
      ),
      CartItemModel(
        item: blusa,
        quantity: 2,
      ),
    ],
  ),

  // Pedido 02
  OrderModel(
    copyAndPaste: 'q1w2e3r4t5y6',
    createdDateTime: DateTime.parse(
      '2022-06-08 10:00:10.458',
    ),
    overdueDateTime: DateTime.parse(
      '2025-06-08 11:00:10.458',
    ),
    id: 'a65s4d6a2s1d6a5s',
    status: 'delivered',
    total: 10.0,
    items: [
      CartItemModel(
        item: camisa,
        quantity: 1,
      ),
    ],
  ),
];