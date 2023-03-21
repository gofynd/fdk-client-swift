

import Foundation

public extension PlatformClient.Order {
    /*
         Model: UploadConsent
         Used By: Order
     */

    class UploadConsent: Codable {
        public var manifestId: String

        public var consentUrl: String

        public enum CodingKeys: String, CodingKey {
            case manifestId = "manifest_id"

            case consentUrl = "consent_url"
        }

        public init(consentUrl: String, manifestId: String) {
            self.manifestId = manifestId

            self.consentUrl = consentUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            manifestId = try container.decode(String.self, forKey: .manifestId)

            consentUrl = try container.decode(String.self, forKey: .consentUrl)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(consentUrl, forKey: .consentUrl)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: UploadConsent
         Used By: Order
     */

    class UploadConsent: Codable {
        public var manifestId: String

        public var consentUrl: String

        public enum CodingKeys: String, CodingKey {
            case manifestId = "manifest_id"

            case consentUrl = "consent_url"
        }

        public init(consentUrl: String, manifestId: String) {
            self.manifestId = manifestId

            self.consentUrl = consentUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            manifestId = try container.decode(String.self, forKey: .manifestId)

            consentUrl = try container.decode(String.self, forKey: .consentUrl)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(manifestId, forKey: .manifestId)

            try? container.encodeIfPresent(consentUrl, forKey: .consentUrl)
        }
    }
}
