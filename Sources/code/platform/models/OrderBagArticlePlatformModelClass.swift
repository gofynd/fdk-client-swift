

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBagArticle
         Used By: Orders
     */

    class OrderBagArticle: Codable {
        public var uid: String?

        public var returnConfig: [String: Any]?

        public var identifiers: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case uid

            case returnConfig = "return_config"

            case identifiers
        }

        public init(identifiers: [String: Any]? = nil, returnConfig: [String: Any]? = nil, uid: String? = nil) {
            self.uid = uid

            self.returnConfig = returnConfig

            self.identifiers = identifiers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(String.self, forKey: .uid)

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

            do {
                identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
        }
    }
}
