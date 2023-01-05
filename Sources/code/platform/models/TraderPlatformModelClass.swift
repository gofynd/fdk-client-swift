

import Foundation
public extension PlatformClient {
    /*
         Model: Trader
         Used By: Catalog
     */

    class Trader: Codable {
        public var name: [String: Any]

        public var address: [String]?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case address

            case type
        }

        public init(address: [String]? = nil, name: [String: Any], type: String? = nil) {
            self.name = name

            self.address = address

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode([String: Any].self, forKey: .name)

            do {
                address = try container.decode([String].self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
