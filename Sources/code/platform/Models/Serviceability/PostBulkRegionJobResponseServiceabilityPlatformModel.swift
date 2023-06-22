

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: PostBulkRegionJobResponse
         Used By: Serviceability
     */

    class PostBulkRegionJobResponse: Codable {
        public var batchId: String

        public var eventEmitted: Bool

        public var message: String

        public var response: Bool

        public enum CodingKeys: String, CodingKey {
            case batchId = "batch_id"

            case eventEmitted = "event_emitted"

            case message

            case response
        }

        public init(batchId: String, eventEmitted: Bool, message: String, response: Bool) {
            self.batchId = batchId

            self.eventEmitted = eventEmitted

            self.message = message

            self.response = response
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            batchId = try container.decode(String.self, forKey: .batchId)

            eventEmitted = try container.decode(Bool.self, forKey: .eventEmitted)

            message = try container.decode(String.self, forKey: .message)

            response = try container.decode(Bool.self, forKey: .response)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(eventEmitted, forKey: .eventEmitted)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(response, forKey: .response)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: PostBulkRegionJobResponse
         Used By: Serviceability
     */

    class PostBulkRegionJobResponse: Codable {
        public var batchId: String

        public var eventEmitted: Bool

        public var message: String

        public var response: Bool

        public enum CodingKeys: String, CodingKey {
            case batchId = "batch_id"

            case eventEmitted = "event_emitted"

            case message

            case response
        }

        public init(batchId: String, eventEmitted: Bool, message: String, response: Bool) {
            self.batchId = batchId

            self.eventEmitted = eventEmitted

            self.message = message

            self.response = response
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            batchId = try container.decode(String.self, forKey: .batchId)

            eventEmitted = try container.decode(Bool.self, forKey: .eventEmitted)

            message = try container.decode(String.self, forKey: .message)

            response = try container.decode(Bool.self, forKey: .response)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(eventEmitted, forKey: .eventEmitted)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(response, forKey: .response)
        }
    }
}
