

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBagArticle
         Used By: Orders
     */

    class OrderBagArticle: Codable {
        public var returnConfig: [String: Any]?

        public var identifiers: [String: Any]?

        public var uid: String?

        public enum CodingKeys: String, CodingKey {
            case returnConfig = "return_config"

            case identifiers

            case uid
        }

        public init(identifiers: [String: Any]? = nil, returnConfig: [String: Any]? = nil, uid: String? = nil) {
            self.returnConfig = returnConfig

            self.identifiers = identifiers

            self.uid = uid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                returnConfig = try container.decode([String: Any].self, forKey: .returnConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(uid, forKey: .uid)
        }
    }
}
