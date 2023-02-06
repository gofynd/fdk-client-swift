

import Foundation
public extension PlatformClient {
    /*
         Model: Document
         Used By: Order
     */

    class Document: Codable {
        public var value: String

        public var url: String?

        public var verified: Bool

        public var legalName: String

        public var dsType: String

        public enum CodingKeys: String, CodingKey {
            case value

            case url

            case verified

            case legalName = "legal_name"

            case dsType = "ds_type"
        }

        public init(dsType: String, legalName: String, url: String? = nil, value: String, verified: Bool) {
            self.value = value

            self.url = url

            self.verified = verified

            self.legalName = legalName

            self.dsType = dsType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode(String.self, forKey: .value)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            verified = try container.decode(Bool.self, forKey: .verified)

            legalName = try container.decode(String.self, forKey: .legalName)

            dsType = try container.decode(String.self, forKey: .dsType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(legalName, forKey: .legalName)

            try? container.encodeIfPresent(dsType, forKey: .dsType)
        }
    }
}
