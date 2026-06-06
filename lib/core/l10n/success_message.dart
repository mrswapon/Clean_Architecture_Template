import 'package:clean_architecture_template/l10n/app_localizations.dart';

enum AppSuccessMessage {
  userCreated,
  userUpdated,
  userDeleted,
  userFrozen,
  userUnfrozen,
  unitCreated,
  unitUpdated,
  unitDeleted,
  entryCreated,
  entryUpdated,
  entryDeleted,
  configCreated,
  configUpdated,
  configDeleted,
  configOrderSaved,
}

extension AppSuccessMessageX on AppSuccessMessage {
  String localize(AppLocalizations l10n) => switch (this) {
        AppSuccessMessage.userCreated => l10n.userCreatedSuccess,
        AppSuccessMessage.userUpdated => l10n.userUpdatedSuccess,
        AppSuccessMessage.userDeleted => l10n.userDeletedSuccess,
        AppSuccessMessage.userFrozen => l10n.userFrozenSuccess,
        AppSuccessMessage.userUnfrozen => l10n.userUnfrozenSuccess,
        AppSuccessMessage.unitCreated => l10n.unitCreatedSuccess,
        AppSuccessMessage.unitUpdated => l10n.unitUpdatedSuccess,
        AppSuccessMessage.unitDeleted => l10n.unitDeletedSuccess,
        AppSuccessMessage.entryCreated => l10n.entryCreatedSuccess,
        AppSuccessMessage.entryUpdated => l10n.entryUpdatedSuccess,
        AppSuccessMessage.entryDeleted => l10n.entryDeletedSuccess,
        AppSuccessMessage.configCreated => l10n.configCreatedSuccess,
        AppSuccessMessage.configUpdated => l10n.configUpdatedSuccess,
        AppSuccessMessage.configDeleted => l10n.configDeletedSuccess,
        AppSuccessMessage.configOrderSaved => l10n.configOrderSavedSuccess,
      };
}
