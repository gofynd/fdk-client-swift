

import Foundation
public extension PlatformClient {
    /*
         Model: ExportJobReq
         Used By: Analytics
     */

    class ExportJobReq: Codable {
        public var marketplaceName: String?

        public var startTime: String?

        public var endTime: String?

        public var eventType: String?

        public var traceId: String?

        public enum CodingKeys: String, CodingKey {
            case marketplaceName = "marketplace_name"

            case startTime = "start_time"

            case endTime = "end_time"

            case eventType = "event_type"

            case traceId = "trace_id"
        }

        public init(endTime: String? = nil, eventType: String? = nil, marketplaceName: String? = nil, startTime: String? = nil, traceId: String? = nil) {
            self.marketplaceName = marketplaceName

            self.startTime = startTime

            self.endTime = endTime

            self.eventType = eventType

            self.traceId = traceId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                marketplaceName = try container.decode(String.self, forKey: .marketplaceName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                startTime = try container.decode(String.self, forKey: .startTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                endTime = try container.decode(String.self, forKey: .endTime)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(marketplaceName, forKey: .marketplaceName)

            try? container.encodeIfPresent(startTime, forKey: .startTime)

            try? container.encodeIfPresent(endTime, forKey: .endTime)

            try? container.encodeIfPresent(eventType, forKey: .eventType)

            try? container.encodeIfPresent(traceId, forKey: .traceId)
        }
    }
}
