

import Foundation
public extension ApplicationClient {
    /*
         Model: DeleteAddressResponse
         Used By: Cart
     */
    class DeleteAddressResponse: Codable {
        public var isDeleted: Bool?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case isDeleted = "is_deleted"

            case id
        }

        public init(id: String? = nil, isDeleted: Bool? = nil) {
            self.isDeleted = isDeleted

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isDeleted = try container.decode(Bool.self, forKey: .isDeleted)

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

            try? container.encodeIfPresent(isDeleted, forKey: .isDeleted)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
