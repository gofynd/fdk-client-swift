

import Foundation
public extension PlatformClient {
    /*
         Model: GenerateManifestUrlSuccessResponse
         Used By: DocumentEngine
     */

    class GenerateManifestUrlSuccessResponse: Codable {
        public var url: String

        public var uid: String

        public var manifestId: String

        public var expiresIn: Double

        public var presignedType: String

        public enum CodingKeys: String, CodingKey {
            case url

            case uid

            case manifestId = "manifest_id"

            case expiresIn = "expires_in"

            case presignedType = "presigned_type"
        }

        public init(expiresIn: Double, manifestId: String, presignedType: String, uid: String, url: String) {
            self.url = url

            self.uid = uid

            self.manifestId = manifestId

            self.expiresIn = expiresIn

            self.presignedType = presignedType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            url = try container.decode(String.self, forKey: .url)

            uid = try container.decode(String.self, forKey: .uid)

            manifestId = try container.decode(String.self, forKey: .manifestId)

            expiresIn = try container.decode(Double.self, forKey: .expiresIn)

            presignedType = try container.decode(String.self, forKey: .presignedType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(expiresIn, forKey: .expiresIn)

            try? container.encodeIfPresent(presignedType, forKey: .presignedType)
        }
    }
}
