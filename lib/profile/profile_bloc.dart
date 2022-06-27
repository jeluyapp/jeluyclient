import 'profile_data.dart';

import 'package:hydrated_bloc/hydrated_bloc.dart';

class ProfilePageBloc extends Bloc<ProfileEvent, ProfileStore> {
  @override
  void onChange(Change<ProfileStore> change) {
    super.onChange(change);
  }

  ProfilePageBloc() : super(ProfileStore(substate: null)) {
    on<ProfileUIPressed>(
        (event, emit) => emit(ProfileStore(substate: ProfileStates.profileUI)));
    on<ProfileProfilesPressed>(
        (event, emit) => emit(ProfileStore(substate: ProfileStates.profiles)));
    on<ProfileSettingsPressed>(
        (event, emit) => emit(ProfileStore(substate: ProfileStates.settings)));
    on<ProfileBase>(
        (event, emit) => emit(ProfileStore(substate: null)));
  }
}
