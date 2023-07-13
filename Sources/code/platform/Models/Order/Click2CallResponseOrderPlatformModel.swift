

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Click2CallResponse
         Used By: Order
     */

    class Click2CallResponse: Codable {
        public var callId: String

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case callId = "call_id"

            case success
        }

        public init(callId: String, success: Bool) {
            self.callId = callId

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            callId = try container.decode(String.self, forKey: .callId)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(callId, forKey: .callId)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Click2CallResponse
         Used By: Order
     */

    class Click2CallResponse: Codable {
        public var callId: String

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case callId = "call_id"

            case success
        }

        public init(callId: String, success: Bool) {
            self.callId = callId

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            callId = try container.decode(String.self, forKey: .callId)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(callId, forKey: .callId)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
