

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Article
         Used By: Order
     */

    class Article: Codable {
        public var currency: [String: Any]?

        public var aSet: [String: Any]?

        public var uid: String

        public var dimensions: Dimensions?

        public var espModified: Bool?

        public var rawMeta: String?

        public var identifiers: [String: Any]

        public var size: String

        public var code: String?

        public var isSet: Bool?

        public var sellerIdentifier: String

        public var returnConfig: ReturnConfig?

        public var id: String

        public var weight: Weight?

        public var childDetails: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case currency

            case aSet = "a_set"

            case uid

            case dimensions

            case espModified = "esp_modified"

            case rawMeta = "raw_meta"

            case identifiers

            case size

            case code

            case isSet = "is_set"

            case sellerIdentifier = "seller_identifier"

            case returnConfig = "return_config"

            case id = "_id"

            case weight

            case childDetails = "child_details"
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, currency: [String: Any]? = nil, dimensions: Dimensions? = nil, espModified: Bool? = nil, identifiers: [String: Any], isSet: Bool? = nil, rawMeta: String? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.currency = currency

            self.aSet = aSet

            self.uid = uid

            self.dimensions = dimensions

            self.espModified = espModified

            self.rawMeta = rawMeta

            self.identifiers = identifiers

            self.size = size

            self.code = code

            self.isSet = isSet

            self.sellerIdentifier = sellerIdentifier

            self.returnConfig = returnConfig

            self.id = id

            self.weight = weight

            self.childDetails = childDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            uid = try container.decode(String.self, forKey: .uid)

            do {
                dimensions = try container.decode(Dimensions.self, forKey: .dimensions)

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
                rawMeta = try container.decode(String.self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            size = try container.decode(String.self, forKey: .size)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(currency, forKey: .currency)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encode(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(weight, forKey: .weight)

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
        public var currency: [String: Any]?

        public var aSet: [String: Any]?

        public var uid: String

        public var dimensions: Dimensions?

        public var espModified: Bool?

        public var rawMeta: String?

        public var identifiers: [String: Any]

        public var size: String

        public var code: String?

        public var isSet: Bool?

        public var sellerIdentifier: String

        public var returnConfig: ReturnConfig?

        public var id: String

        public var weight: Weight?

        public var childDetails: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case currency

            case aSet = "a_set"

            case uid

            case dimensions

            case espModified = "esp_modified"

            case rawMeta = "raw_meta"

            case identifiers

            case size

            case code

            case isSet = "is_set"

            case sellerIdentifier = "seller_identifier"

            case returnConfig = "return_config"

            case id = "_id"

            case weight

            case childDetails = "child_details"
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, currency: [String: Any]? = nil, dimensions: Dimensions? = nil, espModified: Bool? = nil, identifiers: [String: Any], isSet: Bool? = nil, rawMeta: String? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.currency = currency

            self.aSet = aSet

            self.uid = uid

            self.dimensions = dimensions

            self.espModified = espModified

            self.rawMeta = rawMeta

            self.identifiers = identifiers

            self.size = size

            self.code = code

            self.isSet = isSet

            self.sellerIdentifier = sellerIdentifier

            self.returnConfig = returnConfig

            self.id = id

            self.weight = weight

            self.childDetails = childDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            uid = try container.decode(String.self, forKey: .uid)

            do {
                dimensions = try container.decode(Dimensions.self, forKey: .dimensions)

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
                rawMeta = try container.decode(String.self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            size = try container.decode(String.self, forKey: .size)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(currency, forKey: .currency)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encode(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(childDetails, forKey: .childDetails)
        }
    }
}
