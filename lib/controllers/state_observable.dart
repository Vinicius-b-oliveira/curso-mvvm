import 'package:mvvm/contracts/oberservable_state.dart';
import 'package:mvvm/controllers/change_state.dart';

class StateObservable<T> extends ChangeState implements ObservableState {
  T _state;

  @override
  T get state => _state;

  set state(T newState) {
    if (newState == _state) return;

    _state = newState;
    notifyCallback();
  }

  StateObservable(this._state);
}
