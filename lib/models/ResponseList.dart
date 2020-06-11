class ResponseList{
  int count;
  String next;
  String previous;

  ResponseList(Map map){
    if (map.containsKey("count"))
      count = map['count'];

    if (map.containsKey("next"))
      next = map['next'];

    if (map.containsKey("previous"))
      previous = map['previous'];
  }
}