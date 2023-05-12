

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Document
         Used By: Order
     */

    class Document: Codable {
        public var verified: Bool

        public var legalName: String

        public var value: String

        public var dsType: String

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case verified

            case legalName = "legal_name"

            case value

            case dsType = "ds_type"

            case url
        }

        public init(dsType: String, legalName: String, url: String? = nil, value: String, verified: Bool) {
            self.verified = verified

            self.legalName = legalName

            self.value = value

            self.dsType = dsType

            self.url = url
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            verified = try container.decode(Bool.self, forKey: .verified)

            legalName = try container.decode(String.self, forKey: .legalName)

            value = try container.decode(String.self, forKey: .value)

            dsType = try container.decode(String.self, forKey: .dsType)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(legalName, forKey: .legalName)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(dsType, forKey: .dsType)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Document
         Used By: Order
     */

    class Document: Codable {
        public var verified: Bool

        public var legalName: String

        public var value: String

        public var dsType: String

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case verified

            case legalName = "legal_name"

            case value

            case dsType = "ds_type"

            case url
        }

        public init(dsType: String, legalName: String, url: String? = nil, value: String, verified: Bool) {
            self.verified = verified

            self.legalName = legalName

            self.value = value

            self.dsType = dsType

            self.url = url
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            verified = try container.decode(Bool.self, forKey: .verified)

            legalName = try container.decode(String.self, forKey: .legalName)

            value = try container.decode(String.self, forKey: .value)

            dsType = try container.decode(String.self, forKey: .dsType)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(legalName, forKey: .legalName)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(dsType, forKey: .dsType)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }
}
