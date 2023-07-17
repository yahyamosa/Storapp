class product{
  dynamic id ;
   dynamic title ;
   dynamic price ;
  dynamic description ;
  dynamic image ;
  // new thing
  final rating rate ;

  product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rate,

  });

  factory product.fromJson(jsondata){
    return product(
        id: jsondata['id'],
        title: jsondata['title'],
        price: jsondata['price'],
        description: jsondata['description'],
        image: jsondata['image'],
       rate:rating.fromJson(jsondata['rating'])
    );
  }
}
class rating{
  final dynamic rate ;
  final dynamic count ;

  rating({required this.rate,required this.count});

  factory rating.fromJson(jsondata){
    return rating(
        rate: jsondata['rate'],
        count: jsondata['count']);
  }
}
