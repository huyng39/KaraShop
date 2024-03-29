import 'package:form_field_validator/form_field_validator.dart';

class Validators {
  /// Email Validator
  static final email = EmailValidator(errorText: 'Vui lòng nhập đúng định dạng email');

  /// Password Validator
  static final password = MultiValidator([
    RequiredValidator(errorText: 'Không được bỏ trống'),
    MinLengthValidator(8, errorText: 'Mật khẩu phải ít nhất 8 ký tự trở lên'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'Mật khẩu phải có ít nhất 1 ký tự đặc biệt')
  ]);

  /// Required Validator with Optional Field Name
  static RequiredValidator requiredWithFieldName(String? fieldName) =>
      // RequiredValidator(errorText: '${fieldName ?? 'Field'} is required');
      RequiredValidator(errorText: 'Không được bỏ trống');

  /// Plain Required Validator
  static final required = RequiredValidator(errorText: 'Không được bỏ trống');
}
