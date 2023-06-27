

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: PostBulkRegionJobResponse
         Used By: Serviceability
     */

    class PostBulkRegionJobResponse: Codable {
        public var eventEmitted: Bool

        public var response: Bool

        public var batchId: String

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case eventEmitted = "event_emitted"

            case response

            case batchId = "batch_id"

            case message
        }

        public init(batchId: String, eventEmitted: Bool, message: String, response: Bool) {
            self.eventEmitted = eventEmitted

            self.response = response

            self.batchId = batchId

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            eventEmitted = try container.decode(Bool.self, forKey: .eventEmitted)

            response = try container.decode(Bool.self, forKey: .response)

            batchId = try container.decode(String.self, forKey: .batchId)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(eventEmitted, forKey: .eventEmitted)

            try? container.encodeIfPresent(response, forKey: .response)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

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
        public var eventEmitted: Bool

        public var response: Bool

        public var batchId: String

        public var message: String

        public enum CodingKeys: String, CodingKey {
            case eventEmitted = "event_emitted"

            case response

            case batchId = "batch_id"

            case message
        }

        public init(batchId: String, eventEmitted: Bool, message: String, response: Bool) {
            self.eventEmitted = eventEmitted

            self.response = response

            self.batchId = batchId

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            eventEmitted = try container.decode(Bool.self, forKey: .eventEmitted)

            response = try container.decode(Bool.self, forKey: .response)

            batchId = try container.decode(String.self, forKey: .batchId)

            message = try container.decode(String.self, forKey: .message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(eventEmitted, forKey: .eventEmitted)

            try? container.encodeIfPresent(response, forKey: .response)

            try? container.encodeIfPresent(batchId, forKey: .batchId)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
