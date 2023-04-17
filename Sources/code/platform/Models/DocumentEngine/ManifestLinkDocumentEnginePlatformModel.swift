

import Foundation

public extension PlatformClient.DocumentEngine {
    /*
         Model: ManifestLink
         Used By: DocumentEngine
     */

    class ManifestLink: Codable {
        public var name: String

        public var manifestId: String

        public enum CodingKeys: String, CodingKey {
            case name

            case manifestId = "manifest_id"
        }

        public init(manifestId: String, name: String) {
            self.name = name

            self.manifestId = manifestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            manifestId = try container.decode(String.self, forKey: .manifestId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)
        }
    }
}
