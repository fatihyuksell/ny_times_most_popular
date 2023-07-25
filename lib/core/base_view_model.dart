import 'package:flutter/scheduler.dart';
import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';
import 'interaction_mixin.dart';

abstract class BaseViewModel<VA> extends ChangeNotifier with InteractionMixin {
  VA? arguments;

  VA get args => arguments!;
  bool isBusy = false;
  bool mounted = false;
  bool _showLoading = false;
  bool _isDisposed = false;

  bool get isDisposed => _isDisposed;

  bool get showLoading => _showLoading;

  set showLoading(bool value) {
    _showLoading = value;
    SchedulerBinding.instance.addPostFrameCallback((_) {
      loadingOverlay(value);
    });
  }

  @protected
  @visibleForTesting
  VA parseArgsFromJson(Map<String, dynamic> args) {
    throw UnimplementedError(
      'parseArgsFromJson method must be implemented in child class',
    );
  }

  void parseArgs([Object? args]) {
    if (args != null && args is VA) {
      arguments = args as VA?;
    } else if (args != null && args is Map) {
      arguments = parseArgsFromJson(args as Map<String, dynamic>);
    }

    if (!mounted) {
      onBindingCreated();
      mounted = true;
    }
  }

  void notify() {
    if (!isDisposed) {
      notifyListeners();
    }
  }

  @protected
  @visibleForTesting
  void onBindingCreated() {}

  void willDispose() {}

  @override
  void dispose() {
    _isDisposed = true;
    super.dispose();
  }

  int _flowCount = 0;

  Future<void> flow<T extends Object?>(
    final Function callback, {
    final ValueChanged<T>? onSuccess,
    final void Function(StackTrace, DioException)? onError,
    final void Function()? onFinally,
    final bool showLoading = true,
    final bool shouldWaitOtherFlows = false,
  }) async {
    _flowCount++;
    this.showLoading = showLoading;
    isBusy = true;
    notify();

    try {
      final T data = await callback();
      onSuccess?.call(data);
    } catch (e, s) {
      //TODO: istenilen error widget ı eklenecek.

      if (kDebugMode) {
        debugPrint('$e\n$s');
        // throw Exception('$e\n$s');
      }
    } finally {
      onFinally?.call();

      _flowCount--;
      if (!shouldWaitOtherFlows) {
        this.showLoading = false;
      } else {
        if (_flowCount == 0) {
          this.showLoading = false;
        }
      }
      isBusy = false;
      notify();
    }
  }
}
