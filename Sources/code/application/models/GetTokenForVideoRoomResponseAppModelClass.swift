import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: GetTokenForVideoRoomResponse
         Used By: Lead
     */
    class GetTokenForVideoRoomResponse: Codable {
        public var accessToken: String

        public enum CodingKeys: String, CodingKey {
            case accessToken = "access_token"
        }

        public init(accessToken: String) {
            self.accessToken = accessToken
        }

        public func duplicate() -> GetTokenForVideoRoomResponse {
            let dict = self.dictionary!
            let copy = GetTokenForVideoRoomResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accessToken = try container.decode(String.self, forKey: .accessToken)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(accessToken, forKey: .accessToken)
        }
    }
}
