

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PlatformArticle
         Used By: Order
     */

    class PlatformArticle: Codable {
        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"
        }

        public init(sellerIdentifier: String) {
            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PlatformArticle
         Used By: Order
     */

    class PlatformArticle: Codable {
        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"
        }

        public init(sellerIdentifier: String) {
            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}
