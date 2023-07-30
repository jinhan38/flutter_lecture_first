class OpenApiModel {
  String category;
  String fcstValue;

  OpenApiModel(this.category, this.fcstValue);

  factory OpenApiModel.fromJson(Map<String, dynamic> json) {
    return OpenApiModel(
      json["category"],
      json["fcstValue"],
    );
  }

  String parseValue() {
    String value = "";

    switch (category) {
      case "TMP":
        value = "온도 : $fcstValue°C";
        break;
      case "UUU":
        value = "풍속(동서성분) : ${fcstValue}m/s";
        break;
      case "VVV":
        value = "풍속(남북성분) : ${fcstValue}m/s";
        break;
      case "VEC":
        value = "풍향 : ${fcstValue}deg";
        break;
      case "WSD":
        value = "풍속 : ${fcstValue}m/s";
        break;
      case "SKY":
        value = "하늘상태 : ${parseSky()}";
        break;
      case "PTY":
        value = "강수형태 : ${parsePty()}";
        break;
      case "POP":
        value = "강수확률 : $fcstValue%";
        break;
      case "WAV":
        value = "파고 : ${fcstValue}M";
        break;
      case "PCP":
        value = "1시간 강수량 : ${fcstValue}1mm";
        break;
    }
    return value;
  }

  String parseSky() {
    switch (fcstValue) {
      case "1":
        return "맑음";
      case "3":
        return "구름많음";
      case "4":
        return "흐림";
      default:
        return "없음";
    }
  }

  String parsePty(){
    switch (fcstValue) {
      case "0":
        return "없음";
      case "1":
        return "비";
      case "2":
        return "비/눈";
      case "3":
        return "눈";
      case "4":
        return "소나기";
      default:
        return "없음";
    }
  }


  @override
  String toString() {
    return '\nOpenApiModel{category: $category, fcstValue: $fcstValue}';
  }
}
