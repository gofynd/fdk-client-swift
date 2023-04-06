

import Foundation
public extension PlatformClient {
    /*
         Model: PlatformGetAddressesResponse
         Used By: Cart
     */

    class PlatformGetAddressesResponse: Codable {
        public var address: [PlatformAddress]?

        public enum CodingKeys: String, CodingKey {
            case address
        }

        public init(address: [PlatformAddress]? = nil) {
            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address = try container.decode([PlatformAddress].self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}
