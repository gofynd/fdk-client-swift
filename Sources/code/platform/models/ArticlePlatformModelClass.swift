

import Foundation
public extension PlatformClient {
    /*
         Model: Article
         Used By: Order
     */

    class Article: Codable {
        public var code: String?

        public var size: String

        public var returnConfig: ReturnConfig?

        public var id: String

        public var dimensions: Dimensions?

        public var sellerIdentifier: String

        public var espModified: [String: Any]?

        public var aSet: [String: Any]?

        public var isSet: Bool?

        public var childDetails: [String: Any]?

        public var weight: Weight?

        public var uid: String

        public var identifiers: Identifier

        public var rawMeta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case code

            case size

            case returnConfig = "return_config"

            case id = "_id"

            case dimensions

            case sellerIdentifier = "seller_identifier"

            case espModified = "esp_modified"

            case aSet = "a_set"

            case isSet = "is_set"

            case childDetails = "child_details"

            case weight

            case uid

            case identifiers

            case rawMeta = "raw_meta"
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, dimensions: Dimensions? = nil, espModified: [String: Any]? = nil, identifiers: Identifier, isSet: Bool? = nil, rawMeta: [String: Any]? = nil, returnConfig: ReturnConfig? = nil, sellerIdentifier: String, size: String, uid: String, weight: Weight? = nil, id: String) {
            self.code = code

            self.size = size

            self.returnConfig = returnConfig

            self.id = id

            self.dimensions = dimensions

            self.sellerIdentifier = sellerIdentifier

            self.espModified = espModified

            self.aSet = aSet

            self.isSet = isSet

            self.childDetails = childDetails

            self.weight = weight

            self.uid = uid

            self.identifiers = identifiers

            self.rawMeta = rawMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                returnConfig = try container.decode(ReturnConfig.self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                dimensions = try container.decode(Dimensions.self, forKey: .dimensions)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                espModified = try container.decode([String: Any].self, forKey: .espModified)

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

            do {
                weight = try container.decode(Weight.self, forKey: .weight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            uid = try container.decode(String.self, forKey: .uid)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            do {
                rawMeta = try container.decode([String: Any].self, forKey: .rawMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(dimensions, forKey: .dimensions)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(childDetails, forKey: .childDetails)

            try? container.encodeIfPresent(weight, forKey: .weight)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(rawMeta, forKey: .rawMeta)
        }
    }
}
