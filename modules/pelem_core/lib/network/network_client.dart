import 'dart:io';

import 'package:dio/io.dart';
import 'package:flutter/services.dart';

class NetworkClient extends IOHttpClientAdapter {
  Future<SecurityContext> get globalContext async {
    final sslCert = await rootBundle.load('certificates/tmdb.cer');
    SecurityContext securityContext = SecurityContext(withTrustedRoots: false);
    securityContext.setTrustedCertificatesBytes(sslCert.buffer.asUint8List());
    return securityContext;
  }

  Future<IOHttpClientAdapter> get client async {
    return IOHttpClientAdapter(
        onHttpClientCreate: (client) => client
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) => true);
  }
}
