

import Foundation
public extension PlatformClient {
    /*
         Model: Article
         Used By: Order
     */

    class Article: Codable {
        public var returnConfig: ReturnConfig?

        public var size: String

        public var rawMeta: [String: Any]?

        public var espModified: [String: Any]?

        public var dimensions: Dimensions?

        public var id: String

        public var identifiers: Identifier

        public var sellerIdentifier: String

        public var uid: String

        public var weight: Weight?

        public var childDetails: [String: Any]?

        public var aSet: [String: Any]?

        public var code: String?

        public var isSet: Bool?

        public enum CodingKeys: String, CodingKey {
            case returnConfig = "return_config"

            case size

            case rawMeta = "raw_meta"

            case espModified = "esp_modified"

            case dimensions

            case id = "_id"

            case identifiers

            case sellerIdentifier = "seller_identifier"

            case uid

            case weight

            case childDetails = "child_details"

            case aSet = "a_set"

            case code

            case isSet = "is_set"
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, dimensions: Dimensions? = nil, espModified: [String: Any]? = nil, identifiers: Identifier, isSet: Bool? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.returnConfig = returnConfig

            self.size = size

            self.rawMeta = rawMeta

            self.espModified = espModified

            self.dimensions = dimensions

            self.id = id

            self.identifiers = identifiers

            self.sellerIdentifier = sellerIdentifier

            self.uid = uid

            self.weight = weight

            self.childDetails = childDetails

            self.aSet = aSet

            self.code = code

            self.isSet = isSet
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                espModified = try container.decode([String: Any].self, forKey: .espModified)

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

            id = try container.decode(String.self, forKey: .id)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            uid = try container.decode(String.self, forKey: .uid)

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
                aSet = try container.decode([String: Any].self, forKey: .aSet)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(rawMeta, forKey: .rawMeta)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encode(childDetails, forKey: .childDetails)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(isSet, forKey: .isSet)
        }
    }
}
