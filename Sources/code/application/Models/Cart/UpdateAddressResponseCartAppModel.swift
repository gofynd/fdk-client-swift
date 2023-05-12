

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: UpdateAddressResponse
         Used By: Cart
     */
    class UpdateAddressResponse: Codable {
        public var success: Bool?

        public var id: String?

        public var isUpdated: Bool?

        public var isDefaultAddress: Bool?

        public enum CodingKeys: String, CodingKey {
            case success

            case id

            case isUpdated = "is_updated"

            case isDefaultAddress = "is_default_address"
        }

        public init(id: String? = nil, isDefaultAddress: Bool? = nil, isUpdated: Bool? = nil, success: Bool? = nil) {
            self.success = success

            self.id = id

            self.isUpdated = isUpdated

            self.isDefaultAddress = isDefaultAddress
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
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isUpdated = try container.decode(Bool.self, forKey: .isUpdated)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isUpdated, forKey: .isUpdated)

            try? container.encodeIfPresent(isDefaultAddress, forKey: .isDefaultAddress)
        }
    }
}
