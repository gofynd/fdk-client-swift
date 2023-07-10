

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Click2CallResponse
         Used By: Order
     */

    class Click2CallResponse: Codable {
        public var success: Bool

        public var callId: String

        public enum CodingKeys: String, CodingKey {
            case success

            case callId = "call_id"
        }

        public init(callId: String, success: Bool) {
            self.success = success

            self.callId = callId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            callId = try container.decode(String.self, forKey: .callId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(callId, forKey: .callId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Click2CallResponse
         Used By: Order
     */

    class Click2CallResponse: Codable {
        public var success: Bool

        public var callId: String

        public enum CodingKeys: String, CodingKey {
            case success

            case callId = "call_id"
        }

        public init(callId: String, success: Bool) {
            self.success = success

            self.callId = callId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            callId = try container.decode(String.self, forKey: .callId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(callId, forKey: .callId)
        }
    }
}
