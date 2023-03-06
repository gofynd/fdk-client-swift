

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Document
         Used By: Order
     */

    class Document: Codable {
        public var value: String

        public var dsType: String

        public var legalName: String

        public var verified: Bool

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case value

            case dsType = "ds_type"

            case legalName = "legal_name"

            case verified

            case url
        }

        public init(dsType: String, legalName: String, url: String? = nil, value: String, verified: Bool) {
            self.value = value

            self.dsType = dsType

            self.legalName = legalName

            self.verified = verified

            self.url = url
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode(String.self, forKey: .value)

            dsType = try container.decode(String.self, forKey: .dsType)

            legalName = try container.decode(String.self, forKey: .legalName)

            verified = try container.decode(Bool.self, forKey: .verified)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(dsType, forKey: .dsType)

            try? container.encodeIfPresent(legalName, forKey: .legalName)

            try? container.encodeIfPresent(verified, forKey: .verified)

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
        public var value: String

        public var dsType: String

        public var legalName: String

        public var verified: Bool

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case value

            case dsType = "ds_type"

            case legalName = "legal_name"

            case verified

            case url
        }

        public init(dsType: String, legalName: String, url: String? = nil, value: String, verified: Bool) {
            self.value = value

            self.dsType = dsType

            self.legalName = legalName

            self.verified = verified

            self.url = url
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode(String.self, forKey: .value)

            dsType = try container.decode(String.self, forKey: .dsType)

            legalName = try container.decode(String.self, forKey: .legalName)

            verified = try container.decode(Bool.self, forKey: .verified)

            do {
                url = try container.decode(String.self, forKey: .url)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(dsType, forKey: .dsType)

            try? container.encodeIfPresent(legalName, forKey: .legalName)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }
}
