class CategoryModel{
  final String name;
  final int price;
  final String address;

  CategoryModel({
    required this.name,
    required this.price,
    required this.address,
});
}
final List<CategoryModel> demoCategories = [
  CategoryModel(
    name: 'Popular',
    address: 'Mini B',
    price: 1000,
  ),
  CategoryModel(
    name: 'Antique',
    address: 'Mini B',
    price: 1000,
  ),
  CategoryModel(
    name: 'Lenses',
    address: 'Mini B',
    price: 1000,
  ),
  CategoryModel(
    name: 'Old Model',
    address: 'Mini B',
    price: 1000,
  ),
  CategoryModel(
    name: 'Expensive',
    address: 'Mini B',
    price: 1000,
  ),
  CategoryModel(
    name: 'Chep',
    address: 'Mini B',
    price: 1000,
  ),
];

