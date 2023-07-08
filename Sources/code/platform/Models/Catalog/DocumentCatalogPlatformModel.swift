

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: Document
         Used By: Catalog
     */

    class Document: Codable {
        public var value: String

        public var url: String?

        public var verified: Bool?

        public var legalName: String?

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case value

            case url

            case verified

            case legalName = "legal_name"

            case type
        }

        public init(legalName: String? = nil, type: String, url: String? = nil, value: String, verified: Bool? = nil) {
            self.value = value

            self.url = url

            self.verified = verified

            self.legalName = legalName

            self.type = type
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

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                legalName = try container.decode(String.self, forKey: .legalName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(legalName, forKey: .legalName)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: Document
         Used By: Catalog
     */

    class Document: Codable {
        public var value: String

        public var url: String?

        public var verified: Bool?

        public var legalName: String?

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case value

            case url

            case verified

            case legalName = "legal_name"

            case type
        }

        public init(legalName: String? = nil, type: String, url: String? = nil, value: String, verified: Bool? = nil) {
            self.value = value

            self.url = url

            self.verified = verified

            self.legalName = legalName

            self.type = type
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

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                legalName = try container.decode(String.self, forKey: .legalName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(url, forKey: .url)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(legalName, forKey: .legalName)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
