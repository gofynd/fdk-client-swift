

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Document
         Used By: Order
     */

    class Document: Codable {
        public var url: String?

        public var verified: Bool

        public var value: String

        public var dsType: String

        public var legalName: String

        public enum CodingKeys: String, CodingKey {
            case url

            case verified

            case value

            case dsType = "ds_type"

            case legalName = "legal_name"
        }

        public init(dsType: String, legalName: String, url: String? = nil, value: String, verified: Bool) {
            self.url = url

            self.verified = verified

            self.value = value

            self.dsType = dsType

            self.legalName = legalName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            verified = try container.decode(Bool.self, forKey: .verified)

            value = try container.decode(String.self, forKey: .value)

            dsType = try container.decode(String.self, forKey: .dsType)

            legalName = try container.decode(String.self, forKey: .legalName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(dsType, forKey: .dsType)

            try? container.encodeIfPresent(legalName, forKey: .legalName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Document
         Used By: Order
     */

    class Document: Codable {
        public var url: String?

        public var verified: Bool

        public var value: String

        public var dsType: String

        public var legalName: String

        public enum CodingKeys: String, CodingKey {
            case url

            case verified

            case value

            case dsType = "ds_type"

            case legalName = "legal_name"
        }

        public init(dsType: String, legalName: String, url: String? = nil, value: String, verified: Bool) {
            self.url = url

            self.verified = verified

            self.value = value

            self.dsType = dsType

            self.legalName = legalName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            verified = try container.decode(Bool.self, forKey: .verified)

            value = try container.decode(String.self, forKey: .value)

            dsType = try container.decode(String.self, forKey: .dsType)

            legalName = try container.decode(String.self, forKey: .legalName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(dsType, forKey: .dsType)

            try? container.encodeIfPresent(legalName, forKey: .legalName)
        }
    }
}
