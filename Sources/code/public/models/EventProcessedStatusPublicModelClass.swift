

import Foundation
public extension PublicClient {
    /*
         Model: EventProcessedStatus
         Used By: Webhook
     */

    class EventProcessedStatus: Codable {
        public var id: Int?

        public var subscriberId: String?

        public var attempt: Int?

        public var responseCode: String?

        public var responseMessage: String?

        public var createdOn: String?

        public var processedOn: String?

        public var status: Bool?

        public enum CodingKeys: String, CodingKey {
            case id

            case subscriberId = "subscriber_id"

            case attempt

            case responseCode = "response_code"

            case responseMessage = "response_message"

            case createdOn = "created_on"

            case processedOn = "processed_on"

            case status
        }

        public init(attempt: Int? = nil, createdOn: String? = nil, id: Int? = nil, processedOn: String? = nil, responseCode: String? = nil, responseMessage: String? = nil, status: Bool? = nil, subscriberId: String? = nil) {
            self.id = id

            self.subscriberId = subscriberId

            self.attempt = attempt

            self.responseCode = responseCode

            self.responseMessage = responseMessage

            self.createdOn = createdOn

            self.processedOn = processedOn

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subscriberId = try container.decode(String.self, forKey: .subscriberId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attempt = try container.decode(Int.self, forKey: .attempt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                responseCode = try container.decode(String.self, forKey: .responseCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                responseMessage = try container.decode(String.self, forKey: .responseMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                processedOn = try container.decode(String.self, forKey: .processedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(Bool.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(subscriberId, forKey: .subscriberId)

            try? container.encodeIfPresent(attempt, forKey: .attempt)

            try? container.encodeIfPresent(responseCode, forKey: .responseCode)

            try? container.encodeIfPresent(responseMessage, forKey: .responseMessage)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(processedOn, forKey: .processedOn)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
