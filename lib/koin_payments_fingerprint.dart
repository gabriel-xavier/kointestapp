import 'utils/data_equality.dart';

part "./models/fingerprint.dart";

abstract class KoinPaymentsFingerprint {
  static const String sandboxUrl =
      "https://api-sandbox.koin.com.br/fingerprint/session/mobile";

  /// Returns device fingerprint
  static Fingerprint fingerprint({
    required String organizationId,
    String? sessionId,
    required MobileApplication mobileApplication,
  }) =>
      Fingerprint(
        organizationId: organizationId,
        sessionId: sessionId,
        mobileApplication: mobileApplication,
      );
}
