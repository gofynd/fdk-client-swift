

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: SaveAddressResponse
         Used By: Cart
     */

    class SaveAddressResponse: Codable {
        public var success: Bool?

        public var isDefaultAddress: Bool?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case isDefaultAddress = "is_default_address"

            case id
        }

        public init(id: String? = nil, isDefaultAddress: Bool? = nil, success: Bool? = nil) {
            self.success = success

            self.isDefaultAddress = isDefaultAddress

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDefaultAddress = try container.decode(Bool.self, forKey: .isDefaultAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
