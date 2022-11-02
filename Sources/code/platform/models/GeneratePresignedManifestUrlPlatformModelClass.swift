

import Foundation
public extension PlatformClient {
    /*
         Model: GeneratePresignedManifestUrl
         Used By: DocumentEngine
     */

    class GeneratePresignedManifestUrl: Codable {
        public var manifestId: String

        public var uid: String

        public enum CodingKeys: String, CodingKey {
            case manifestId = "manifest_id"

            case uid
        }

        public init(manifestId: String, uid: String) {
            self.manifestId = manifestId

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            manifestId = try container.decode(String.self, forKey: .manifestId)

            uid = try container.decode(String.self, forKey: .uid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
