

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: PostBulkRegionJobResponse
         Used By: Serviceability
     */

    class PostBulkRegionJobResponse: Codable {
        public var batchId: String

        public var eventEmitted: Bool

        public var response: Bool

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case batchId = "batch_id"

            case eventEmitted = "event_emitted"

            case response

            case message
        }

        public init(batchId: String, eventEmitted: Bool, message: String, response: Bool) {
            self.batchId = batchId

            self.eventEmitted = eventEmitted

            self.response = response

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            batchId = try container.decode(String.self, forKey: .batchId)

            eventEmitted = try container.decode(Bool.self, forKey: .eventEmitted)

            response = try container.decode(Bool.self, forKey: .response)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(eventEmitted, forKey: .eventEmitted)

            try? container.encodeIfPresent(response, forKey: .response)

            try? container.encodeIfPresent(message, forKey: .message)
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

        public var response: Bool

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case batchId = "batch_id"

            case eventEmitted = "event_emitted"

            case response

            case message
        }

        public init(batchId: String, eventEmitted: Bool, message: String, response: Bool) {
            self.batchId = batchId

            self.eventEmitted = eventEmitted

            self.response = response

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            batchId = try container.decode(String.self, forKey: .batchId)

            eventEmitted = try container.decode(Bool.self, forKey: .eventEmitted)

            response = try container.decode(Bool.self, forKey: .response)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(eventEmitted, forKey: .eventEmitted)

            try? container.encodeIfPresent(response, forKey: .response)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
