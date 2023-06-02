function validateInputParameter(parameter) {
    try {
      return parameter == "" ||
        parameter == null ||
        parameter.length < process.env.VALIDATE_INPUT_PARAMETER_LENGTH
        ? false
        : true;
    } catch (exception) {
      throw new Error(exception);
    }
  }
  module.exports.validateInputParameter = validateInputParameter;
  