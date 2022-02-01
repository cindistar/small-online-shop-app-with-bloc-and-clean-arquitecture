abstract class UseCase<Output, Input> {
  Future<List<Output>> call(Input params);
}

class NoParams {}
