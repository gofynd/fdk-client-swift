

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Article
         Used By: Order
     */

    class Article: Codable {
        public var size: String

        public var espModified: Bool?

        public var returnConfig: ReturnConfig?

        public var isSet: Bool?

        public var uid: String

        public var code: String?

        public var dimensions: Dimensions?

        public var weight: Weight?

        public var currency: [String: Any]?

        public var aSet: [String: Any]?

        public var id: String

        public var childDetails: [String: Any]?

        public var identifiers: [String: Any]

        public var sellerIdentifier: String

        public var rawMeta: String?

        public enum CodingKeys: String, CodingKey {
            case size

            case espModified = "esp_modified"

            case returnConfig = "return_config"

            case isSet = "is_set"

            case uid

            case code

            case dimensions

            case weight

            case currency

            case aSet = "a_set"

            case id = "_id"

            case childDetails = "child_details"

            case identifiers

            case sellerIdentifier = "seller_identifier"

            case rawMeta = "raw_meta"
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, currency: [String: Any]? = nil, dimensions: Dimensions? = nil, espModified: Bool? = nil, identifiers: [String: Any], isSet: Bool? = nil, rawMeta: String? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.size = size

            self.espModified = espModified

            self.returnConfig = returnConfig

            self.isSet = isSet

            self.uid = uid

            self.code = code

            self.dimensions = dimensions

            self.weight = weight

            self.currency = currency

            self.aSet = aSet

            self.id = id

            self.childDetails = childDetails

            self.identifiers = identifiers

            self.sellerIdentifier = sellerIdentifier

            self.rawMeta = rawMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            do {
                weight = try container.decode(Weight.self, forKey: .weight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode([String: Any].self, forKey: .currency)

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

            id = try container.decode(String.self, forKey: .id)

            do {
                childDetails = try container.decode([String: Any].self, forKey: .childDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                rawMeta = try container.decode(String.self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encode(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(currency, forKey: .currency)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(childDetails, forKey: .childDetails)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(rawMeta, forKey: .rawMeta)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Article
         Used By: Order
     */

    class Article: Codable {
        public var size: String

        public var espModified: Bool?

        public var returnConfig: ReturnConfig?

        public var isSet: Bool?

        public var uid: String

        public var code: String?

        public var dimensions: Dimensions?

        public var weight: Weight?

        public var currency: [String: Any]?

        public var aSet: [String: Any]?

        public var id: String

        public var childDetails: [String: Any]?

        public var identifiers: [String: Any]

        public var sellerIdentifier: String

        public var rawMeta: String?

        public enum CodingKeys: String, CodingKey {
            case size

            case espModified = "esp_modified"

            case returnConfig = "return_config"

            case isSet = "is_set"

            case uid

            case code

            case dimensions

            case weight

            case currency

            case aSet = "a_set"

            case id = "_id"

            case childDetails = "child_details"

            case identifiers

            case sellerIdentifier = "seller_identifier"

            case rawMeta = "raw_meta"
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, currency: [String: Any]? = nil, dimensions: Dimensions? = nil, espModified: Bool? = nil, identifiers: [String: Any], isSet: Bool? = nil, rawMeta: String? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.size = size

            self.espModified = espModified

            self.returnConfig = returnConfig

            self.isSet = isSet

            self.uid = uid

            self.code = code

            self.dimensions = dimensions

            self.weight = weight

            self.currency = currency

            self.aSet = aSet

            self.id = id

            self.childDetails = childDetails

            self.identifiers = identifiers

            self.sellerIdentifier = sellerIdentifier

            self.rawMeta = rawMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            do {
                weight = try container.decode(Weight.self, forKey: .weight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode([String: Any].self, forKey: .currency)

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

            id = try container.decode(String.self, forKey: .id)

            do {
                childDetails = try container.decode([String: Any].self, forKey: .childDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                rawMeta = try container.decode(String.self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encode(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(currency, forKey: .currency)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(childDetails, forKey: .childDetails)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(rawMeta, forKey: .rawMeta)
        }
    }
}
