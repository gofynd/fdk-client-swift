

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: Document
         Used By: Catalog
     */

    class Document: Codable {
        public var verified: Bool?

        public var value: String

        public var type: String

        public var legalName: String?

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case verified

            case value

            case type

            case legalName = "legal_name"

            case url
        }

        public init(legalName: String? = nil, type: String, url: String? = nil, value: String, verified: Bool? = nil) {
            self.verified = verified

            self.value = value

            self.type = type

            self.legalName = legalName

            self.url = url
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(String.self, forKey: .value)

            type = try container.decode(String.self, forKey: .type)

            do {
                legalName = try container.decode(String.self, forKey: .legalName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(legalName, forKey: .legalName)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: Document
         Used By: Catalog
     */

    class Document: Codable {
        public var verified: Bool?

        public var value: String

        public var type: String

        public var legalName: String?

        public var url: String?

        public enum CodingKeys: String, CodingKey {
            case verified

            case value

            case type

            case legalName = "legal_name"

            case url
        }

        public init(legalName: String? = nil, type: String, url: String? = nil, value: String, verified: Bool? = nil) {
            self.verified = verified

            self.value = value

            self.type = type

            self.legalName = legalName

            self.url = url
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            value = try container.decode(String.self, forKey: .value)

            type = try container.decode(String.self, forKey: .type)

            do {
                legalName = try container.decode(String.self, forKey: .legalName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(legalName, forKey: .legalName)

            try? container.encodeIfPresent(url, forKey: .url)
        }
    }
}
