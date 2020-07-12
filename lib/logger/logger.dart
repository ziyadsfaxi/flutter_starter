import 'dart:io';
import 'package:logger/logger.dart';

void log(message, [level = 'debug']) {
  Logger logger = new Logger(
    printer: PrettyPrinter(
      methodCount: level == 'info' ? 0 : 3,
      errorMethodCount: 5,
      lineLength: 50,
      colors: Platform.isIOS ? false : true,
      printEmojis: true,
      printTime: false,
    ),
  );

  switch (level) {
    case 'debug':
      logger.d(message.toString());
      break;
    case 'info':
      logger.i(message.toString());
      break;
    case 'error':
      logger.e(message.toString());
      break;
    default:
      logger.d(message.toString());
  }
}

void error(err) {
  Logger logger = new Logger(
    printer: PrettyPrinter(
      methodCount: 3,
      errorMethodCount: 5,
      lineLength: 50,
      colors: Platform.isIOS ? false : true,
      printEmojis: true,
      printTime: false,
    ),
  );

  logger.e(err);
}
