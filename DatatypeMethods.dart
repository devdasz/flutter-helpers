class ConversionHelper {
  static int parseToInt(dynamic input) {
    if (input is int) {
      // If input is already an int, return it as is
      return input;
    } else if (input is String) {
      // If input is a string, try to parse it as an int
      try {
        return int.parse(input);
      } catch (e) {
        // If parsing fails, you can handle the error here or return a default value
        // For example, you can return 0 or throw an exception
        throw FormatException('Input is not a valid integer string');
      }
    } else {
      // If input is neither an int nor a string, you can handle it as needed
      // For example, you can return a default value or throw an exception
      throw ArgumentError('Input must be an int or a string');
    }
  }

  static String parseToString(dynamic input) {
    if (input is int) {
      // If input is already an int, return it as string
      return input.toString();
    } else if (input is String) {
      // If input is a string, return it
      return input;
    } else {
      // If input is neither an int nor a string, you can handle it as needed
      // For example, you can return a default value or throw an exception
      throw ArgumentError('Input must be an int or a string');
    }
  }
}
