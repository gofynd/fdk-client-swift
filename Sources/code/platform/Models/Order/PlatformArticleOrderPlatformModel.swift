

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PlatformArticle
         Used By: Order
     */

    class PlatformArticle: Codable {
        public var sellerIdentifier: String?

        public var identifiers: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case identifiers
        }

        public init(identifiers: [String: Any]? = nil, sellerIdentifier: String? = nil) {
            self.sellerIdentifier = sellerIdentifier

            self.identifiers = identifiers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PlatformArticle
         Used By: Order
     */

    class PlatformArticle: Codable {
        public var sellerIdentifier: String?

        public var identifiers: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case identifiers
        }

        public init(identifiers: [String: Any]? = nil, sellerIdentifier: String? = nil) {
            self.sellerIdentifier = sellerIdentifier

            self.identifiers = identifiers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
        }
    }
}
