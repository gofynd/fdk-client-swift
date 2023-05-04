

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: DeleteCartRequest
         Used By: Cart
     */

    class DeleteCartRequest: Codable {
        public var cartIdList: [String]?

        public enum CodingKeys: String, CodingKey {
            case cartIdList = "cart_id_list"
        }

        public init(cartIdList: [String]? = nil) {
            self.cartIdList = cartIdList
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cartIdList = try container.decode([String].self, forKey: .cartIdList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cartIdList, forKey: .cartIdList)
        }
    }
}
