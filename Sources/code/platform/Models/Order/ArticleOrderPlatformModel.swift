

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Article
         Used By: Order
     */

    class Article: Codable {
        public var aSet: [String: Any]?

        public var rawMeta: String?

        public var espModified: Bool?

        public var currency: [String: Any]?

        public var id: String

        public var code: String?

        public var sellerIdentifier: String

        public var identifiers: [String: Any]

        public var uid: String

        public var returnConfig: ReturnConfig?

        public var dimensions: Dimensions?

        public var size: String

        public var weight: Weight?

        public var isSet: Bool?

        public var childDetails: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case aSet = "a_set"

            case rawMeta = "raw_meta"

            case espModified = "esp_modified"

            case currency

            case id = "_id"

            case code

            case sellerIdentifier = "seller_identifier"

            case identifiers

            case uid

            case returnConfig = "return_config"

            case dimensions

            case size

            case weight

            case isSet = "is_set"

            case childDetails = "child_details"
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, currency: [String: Any]? = nil, dimensions: Dimensions? = nil, espModified: Bool? = nil, identifiers: [String: Any], isSet: Bool? = nil, rawMeta: String? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.aSet = aSet

            self.rawMeta = rawMeta

            self.espModified = espModified

            self.currency = currency

            self.id = id

            self.code = code

            self.sellerIdentifier = sellerIdentifier

            self.identifiers = identifiers

            self.uid = uid

            self.returnConfig = returnConfig

            self.dimensions = dimensions

            self.size = size

            self.weight = weight

            self.isSet = isSet

            self.childDetails = childDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aSet = try container.decode([String: Any].self, forKey: .aSet)

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
                espModified = try container.decode(Bool.self, forKey: .espModified)

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

            id = try container.decode(String.self, forKey: .id)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

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

            size = try container.decode(String.self, forKey: .size)

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
                childDetails = try container.decode([String: Any].self, forKey: .childDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encode(rawMeta, forKey: .rawMeta)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encode(currency, forKey: .currency)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(childDetails, forKey: .childDetails)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Article
         Used By: Order
     */

    class Article: Codable {
        public var aSet: [String: Any]?

        public var rawMeta: String?

        public var espModified: Bool?

        public var currency: [String: Any]?

        public var id: String

        public var code: String?

        public var sellerIdentifier: String

        public var identifiers: [String: Any]

        public var uid: String

        public var returnConfig: ReturnConfig?

        public var dimensions: Dimensions?

        public var size: String

        public var weight: Weight?

        public var isSet: Bool?

        public var childDetails: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case aSet = "a_set"

            case rawMeta = "raw_meta"

            case espModified = "esp_modified"

            case currency

            case id = "_id"

            case code

            case sellerIdentifier = "seller_identifier"

            case identifiers

            case uid

            case returnConfig = "return_config"

            case dimensions

            case size

            case weight

            case isSet = "is_set"

            case childDetails = "child_details"
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, currency: [String: Any]? = nil, dimensions: Dimensions? = nil, espModified: Bool? = nil, identifiers: [String: Any], isSet: Bool? = nil, rawMeta: String? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.aSet = aSet

            self.rawMeta = rawMeta

            self.espModified = espModified

            self.currency = currency

            self.id = id

            self.code = code

            self.sellerIdentifier = sellerIdentifier

            self.identifiers = identifiers

            self.uid = uid

            self.returnConfig = returnConfig

            self.dimensions = dimensions

            self.size = size

            self.weight = weight

            self.isSet = isSet

            self.childDetails = childDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aSet = try container.decode([String: Any].self, forKey: .aSet)

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
                espModified = try container.decode(Bool.self, forKey: .espModified)

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

            id = try container.decode(String.self, forKey: .id)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            uid = try container.decode(String.self, forKey: .uid)

            do {
                returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

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

            size = try container.decode(String.self, forKey: .size)

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
                childDetails = try container.decode([String: Any].self, forKey: .childDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encode(rawMeta, forKey: .rawMeta)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encode(currency, forKey: .currency)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encode(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(childDetails, forKey: .childDetails)
        }
    }
}
