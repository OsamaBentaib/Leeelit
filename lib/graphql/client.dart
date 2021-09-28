/// Example functions for calling the Github GraphQL API
///
/// ### Queries
/// * [readRepositories()]
///
/// ### Mutations:
/// * [starRepository(id)]
/// * [removeStarFromRepository(id)]
///
/// To run the example, create a file `lib/local.dart` with the content:
/// ```dart
/// const String YOUR_PERSONAL_ACCESS_TOKEN =
///    '<YOUR_PERSONAL_ACCESS_TOKEN>';
/// ```
import 'dart:io' show stdout, stderr, exit;
import 'package:graphql/client.dart';
import 'package:wearift/local.dart';
import '../logs.dart';

GraphQLClient graphqlClient() {
  final Link _link = HttpLink(
    GRAPHQL_URL,
    // defaultHeaders: {
    //   'Authorization': 'Bearer $CLIENT_ACCESS_TOKEN',
    // },
  );

  return GraphQLClient(
    cache: GraphQLCache(),
    link: _link,
  );
}

final GraphQLClient _client = graphqlClient();

void readAllPosts() async {
  final QueryOptions options = QueryOptions(
    document: gql(
      r'''
        query{
          posts{
            data{
              id
              title
              body
            }
          }
        }
      ''',
    ),
    // variables: {
    //   'nRepositories': nRepositories,
    // },
  );

  final QueryResult result = await _client.query(options);

  if (result.hasException) {
    stderr.writeln(result.exception.toString());

    print(result.exception.toString());
  }

  logColor(result);
}
