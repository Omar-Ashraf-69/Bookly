abstract class ApiConsumer {
  Future get(
    String path, {
    dynamic data,
    Map<String, dynamic>? quearyParamteries,
        bool isFormData = false,

  });
  Future post( String path, {
    dynamic data,
    Map<String, dynamic>? quearyParamteries,
    bool isFormData = false,
  });
  Future put( String path, {
    dynamic data,
    Map<String, dynamic>? quearyParamteries,
    bool isFormData =  false,
  });
  Future delete( String path, {
    dynamic data,
    Map<String, dynamic>? quearyParamteries,
    bool isFormData = false,

  });
}
