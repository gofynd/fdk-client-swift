

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Click2CallResponse
         Used By: Order
     */

    class Click2CallResponse: Codable {
        public var callId: String

        public var status: Bool

        public enum CodingKeys: String, CodingKey {
            case callId = "call_id"

            case status
        }

        public init(callId: String, status: Bool) {
            self.callId = callId

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            callId = try container.decode(String.self, forKey: .callId)

            status = try container.decode(Bool.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(callId, forKey: .callId)

            try? container.encodeIfPresent(status, forKey: .status)
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

        public var status: Bool

        public enum CodingKeys: String, CodingKey {
            case callId = "call_id"

            case status
        }

        public init(callId: String, status: Bool) {
            self.callId = callId

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            callId = try container.decode(String.self, forKey: .callId)

            status = try container.decode(Bool.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(callId, forKey: .callId)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
