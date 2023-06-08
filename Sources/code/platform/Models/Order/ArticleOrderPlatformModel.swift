

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Article
         Used By: Order
     */

    class Article: Codable {
        public var espModified: Bool?

        public var code: String?

        public var childDetails: [String: Any]?

        public var uid: String

        public var weight: Weight?

        public var isSet: Bool?

        public var returnConfig: ReturnConfig?

        public var id: String

        public var aSet: [String: Any]?

        public var identifiers: [String: Any]

        public var rawMeta: String?

        public var size: String

        public var currency: [String: Any]?

        public var dimensions: Dimensions?

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case espModified = "esp_modified"

            case code

            case childDetails = "child_details"

            case uid

            case weight

            case isSet = "is_set"

            case returnConfig = "return_config"

            case id = "_id"

            case aSet = "a_set"

            case identifiers

            case rawMeta = "raw_meta"

            case size

            case currency

            case dimensions

            case sellerIdentifier = "seller_identifier"
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, currency: [String: Any]? = nil, dimensions: Dimensions? = nil, espModified: Bool? = nil, identifiers: [String: Any], isSet: Bool? = nil, rawMeta: String? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.espModified = espModified

            self.code = code

            self.childDetails = childDetails

            self.uid = uid

            self.weight = weight

            self.isSet = isSet

            self.returnConfig = returnConfig

            self.id = id

            self.aSet = aSet

            self.identifiers = identifiers

            self.rawMeta = rawMeta

            self.size = size

            self.currency = currency

            self.dimensions = dimensions

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                espModified = try container.decode(Bool.self, forKey: .espModified)

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
                childDetails = try container.decode([String: Any].self, forKey: .childDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                weight = try container.decode(Weight.self, forKey: .weight)

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

            do {
                returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                aSet = try container.decode([String: Any].self, forKey: .aSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            do {
                rawMeta = try container.decode(String.self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                currency = try container.decode([String: Any].self, forKey: .currency)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(childDetails, forKey: .childDetails)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(currency, forKey: .currency)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Article
         Used By: Order
     */

    class Article: Codable {
        public var espModified: Bool?

        public var code: String?

        public var childDetails: [String: Any]?

        public var uid: String

        public var weight: Weight?

        public var isSet: Bool?

        public var returnConfig: ReturnConfig?

        public var id: String

        public var aSet: [String: Any]?

        public var identifiers: [String: Any]

        public var rawMeta: String?

        public var size: String

        public var currency: [String: Any]?

        public var dimensions: Dimensions?

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case espModified = "esp_modified"

            case code

            case childDetails = "child_details"

            case uid

            case weight

            case isSet = "is_set"

            case returnConfig = "return_config"

            case id = "_id"

            case aSet = "a_set"

            case identifiers

            case rawMeta = "raw_meta"

            case size

            case currency

            case dimensions

            case sellerIdentifier = "seller_identifier"
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, currency: [String: Any]? = nil, dimensions: Dimensions? = nil, espModified: Bool? = nil, identifiers: [String: Any], isSet: Bool? = nil, rawMeta: String? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.espModified = espModified

            self.code = code

            self.childDetails = childDetails

            self.uid = uid

            self.weight = weight

            self.isSet = isSet

            self.returnConfig = returnConfig

            self.id = id

            self.aSet = aSet

            self.identifiers = identifiers

            self.rawMeta = rawMeta

            self.size = size

            self.currency = currency

            self.dimensions = dimensions

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                espModified = try container.decode(Bool.self, forKey: .espModified)

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
                childDetails = try container.decode([String: Any].self, forKey: .childDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            do {
                weight = try container.decode(Weight.self, forKey: .weight)

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

            do {
                returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                aSet = try container.decode([String: Any].self, forKey: .aSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            do {
                rawMeta = try container.decode(String.self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                currency = try container.decode([String: Any].self, forKey: .currency)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(childDetails, forKey: .childDetails)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(currency, forKey: .currency)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}
