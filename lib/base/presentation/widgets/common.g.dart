// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class CommonButton extends StatelessWidget {
  const CommonButton({
    Key? key,
    required this.child,
    this.width,
    this.height = 44,
    this.onPressed,
    this.fillColor = Colors.transparent,
    this.borderColor = Colors.transparent,
    this.borderWidth = 1,
    this.borderRadius,
    this.state,
  }) : super(key: key);

  final Widget child;

  final double? width;

  final double height;

  final dynamic Function()? onPressed;

  final Color fillColor;

  final Color borderColor;

  final double borderWidth;

  final BorderRadiusGeometry? borderRadius;

  final BaseState<dynamic>? state;

  @override
  Widget build(BuildContext _context) => commonButton(
        child: child,
        width: width,
        height: height,
        onPressed: onPressed,
        fillColor: fillColor,
        borderColor: borderColor,
        borderWidth: borderWidth,
        borderRadius: borderRadius,
        state: state,
      );
}

class CommonBottomError extends StatelessWidget {
  const CommonBottomError({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext _context) => commonBottomError(text: text);
}

class CommonBottomButton extends StatelessWidget {
  const CommonBottomButton({
    Key? key,
    required this.text,
    this.isDisable = false,
    this.pressedOpacity = 0.4,
    this.onPressed,
    this.state,
  }) : super(key: key);

  final String text;

  final bool isDisable;

  final double pressedOpacity;

  final dynamic Function()? onPressed;

  final BaseState<dynamic>? state;

  @override
  Widget build(BuildContext _context) => commonBottomButton(
        text: text,
        isDisable: isDisable,
        pressedOpacity: pressedOpacity,
        onPressed: onPressed,
        state: state,
      );
}

class CommonBackButton extends StatelessWidget {
  const CommonBackButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final void Function()? onPressed;

  @override
  Widget build(BuildContext _context) => commonBackButton(onPressed: onPressed);
}

class CommonCloseButton extends StatelessWidget {
  const CommonCloseButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final void Function()? onPressed;

  @override
  Widget build(BuildContext _context) =>
      commonCloseButton(onPressed: onPressed);
}

class CustomItemCommonButton extends StatelessWidget {
  const CustomItemCommonButton({
    Key? key,
    this.onPressed,
    required this.title,
    this.withSeparator = false,
    this.hasSeparator = false,
  }) : super(key: key);

  final void Function()? onPressed;

  final String title;

  final bool withSeparator;

  final bool hasSeparator;

  @override
  Widget build(BuildContext _context) => customItemCommonButton(
        onPressed: onPressed,
        title: title,
        withSeparator: withSeparator,
        hasSeparator: hasSeparator,
      );
}

class CommonButtonProfile extends StatelessWidget {
  const CommonButtonProfile({
    Key? key,
    this.onPressed,
    required this.title,
    required this.detail,
    this.arrow = false,
  }) : super(key: key);

  final void Function()? onPressed;

  final String title;

  final String detail;

  final bool? arrow;

  @override
  Widget build(BuildContext _context) => commonButtonProfile(
        onPressed: onPressed,
        title: title,
        detail: detail,
        arrow: arrow,
      );
}

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    Key? key,
    this.formKey,
    required this.type,
    this.obscureText = false,
    this.isEnable = true,
    this.maxLines = 1,
    this.initialValue,
    this.controller,
    this.textInputAction = TextInputAction.next,
    this.onTap,
    this.onChanged,
    this.onSubmitted,
    this.suffixIcon,
    this.onPressedSuffixIcon,
  }) : super(key: key);

  final GlobalKey<FormBuilderState>? formKey;

  final FormFieldType type;

  final bool obscureText;

  final bool isEnable;

  final int? maxLines;

  final String? initialValue;

  final TextEditingController? controller;

  final TextInputAction? textInputAction;

  final void Function()? onTap;

  final void Function(String?)? onChanged;

  final void Function(String?)? onSubmitted;

  final Widget? suffixIcon;

  final void Function()? onPressedSuffixIcon;

  @override
  Widget build(BuildContext _context) => commonTextField(
        _context,
        formKey: formKey,
        type: type,
        obscureText: obscureText,
        isEnable: isEnable,
        maxLines: maxLines,
        initialValue: initialValue,
        controller: controller,
        textInputAction: textInputAction,
        onTap: onTap,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        suffixIcon: suffixIcon,
        onPressedSuffixIcon: onPressedSuffixIcon,
      );
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => loadingWidget();
}

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({
    Key? key,
    this.title,
    this.content,
    this.onPressed,
  }) : super(key: key);

  final Widget? title;

  final Widget? content;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext _context) => errorDialog(
        title: title,
        content: content,
        onPressed: onPressed,
      );
}

class RetryErrorWidget extends StatelessWidget {
  const RetryErrorWidget({
    Key? key,
    this.errorMessage,
    required this.onPressed,
  }) : super(key: key);

  final String? errorMessage;

  final void Function() onPressed;

  @override
  Widget build(BuildContext _context) => retryErrorWidget(
        errorMessage: errorMessage,
        onPressed: onPressed,
      );
}
