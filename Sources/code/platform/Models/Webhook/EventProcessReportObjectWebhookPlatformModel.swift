

import Foundation

public extension PlatformClient.Webhook {
    /*
         Model: EventProcessReportObject
         Used By: Webhook
     */

    class EventProcessReportObject: Codable {
        public var eventName: String?

        public var responseCode: Int?

        public var responseMessage: String?

        public var data: String?

        public var attempt: Int?

        public var lastAttemptedOn: Int?

        public var status: String?

        public var name: String?

        public var webhookUrl: String?

        public var responseTime: Int?

        public enum CodingKeys: String, CodingKey {
            case eventName = "event_name"

            case responseCode = "response_code"

            case responseMessage = "response_message"

            case data

            case attempt

            case lastAttemptedOn = "last_attempted_on"

            case status

            case name

            case webhookUrl = "webhook_url"

            case responseTime = "response_time"
        }

        public init(attempt: Int? = nil, data: String? = nil, eventName: String? = nil, lastAttemptedOn: Int? = nil, name: String? = nil, responseCode: Int? = nil, responseMessage: String? = nil, responseTime: Int? = nil, status: String? = nil, webhookUrl: String? = nil) {
            self.eventName = eventName

            self.responseCode = responseCode

            self.responseMessage = responseMessage

            self.data = data

            self.attempt = attempt

            self.lastAttemptedOn = lastAttemptedOn

            self.status = status

            self.name = name

            self.webhookUrl = webhookUrl

            self.responseTime = responseTime
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                eventName = try container.decode(String.self, forKey: .eventName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                responseCode = try container.decode(Int.self, forKey: .responseCode)

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
                data = try container.decode(String.self, forKey: .data)

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
                lastAttemptedOn = try container.decode(Int.self, forKey: .lastAttemptedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                webhookUrl = try container.decode(String.self, forKey: .webhookUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                responseTime = try container.decode(Int.self, forKey: .responseTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(eventName, forKey: .eventName)

            try? container.encodeIfPresent(responseCode, forKey: .responseCode)

            try? container.encodeIfPresent(responseMessage, forKey: .responseMessage)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(attempt, forKey: .attempt)

            try? container.encodeIfPresent(lastAttemptedOn, forKey: .lastAttemptedOn)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(webhookUrl, forKey: .webhookUrl)

            try? container.encodeIfPresent(responseTime, forKey: .responseTime)
        }
    }
}
