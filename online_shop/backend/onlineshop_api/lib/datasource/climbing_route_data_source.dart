import 'package:onlineshop_api/persistence/frog_mysql_client.dart';
import 'package:onlineshop_api/persistence/model/climbing_route_entity.dart';

/// Contains method to work with the api_routes table
class ClimbingRouteDataSource {
  ///Create and ClimbingRouteDataSource
  ///params: [FrogMysqlClient] instance
  ClimbingRouteDataSource(this._mysqlClient);

  final FrogMysqlClient _mysqlClient;

  ///Fetches all clibing routes from api_routes table
  Future<List<ClimbingRouteEntity>> fetchMinifiedClimbingRoutes() async {
    final result =
        await _mysqlClient.execute('SELECT id, name, imageUrl FROM api_route;');
    final items = <ClimbingRouteEntity>[];
    for (final row in result.rows) {
      items.add(ClimbingRouteEntity.fromRowAssoc(row.assoc()));
    }

    return items;
  }
}
