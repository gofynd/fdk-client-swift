

import Foundation

public extension PlatformClient.Order {
    /*
         Model: UploadConsent
         Used By: Order
     */

    class UploadConsent: Codable {
        public var consentUrl: String

        public var manifestId: String

        public enum CodingKeys: String, CodingKey {
            case consentUrl = "consent_url"

            case manifestId = "manifest_id"
        }

        public init(consentUrl: String, manifestId: String) {
            self.consentUrl = consentUrl

            self.manifestId = manifestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            consentUrl = try container.decode(String.self, forKey: .consentUrl)

            manifestId = try container.decode(String.self, forKey: .manifestId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(consentUrl, forKey: .consentUrl)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: UploadConsent
         Used By: Order
     */

    class UploadConsent: Codable {
        public var consentUrl: String

        public var manifestId: String

        public enum CodingKeys: String, CodingKey {
            case consentUrl = "consent_url"

            case manifestId = "manifest_id"
        }

        public init(consentUrl: String, manifestId: String) {
            self.consentUrl = consentUrl

            self.manifestId = manifestId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            consentUrl = try container.decode(String.self, forKey: .consentUrl)

            manifestId = try container.decode(String.self, forKey: .manifestId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(consentUrl, forKey: .consentUrl)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)
        }
    }
}
