

import Foundation
public extension PlatformClient {
    /*
         Model: UpdatedResponse
         Used By: Catalog
     */

    class UpdatedResponse: Codable {
        public var message: String?

        public var itemsNotUpdated: [Int]?

        public enum CodingKeys: String, CodingKey {
            case message

            case itemsNotUpdated = "items_not_updated"
        }

        public init(itemsNotUpdated: [Int]? = nil, message: String? = nil) {
            self.message = message

            self.itemsNotUpdated = itemsNotUpdated
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemsNotUpdated = try container.decode([Int].self, forKey: .itemsNotUpdated)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(itemsNotUpdated, forKey: .itemsNotUpdated)
        }
    }
}
