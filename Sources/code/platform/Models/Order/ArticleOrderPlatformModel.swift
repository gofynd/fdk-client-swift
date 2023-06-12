

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Article
         Used By: Order
     */

    class Article: Codable {
        public var code: String?

        public var uid: String

        public var sellerIdentifier: String

        public var currency: [String: Any]?

        public var id: String

        public var isSet: Bool?

        public var rawMeta: String?

        public var espModified: Bool?

        public var aSet: [String: Any]?

        public var size: String

        public var dimensions: Dimensions?

        public var childDetails: [String: Any]?

        public var weight: Weight?

        public var identifiers: [String: Any]

        public var returnConfig: ReturnConfig?

        public enum CodingKeys: String, CodingKey {
            case code

            case uid

            case sellerIdentifier = "seller_identifier"

            case currency

            case id = "_id"

            case isSet = "is_set"

            case rawMeta = "raw_meta"

            case espModified = "esp_modified"

            case aSet = "a_set"

            case size

            case dimensions

            case childDetails = "child_details"

            case weight

            case identifiers

            case returnConfig = "return_config"
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, currency: [String: Any]? = nil, dimensions: Dimensions? = nil, espModified: Bool? = nil, identifiers: [String: Any], isSet: Bool? = nil, rawMeta: String? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.code = code

            self.uid = uid

            self.sellerIdentifier = sellerIdentifier

            self.currency = currency

            self.id = id

            self.isSet = isSet

            self.rawMeta = rawMeta

            self.espModified = espModified

            self.aSet = aSet

            self.size = size

            self.dimensions = dimensions

            self.childDetails = childDetails

            self.weight = weight

            self.identifiers = identifiers

            self.returnConfig = returnConfig
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                currency = try container.decode([String: Any].self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                aSet = try container.decode([String: Any].self, forKey: .aSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                dimensions = try container.decode(Dimensions.self, forKey: .dimensions)

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
                weight = try container.decode(Weight.self, forKey: .weight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            do {
                returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(currency, forKey: .currency)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(rawMeta, forKey: .rawMeta)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encode(childDetails, forKey: .childDetails)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(returnConfig, forKey: .returnConfig)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Article
         Used By: Order
     */

    class Article: Codable {
        public var code: String?

        public var uid: String

        public var sellerIdentifier: String

        public var currency: [String: Any]?

        public var id: String

        public var isSet: Bool?

        public var rawMeta: String?

        public var espModified: Bool?

        public var aSet: [String: Any]?

        public var size: String

        public var dimensions: Dimensions?

        public var childDetails: [String: Any]?

        public var weight: Weight?

        public var identifiers: [String: Any]

        public var returnConfig: ReturnConfig?

        public enum CodingKeys: String, CodingKey {
            case code

            case uid

            case sellerIdentifier = "seller_identifier"

            case currency

            case id = "_id"

            case isSet = "is_set"

            case rawMeta = "raw_meta"

            case espModified = "esp_modified"

            case aSet = "a_set"

            case size

            case dimensions

            case childDetails = "child_details"

            case weight

            case identifiers

            case returnConfig = "return_config"
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, currency: [String: Any]? = nil, dimensions: Dimensions? = nil, espModified: Bool? = nil, identifiers: [String: Any], isSet: Bool? = nil, rawMeta: String? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.code = code

            self.uid = uid

            self.sellerIdentifier = sellerIdentifier

            self.currency = currency

            self.id = id

            self.isSet = isSet

            self.rawMeta = rawMeta

            self.espModified = espModified

            self.aSet = aSet

            self.size = size

            self.dimensions = dimensions

            self.childDetails = childDetails

            self.weight = weight

            self.identifiers = identifiers

            self.returnConfig = returnConfig
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                currency = try container.decode([String: Any].self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                aSet = try container.decode([String: Any].self, forKey: .aSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                dimensions = try container.decode(Dimensions.self, forKey: .dimensions)

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
                weight = try container.decode(Weight.self, forKey: .weight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            do {
                returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(currency, forKey: .currency)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(rawMeta, forKey: .rawMeta)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encode(childDetails, forKey: .childDetails)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(returnConfig, forKey: .returnConfig)
        }
    }
}
