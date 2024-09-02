class BookEntities{
  final String title;
  final String authorName;
  final String price;
  final String rating;
  final String totalVotes;

  BookEntities(this.price, {
    required this.title,
    required this.authorName,
    required this.rating,
    required this.totalVotes
});


}