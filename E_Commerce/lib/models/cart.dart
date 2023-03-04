import 'package:e_commerce/core/store.dart';
import 'package:e_commerce/models/catalog.dart';
import "package:velocity_x/velocity_x.dart";

class CartModel {
  late CatalogModel _catalog;
  late final List<int> _itemlist;
  late List<int> _itemIds;

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel value) {
    assert(value != null);
    _catalog = value;
  }

  List<Item> get items => _itemIds.map((id) => catalog.getById(id)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  void add(Item item) {
    _itemIds.add(item.id);
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}

//New Class
class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);

  @override
  dynamic perform() {
    store?.cart?._itemIds.add(item.id);
  }
}

//Anather Class

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);

  @override
  dynamic perform() {
    store?.cart?._itemIds.remove(item.id);
  }
}
