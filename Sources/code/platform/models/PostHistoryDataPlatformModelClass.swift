

import Foundation
public extension PlatformClient {
    /*
         Model: PostHistoryData
         Used By: Order
     */

    class PostHistoryData: Codable {
        public var message: String

        public var userName: String

        public enum CodingKeys: String, CodingKey {
            case message

            case userName = "user_name"
        }

        public init(message: String, userName: String) {
            self.message = message

            self.userName = userName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            userName = try container.decode(String.self, forKey: .userName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(userName, forKey: .userName)
        }
    }
}
