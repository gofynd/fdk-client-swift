

import Foundation
public extension PlatformClient {
    /*
         Model: ArchiveConfig
         Used By: Inventory
     */

    class ArchiveConfig: Codable {
        public var delete: Bool?

        public var archive: Bool?

        public var archiveDir: String?

        public enum CodingKeys: String, CodingKey {
            case delete

            case archive

            case archiveDir = "archive_dir"
        }

        public init(archive: Bool? = nil, archiveDir: String? = nil, delete: Bool? = nil) {
            self.delete = delete

            self.archive = archive

            self.archiveDir = archiveDir
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                delete = try container.decode(Bool.self, forKey: .delete)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                archive = try container.decode(Bool.self, forKey: .archive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                archiveDir = try container.decode(String.self, forKey: .archiveDir)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(delete, forKey: .delete)

            try? container.encodeIfPresent(archive, forKey: .archive)

            try? container.encodeIfPresent(archiveDir, forKey: .archiveDir)
        }
    }
}
