

import Foundation
public extension PlatformClient {
    /*
         Model: Document
         Used By: Order
     */

    class Document: Codable {
        public var dsType: String

        public var url: String?

        public var value: String

        public var legalName: String

        public var verified: Bool

        public enum CodingKeys: String, CodingKey {
            case dsType = "ds_type"

            case url

            case value

            case legalName = "legal_name"

            case verified
        }

        public init(dsType: String, legalName: String, url: String? = nil, value: String, verified: Bool) {
            self.dsType = dsType

            self.url = url

            self.value = value

            self.legalName = legalName

            self.verified = verified
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dsType = try container.decode(String.self, forKey: .dsType)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(String.self, forKey: .value)

            legalName = try container.decode(String.self, forKey: .legalName)

            verified = try container.decode(Bool.self, forKey: .verified)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dsType, forKey: .dsType)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(legalName, forKey: .legalName)

            try? container.encodeIfPresent(verified, forKey: .verified)
        }
    }
}
