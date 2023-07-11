

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: PostBulkRegionJobResponse
         Used By: Serviceability
     */

    class PostBulkRegionJobResponse: Codable {
        public var message: String

        public var response: Bool

        public var eventEmitted: Bool

        public var batchId: String

        public enum CodingKeys: String, CodingKey {
            case message

            case response

            case eventEmitted = "event_emitted"

            case batchId = "batch_id"
        }

        public init(batchId: String, eventEmitted: Bool, message: String, response: Bool) {
            self.message = message

            self.response = response

            self.eventEmitted = eventEmitted

            self.batchId = batchId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            response = try container.decode(Bool.self, forKey: .response)

            eventEmitted = try container.decode(Bool.self, forKey: .eventEmitted)

            batchId = try container.decode(String.self, forKey: .batchId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(response, forKey: .response)

            try? container.encodeIfPresent(eventEmitted, forKey: .eventEmitted)

            try? container.encodeIfPresent(batchId, forKey: .batchId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: PostBulkRegionJobResponse
         Used By: Serviceability
     */

    class PostBulkRegionJobResponse: Codable {
        public var message: String

        public var response: Bool

        public var eventEmitted: Bool

        public var batchId: String

        public enum CodingKeys: String, CodingKey {
            case message

            case response

            case eventEmitted = "event_emitted"

            case batchId = "batch_id"
        }

        public init(batchId: String, eventEmitted: Bool, message: String, response: Bool) {
            self.message = message

            self.response = response

            self.eventEmitted = eventEmitted

            self.batchId = batchId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode(String.self, forKey: .message)

            response = try container.decode(Bool.self, forKey: .response)

            eventEmitted = try container.decode(Bool.self, forKey: .eventEmitted)

            batchId = try container.decode(String.self, forKey: .batchId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(response, forKey: .response)

            try? container.encodeIfPresent(eventEmitted, forKey: .eventEmitted)

            try? container.encodeIfPresent(batchId, forKey: .batchId)
        }
    }
}
