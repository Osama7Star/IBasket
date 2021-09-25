class ShopModel{
  int id ;
  String name ;
  String deliveryTime ;
  double minimum ;
  double rating;
  String image ;
  bool restaurantDelivery;
  bool getirDelivery;
  bool open;

  ShopModel({ required this.id,required this.name, required this.deliveryTime,required this.minimum,required this.rating,required this.image,required this.restaurantDelivery ,required this.getirDelivery ,this.open=true});
}

List<ShopModel> shopModelList = [
  ShopModel(id:1,name:'Kahvaltı Çiftiliği',deliveryTime:"40 - 50 min",minimum:20,rating:5.4,image:'https://boroughmarket.org.uk/wp-content/plugins/phastpress/phast.php/c2VydmljZT1pbWFnZXMmc3JjPWh0dHBzJTNBJTJGJTJGYm9yb3VnaG1hcmtldC5vcmcudWslMkZ3cC1jb250ZW50JTJGdXBsb2FkcyUyRjIwMjElMkYwMSUyRmJvcm91Z2gtbWFya2V0LWZydWl0LXN0YWxscy0xMDI0eDU5MC5qcGcmY2FjaGVNYXJrZXI9MTYxNzEyMDk4MS03MzY0NiZ0b2tlbj1iNzM1NTM1ODE2ODUzMTNl.q.jpg'      ,getirDelivery: true,restaurantDelivery: false ,open: true),
  ShopModel(id:1,name:'Kahvaltı Çiftiliği',deliveryTime:"40 - 50 min",minimum:20,rating:5.4,image:'https://boroughmarket.org.uk/wp-content/plugins/phastpress/phast.php/c2VydmljZT1pbWFnZXMmc3JjPWh0dHBzJTNBJTJGJTJGYm9yb3VnaG1hcmtldC5vcmcudWslMkZ3cC1jb250ZW50JTJGdXBsb2FkcyUyRjIwMjElMkYwMSUyRmJvcm91Z2gtbWFya2V0LWZydWl0LXN0YWxscy0xMDI0eDU5MC5qcGcmY2FjaGVNYXJrZXI9MTYxNzEyMDk4MS03MzY0NiZ0b2tlbj1iNzM1NTM1ODE2ODUzMTNl.q.jpg'      ,getirDelivery: true,restaurantDelivery: false ,open: false),
  ShopModel(id:1,name:'Kahvaltı Çiftiliği',deliveryTime:"40 - 50 min",minimum:20,rating:5.4,image:'https://boroughmarket.org.uk/wp-content/plugins/phastpress/phast.php/c2VydmljZT1pbWFnZXMmc3JjPWh0dHBzJTNBJTJGJTJGYm9yb3VnaG1hcmtldC5vcmcudWslMkZ3cC1jb250ZW50JTJGdXBsb2FkcyUyRjIwMjElMkYwMSUyRmJvcm91Z2gtbWFya2V0LWZydWl0LXN0YWxscy0xMDI0eDU5MC5qcGcmY2FjaGVNYXJrZXI9MTYxNzEyMDk4MS03MzY0NiZ0b2tlbj1iNzM1NTM1ODE2ODUzMTNl.q.jpg'      ,getirDelivery: true,restaurantDelivery: false ,open: true),


];