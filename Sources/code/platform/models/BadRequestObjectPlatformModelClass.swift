import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: BadRequestObject
         Used By: Discount
     */

    class BadRequestObject: Codable {
        public var message: String

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: String) {
            self.message = message
        }

        public func duplicate() -> BadRequestObject {
            let dict = self.dictionary!
            let copy = BadRequestObject(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
