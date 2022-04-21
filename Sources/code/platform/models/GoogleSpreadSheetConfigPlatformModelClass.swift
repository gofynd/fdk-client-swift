

import Foundation
public extension PlatformClient {
    /*
         Model: GoogleSpreadSheetConfig
         Used By: Inventory
     */

    class GoogleSpreadSheetConfig: Codable {
        public var range: String?

        public var sheetId: String?

        public var clientSecretLocation: String?

        public var credStorageDirectory: String?

        public var localDir: String?

        public var archiveConfig: ArchiveConfig?

        public enum CodingKeys: String, CodingKey {
            case range

            case sheetId = "sheet_id"

            case clientSecretLocation = "client_secret_location"

            case credStorageDirectory = "cred_storage_directory"

            case localDir = "local_dir"

            case archiveConfig = "archive_config"
        }

        public init(archiveConfig: ArchiveConfig? = nil, clientSecretLocation: String? = nil, credStorageDirectory: String? = nil, localDir: String? = nil, range: String? = nil, sheetId: String? = nil) {
            self.range = range

            self.sheetId = sheetId

            self.clientSecretLocation = clientSecretLocation

            self.credStorageDirectory = credStorageDirectory

            self.localDir = localDir

            self.archiveConfig = archiveConfig
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                range = try container.decode(String.self, forKey: .range)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sheetId = try container.decode(String.self, forKey: .sheetId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                clientSecretLocation = try container.decode(String.self, forKey: .clientSecretLocation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                credStorageDirectory = try container.decode(String.self, forKey: .credStorageDirectory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                localDir = try container.decode(String.self, forKey: .localDir)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                archiveConfig = try container.decode(ArchiveConfig.self, forKey: .archiveConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(range, forKey: .range)

            try? container.encodeIfPresent(sheetId, forKey: .sheetId)

            try? container.encodeIfPresent(clientSecretLocation, forKey: .clientSecretLocation)

            try? container.encodeIfPresent(credStorageDirectory, forKey: .credStorageDirectory)

            try? container.encodeIfPresent(localDir, forKey: .localDir)

            try? container.encodeIfPresent(archiveConfig, forKey: .archiveConfig)
        }
    }
}
