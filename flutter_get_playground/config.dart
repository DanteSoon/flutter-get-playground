enum Env {
  // ignore: constant_identifier_names
  RPDT,
  // ignore: constant_identifier_names
  UAT,
  // ignore: constant_identifier_names
  PDT,
}

class Config {
  static late Env env;

  // ignore: non_constant_identifier_names
  static String get API_URL {
    switch (env) {
      case Env.RPDT:
        return "https://rpdtservice.caizidao.com.cn/";
      case Env.UAT:
        return "https://talks.caizidao.com.cn/";
      case Env.PDT:
      default:
        return "https://service.caizidao.com.cn/";
    }
  }

  // ignore: non_constant_identifier_names
  static String get AUTH_URL {
    switch (env) {
      case Env.RPDT:
        return "https://rpdtservice.caizidao.com.cn/";
      case Env.UAT:
        return "https://uatauth.jinjiwo.com:2542/";
      case Env.PDT:
      default:
        return "https://service.caizidao.com.cn/";
    }
  }
}
