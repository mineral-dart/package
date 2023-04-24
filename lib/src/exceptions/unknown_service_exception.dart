import 'dart:core';

class UnknownServiceException implements Exception {
  final String service;

  UnknownServiceException(this.service);

  @override
  String toString () => 'Unknown or inaccessible service $service in the context of the command line.';
}