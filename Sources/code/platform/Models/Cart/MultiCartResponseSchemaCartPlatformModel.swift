

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: MultiCartResponseSchema
         Used By: Cart
     */

    class MultiCartResponseSchema: Codable {
        public var data: [CartListSchema]?

        public var success: Bool?

        public enum CodingKeys: String, CodingKey {
            case data

            case success
        }

        public init(data: [CartListSchema]? = nil, success: Bool? = nil) {
            self.data = data

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([CartListSchema].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}