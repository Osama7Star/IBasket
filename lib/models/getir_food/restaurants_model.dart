class RestaurantsModel{
  int id ;
  String name ;
  String deliveryTime ;
  double minimum ;
  double rating;
  String image ;
  bool restaurantDelivery;
  bool getirDelivery;
  bool discount;

  RestaurantsModel({ required this.id,required this.name, required this.deliveryTime,required this.minimum,required this.rating,required this.image,required this.restaurantDelivery ,required this.getirDelivery,this.discount = false });
}

List<RestaurantsModel> restaurantsList = [
  RestaurantsModel(id:1,name:'Hot Döner (Şişli Merkez Mah.)',deliveryTime:"40 - 50 min",minimum:20,rating:5.4,image:'https://cdn.getiryemek.com/restaurants/1604067657962_1125x522.jpeg'      ,getirDelivery: true,restaurantDelivery: false,discount:true),
  RestaurantsModel(id:1,name:'Pasaport Pizza (Şişli Merkez Mah.)',deliveryTime:"40 - 50 min",minimum:20,rating:3.5,image:'https://cdn.getiryemek.com/restaurants/1615892421669_1125x522.jpeg' ,getirDelivery: true,restaurantDelivery: true ,),
  RestaurantsModel(id:1,name:'Ayça Kasap Burger (Fulya Mah.)',deliveryTime:"40 - 50 min",minimum:20,rating:2.4,image:'https://cdn.getiryemek.com/restaurants/1581949154562_1125x522.jpeg'     ,getirDelivery: true,restaurantDelivery: false,discount:true),
  RestaurantsModel(id:1,name:'Bakırda Kuru',deliveryTime:"40 - 50 min",minimum:20,rating:5.4,image:'https://cdn.getiryemek.com/restaurants/1553764716666_1125x522.jpeg' ,getirDelivery: false,restaurantDelivery: false   ),
  RestaurantsModel(id:1,name:'Hayri Usta Ev Yemekleri (Vişnezade Mah.)',deliveryTime:"40 - 50 min",minimum:20,rating:5.4,image:'https://cdn.getiryemek.com/restaurants/1577388509217_1125x522.jpeg',getirDelivery: true,restaurantDelivery: false ),
  RestaurantsModel(id:1,name:'Hacıoğlu (Mecidiyeköy Mah.)',deliveryTime:"40 - 50 min",minimum:20,rating:1.4,image:'https://cdn.getiryemek.com/restaurants/1605902397199_1125x522.jpeg',getirDelivery: false,restaurantDelivery: true  ,discount:true),
  RestaurantsModel(id:1,name:'Chinese Time (Cihannüma Mah.)',deliveryTime:"40 - 50 min",minimum:20,rating:3.3,image:'https://cdn.getiryemek.com/restaurants/1617024822685_1125x522.jpeg',getirDelivery: true,restaurantDelivery: false,discount:true),
  RestaurantsModel(id:1,name:'Ortaklar Kanat ve Dürüm Evi (Fulya Mah.)',deliveryTime:"40 - 50 min",minimum:20,rating:5.4,image:'https://cdn.getiryemek.com/restaurants/1626256525939_1125x522.jpeg',getirDelivery: false,restaurantDelivery: true ),
  RestaurantsModel(id:1,name:'Le Monde Du Tacos (Sinanpaşa Mah.)',deliveryTime:"40 - 50 min",minimum:20,rating:5.4,image:'https://cdn.getiryemek.com/restaurants/1629844207679_1125x522.jpeg',getirDelivery: true,restaurantDelivery: true ),

];