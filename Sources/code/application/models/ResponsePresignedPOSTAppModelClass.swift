

import Foundation
public extension ApplicationClient {
    /*
         Model: ResponsePresignedPOST
         Used By: Order
     */
    class ResponsePresignedPOST: Codable {
        public var success: Bool

        public var method: String

        public var event: String

        public var payload: [[String: Any]]

        public enum CodingKeys: String, CodingKey {
            case success

            case method

            case event

            case payload
        }

        public init(event: String, method: String, payload: [[String: Any]], success: Bool) {
            self.success = success

            self.method = method

            self.event = event

            self.payload = payload
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            method = try container.decode(String.self, forKey: .method)

            event = try container.decode(String.self, forKey: .event)

            payload = try container.decode([[String: Any]].self, forKey: .payload)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(event, forKey: .event)

            try? container.encodeIfPresent(payload, forKey: .payload)
        }
    }
}
