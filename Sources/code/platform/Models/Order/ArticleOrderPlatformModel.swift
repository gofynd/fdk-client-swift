

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Article
         Used By: Order
     */

    class Article: Codable {
        public var sellerIdentifier: String

        public var id: String

        public var currency: [String: Any]?

        public var size: String

        public var espModified: Bool?

        public var returnConfig: ReturnConfig?

        public var code: String?

        public var aSet: [String: Any]?

        public var weight: Weight?

        public var childDetails: [String: Any]?

        public var rawMeta: String?

        public var dimensions: Dimensions?

        public var uid: String

        public var identifiers: [String: Any]

        public var isSet: Bool?

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case id = "_id"

            case currency

            case size

            case espModified = "esp_modified"

            case returnConfig = "return_config"

            case code

            case aSet = "a_set"

            case weight

            case childDetails = "child_details"

            case rawMeta = "raw_meta"

            case dimensions

            case uid

            case identifiers

            case isSet = "is_set"
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, currency: [String: Any]? = nil, dimensions: Dimensions? = nil, espModified: Bool? = nil, identifiers: [String: Any], isSet: Bool? = nil, rawMeta: String? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.sellerIdentifier = sellerIdentifier

            self.id = id

            self.currency = currency

            self.size = size

            self.espModified = espModified

            self.returnConfig = returnConfig

            self.code = code

            self.aSet = aSet

            self.weight = weight

            self.childDetails = childDetails

            self.rawMeta = rawMeta

            self.dimensions = dimensions

            self.uid = uid

            self.identifiers = identifiers

            self.isSet = isSet
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)

            do {
                currency = try container.decode([String: Any].self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                espModified = try container.decode(Bool.self, forKey: .espModified)

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

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aSet = try container.decode([String: Any].self, forKey: .aSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                weight = try container.decode(Weight.self, forKey: .weight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                childDetails = try container.decode([String: Any].self, forKey: .childDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rawMeta = try container.decode(String.self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dimensions = try container.decode(Dimensions.self, forKey: .dimensions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(currency, forKey: .currency)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encode(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(childDetails, forKey: .childDetails)

            try? container.encode(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(isSet, forKey: .isSet)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Article
         Used By: Order
     */

    class Article: Codable {
        public var sellerIdentifier: String

        public var id: String

        public var currency: [String: Any]?

        public var size: String

        public var espModified: Bool?

        public var returnConfig: ReturnConfig?

        public var code: String?

        public var aSet: [String: Any]?

        public var weight: Weight?

        public var childDetails: [String: Any]?

        public var rawMeta: String?

        public var dimensions: Dimensions?

        public var uid: String

        public var identifiers: [String: Any]

        public var isSet: Bool?

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case id = "_id"

            case currency

            case size

            case espModified = "esp_modified"

            case returnConfig = "return_config"

            case code

            case aSet = "a_set"

            case weight

            case childDetails = "child_details"

            case rawMeta = "raw_meta"

            case dimensions

            case uid

            case identifiers

            case isSet = "is_set"
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, currency: [String: Any]? = nil, dimensions: Dimensions? = nil, espModified: Bool? = nil, identifiers: [String: Any], isSet: Bool? = nil, rawMeta: String? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.sellerIdentifier = sellerIdentifier

            self.id = id

            self.currency = currency

            self.size = size

            self.espModified = espModified

            self.returnConfig = returnConfig

            self.code = code

            self.aSet = aSet

            self.weight = weight

            self.childDetails = childDetails

            self.rawMeta = rawMeta

            self.dimensions = dimensions

            self.uid = uid

            self.identifiers = identifiers

            self.isSet = isSet
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)

            do {
                currency = try container.decode([String: Any].self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                espModified = try container.decode(Bool.self, forKey: .espModified)

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

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aSet = try container.decode([String: Any].self, forKey: .aSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                weight = try container.decode(Weight.self, forKey: .weight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                childDetails = try container.decode([String: Any].self, forKey: .childDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rawMeta = try container.decode(String.self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dimensions = try container.decode(Dimensions.self, forKey: .dimensions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(currency, forKey: .currency)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encode(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(childDetails, forKey: .childDetails)

            try? container.encode(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(isSet, forKey: .isSet)
        }
    }
}
