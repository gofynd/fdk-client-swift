

import Foundation
public extension PlatformClient {
    /*
         Model: Article
         Used By: Order
     */

    class Article: Codable {
        public var isSet: [String: Any]?

        public var size: String

        public var code: String?

        public var returnConfig: [String: Any]?

        public var sellerIdentifier: String

        public var rawMeta: [String: Any]?

        public var espModified: [String: Any]?

        public var childDetails: [String: Any]?

        public var aSet: [String: Any]?

        public var uid: String

        public var identifiers: [String: Any]

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case isSet = "is_set"

            case size

            case code

            case returnConfig = "return_config"

            case sellerIdentifier = "seller_identifier"

            case rawMeta = "raw_meta"

            case espModified = "esp_modified"

            case childDetails = "child_details"

            case aSet = "a_set"

            case uid

            case identifiers

            case id = "_id"
        }

        public init(aSet: [String: Any]? = nil, childDetails: [String: Any]? = nil, code: String? = nil, espModified: [String: Any]? = nil, identifiers: [String: Any], isSet: [String: Any]? = nil, rawMeta: [String: Any]? = nil, returnConfig: [String: Any]? = nil, sellerIdentifier: String, size: String, uid: String, id: String) {
            self.isSet = isSet

            self.size = size

            self.code = code

            self.returnConfig = returnConfig

            self.sellerIdentifier = sellerIdentifier

            self.rawMeta = rawMeta

            self.espModified = espModified

            self.childDetails = childDetails

            self.aSet = aSet

            self.uid = uid

            self.identifiers = identifiers

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isSet = try container.decode([String: Any].self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                returnConfig = try container.decode([String: Any].self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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

            uid = try container.decode(String.self, forKey: .uid)

            identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(code, forKey: .code)

            try? container.encode(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(rawMeta, forKey: .rawMeta)

            try? container.encode(espModified, forKey: .espModified)

            try? container.encode(childDetails, forKey: .childDetails)

            try? container.encode(aSet, forKey: .aSet)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
