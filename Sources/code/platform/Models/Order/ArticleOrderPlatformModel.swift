

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Article
         Used By: Order
     */

    class Article: Codable {
        public var dimensions: Dimensions?

        public var aSet: [String: Any]?

        public var returnConfig: ReturnConfig?

        public var id: String

        public var espModified: [String: Any]?

        public var weight: Weight?

        public var code: String?

        public var isSet: Bool?

        public var childDetails: [String: Any]?

        public var size: String

        public var uid: String

        public var identifiers: Identifier

        public var rawMeta: [String: Any]?

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case dimensions

            case aSet = "a_set"

            case returnConfig = "return_config"

            case id = "_id"

            case espModified = "esp_modified"

            case weight

            case code

            case isSet = "is_set"

            case childDetails = "child_details"

            case size

            case uid

            case identifiers

            case rawMeta = "raw_meta"

            case sellerIdentifier = "seller_identifier"
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, dimensions: Dimensions? = nil, espModified: [String: Any]? = nil, identifiers: Identifier, isSet: Bool? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.dimensions = dimensions

            self.aSet = aSet

            self.returnConfig = returnConfig

            self.id = id

            self.espModified = espModified

            self.weight = weight

            self.code = code

            self.isSet = isSet

            self.childDetails = childDetails

            self.size = size

            self.uid = uid

            self.identifiers = identifiers

            self.rawMeta = rawMeta

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dimensions = try container.decode(Dimensions.self, forKey: .dimensions)

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
                returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                espModified = try container.decode([String: Any].self, forKey: .espModified)

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

            do {
                childDetails = try container.decode([String: Any].self, forKey: .childDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            uid = try container.decode(String.self, forKey: .uid)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encode(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(childDetails, forKey: .childDetails)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(rawMeta, forKey: .rawMeta)

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
        public var dimensions: Dimensions?

        public var aSet: [String: Any]?

        public var returnConfig: ReturnConfig?

        public var id: String

        public var espModified: [String: Any]?

        public var weight: Weight?

        public var code: String?

        public var isSet: Bool?

        public var childDetails: [String: Any]?

        public var size: String

        public var uid: String

        public var identifiers: Identifier

        public var rawMeta: [String: Any]?

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case dimensions

            case aSet = "a_set"

            case returnConfig = "return_config"

            case id = "_id"

            case espModified = "esp_modified"

            case weight

            case code

            case isSet = "is_set"

            case childDetails = "child_details"

            case size

            case uid

            case identifiers

            case rawMeta = "raw_meta"

            case sellerIdentifier = "seller_identifier"
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, dimensions: Dimensions? = nil, espModified: [String: Any]? = nil, identifiers: Identifier, isSet: Bool? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.dimensions = dimensions

            self.aSet = aSet

            self.returnConfig = returnConfig

            self.id = id

            self.espModified = espModified

            self.weight = weight

            self.code = code

            self.isSet = isSet

            self.childDetails = childDetails

            self.size = size

            self.uid = uid

            self.identifiers = identifiers

            self.rawMeta = rawMeta

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dimensions = try container.decode(Dimensions.self, forKey: .dimensions)

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
                returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                espModified = try container.decode([String: Any].self, forKey: .espModified)

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

            do {
                childDetails = try container.decode([String: Any].self, forKey: .childDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            uid = try container.decode(String.self, forKey: .uid)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encode(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(childDetails, forKey: .childDetails)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(rawMeta, forKey: .rawMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}
