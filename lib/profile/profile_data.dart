abstract class ProfileEvent {}

class ProfileUIPressed extends ProfileEvent {}

class ProfileProfilesPressed extends ProfileEvent {}

class ProfileSettingsPressed extends ProfileEvent {}

class ProfileBase extends ProfileEvent {}

enum ProfileStates {
  profileUI,
  profiles,
  settings
}

class ProfileStore {
  ProfileStates? substate;

  ProfileStore({required this.substate});
}
