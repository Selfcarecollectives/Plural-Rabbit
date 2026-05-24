import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables.dart';

part 'folder_dao.g.dart';

@DriftAccessor(tables: [FolderTable, ProfileFolderMembershipTable])
class FolderDao extends DatabaseAccessor<AppDatabase> with _$FolderDaoMixin {
  FolderDao(super.db);

  Future<List<FolderTableData>> getTopLevelFolders({String? vaultId}) {
    if (vaultId != null) {
      return (select(folderTable)
            ..where((t) =>
                t.vaultId.equals(vaultId) & t.parentFolderId.isNull())
            ..orderBy([(t) => OrderingTerm.asc(t.orderIndex)]))
          .get();
    }
    return (select(folderTable)
          ..where((t) => t.vaultId.isNull() & t.parentFolderId.isNull())
          ..orderBy([(t) => OrderingTerm.asc(t.orderIndex)]))
        .get();
  }

  Future<List<FolderTableData>> getChildFolders(String parentFolderId) =>
      (select(folderTable)
            ..where((t) => t.parentFolderId.equals(parentFolderId))
            ..orderBy([(t) => OrderingTerm.asc(t.orderIndex)]))
          .get();

  Future<void> createFolder(FolderTableCompanion entry) =>
      into(folderTable).insert(entry);

  Future<void> updateFolder(FolderTableCompanion entry) =>
      update(folderTable).write(entry);

  Future<void> deleteFolder(String folderId) =>
      (delete(folderTable)..where((t) => t.folderId.equals(folderId))).go();

  Future<List<ProfileFolderMembershipTableData>> getProfilesInFolder(
          String folderId) =>
      (select(profileFolderMembershipTable)
            ..where((t) => t.folderId.equals(folderId))
            ..orderBy([(t) => OrderingTerm.asc(t.orderIndex)]))
          .get();
}
