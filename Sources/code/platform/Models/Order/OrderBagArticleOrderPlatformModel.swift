

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderBagArticle
         Used By: Order
     */

    class OrderBagArticle: Codable {
        public var size: String?

        public var uid: String?

        public var identifiers: [String: Any]?

        public var returnConfig: ReturnConfig?

        public enum CodingKeys: String, CodingKey {
            case size

            case uid

            case identifiers

            case returnConfig = "return_config"
        }

        public init(identifiers: [String: Any]? = nil, returnConfig: ReturnConfig? = nil, size: String? = nil, uid: String? = nil) {
            self.size = size

            self.uid = uid

            self.identifiers = identifiers

            self.returnConfig = returnConfig
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

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

            do {
                returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderBagArticle
         Used By: Order
     */

    class OrderBagArticle: Codable {
        public var size: String?

        public var uid: String?

        public var identifiers: [String: Any]?

        public var returnConfig: ReturnConfig?

        public enum CodingKeys: String, CodingKey {
            case size

            case uid

            case identifiers

            case returnConfig = "return_config"
        }

        public init(identifiers: [String: Any]? = nil, returnConfig: ReturnConfig? = nil, size: String? = nil, uid: String? = nil) {
            self.size = size

            self.uid = uid

            self.identifiers = identifiers

            self.returnConfig = returnConfig
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

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

            do {
                returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
        }
    }
}
