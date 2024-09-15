part of 'localization_bloc.dart';

@immutable
sealed class LocalizationState {}

final class LocalizationInitialState extends LocalizationState {}
final class LocalizationLoadingState extends LocalizationState {}
final class LocalizationUpdateState extends LocalizationState {}
