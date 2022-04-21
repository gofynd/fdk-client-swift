

import Foundation
public extension PlatformClient {
    /*
         Model: MkpLogsResp
         Used By: Analytics
     */

    class MkpLogsResp: Codable {
        public var startTimeIso: String?

        public var endTimeIso: String?

        public var eventType: String?

        public var traceId: String?

        public var count: String?

        public var status: String?

        public enum CodingKeys: String, CodingKey {
            case startTimeIso = "start_time_iso"

            case endTimeIso = "end_time_iso"

            case eventType = "event_type"

            case traceId = "trace_id"

            case count

            case status
        }

        public init(count: String? = nil, endTimeIso: String? = nil, eventType: String? = nil, startTimeIso: String? = nil, status: String? = nil, traceId: String? = nil) {
            self.startTimeIso = startTimeIso

            self.endTimeIso = endTimeIso

            self.eventType = eventType

            self.traceId = traceId

            self.count = count

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                startTimeIso = try container.decode(String.self, forKey: .startTimeIso)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                endTimeIso = try container.decode(String.self, forKey: .endTimeIso)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                eventType = try container.decode(String.self, forKey: .eventType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                count = try container.decode(String.self, forKey: .count)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(startTimeIso, forKey: .startTimeIso)

            try? container.encodeIfPresent(endTimeIso, forKey: .endTimeIso)

            try? container.encodeIfPresent(eventType, forKey: .eventType)

            try? container.encodeIfPresent(traceId, forKey: .traceId)

            try? container.encodeIfPresent(count, forKey: .count)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
