

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: PostBulkRegionJobResponse
         Used By: Serviceability
     */

    class PostBulkRegionJobResponse: Codable {
        public var eventEmitted: Bool

        public var response: Bool

        public var message: String

        public var batchId: String

        public enum CodingKeys: String, CodingKey {
            case eventEmitted = "event_emitted"

            case response

            case message

            case batchId = "batch_id"
        }

        public init(batchId: String, eventEmitted: Bool, message: String, response: Bool) {
            self.eventEmitted = eventEmitted

            self.response = response

            self.message = message

            self.batchId = batchId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            eventEmitted = try container.decode(Bool.self, forKey: .eventEmitted)

            response = try container.decode(Bool.self, forKey: .response)

            message = try container.decode(String.self, forKey: .message)

            batchId = try container.decode(String.self, forKey: .batchId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(eventEmitted, forKey: .eventEmitted)

            try? container.encodeIfPresent(response, forKey: .response)

            try? container.encodeIfPresent(message, forKey: .message)

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
        public var eventEmitted: Bool

        public var response: Bool

        public var message: String

        public var batchId: String

        public enum CodingKeys: String, CodingKey {
            case eventEmitted = "event_emitted"

            case response

            case message

            case batchId = "batch_id"
        }

        public init(batchId: String, eventEmitted: Bool, message: String, response: Bool) {
            self.eventEmitted = eventEmitted

            self.response = response

            self.message = message

            self.batchId = batchId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            eventEmitted = try container.decode(Bool.self, forKey: .eventEmitted)

            response = try container.decode(Bool.self, forKey: .response)

            message = try container.decode(String.self, forKey: .message)

            batchId = try container.decode(String.self, forKey: .batchId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(eventEmitted, forKey: .eventEmitted)

            try? container.encodeIfPresent(response, forKey: .response)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(batchId, forKey: .batchId)
        }
    }
}
