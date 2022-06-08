import 'package:instagram_clone/models/post.dart';
import 'package:instagram_clone/models/story.dart';
import 'package:instagram_clone/models/user.dart';

User currentUser =
    User("", "YildizV", "http://picsum.photos/id/1070/400/400");

final List<Story> stories = [
  Story('id', currentUser),
  Story('id', currentUser),
  Story('id', currentUser),
  Story('id', currentUser),
  Story('id', currentUser),
  Story('id', currentUser),
  Story('id', currentUser),
  Story('id', currentUser),
  Story('id', currentUser),
  Story('id', currentUser),
];

final List<Post> posts = [
  Post("id", currentUser, "http://picsum.photos/id/1062/400/400", "title", "New York Usa", "caption", "a few seconds ago", "131", "32", false, true),
  Post("id1", currentUser, "http://picsum.photos/id/1063/400/400", "title1", "Toronto Canada", "caption", "a few seconds ago", "135", "20", true, false),
  Post("id2", currentUser, "http://picsum.photos/id/1064/400/400", "title2", "Paris France", "caption", "a few seconds ago", "200", "40", true, false),
  Post("id3", currentUser, "http://picsum.photos/id/1065/400/400", "title3", "England ", "caption", "a few seconds ago", "300", "78", true, false),
  Post("id4", currentUser, "http://picsum.photos/id/1066/400/400", "title4", "İtaly", "caption", "a few seconds ago", "155", "69", false, false),
  Post("id5", currentUser, "http://picsum.photos/id/1067/400/400", "title5", "Turkey", "caption", "a few seconds ago", "789", "99", false, false),
  Post("id6", currentUser, "http://picsum.photos/id/1068/400/400", "title6", "Guney Kore", "caption", "a few seconds ago", "452", "333", true, true),
  Post("id7", currentUser, "http://picsum.photos/id/1069/400/400", "title7", "Çin", "caption", "a few seconds ago", "302", "456", true, false),
];
