

import Foundation
public extension PlatformClient {
    /*
         Model: GetPingResponse
         Used By: Order
     */

    class GetPingResponse: Codable {
        public var ping: String

        public enum CodingKeys: String, CodingKey {
            case ping
        }

        public init(ping: String) {
            self.ping = ping
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            ping = try container.decode(String.self, forKey: .ping)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ping, forKey: .ping)
        }
    }
}
