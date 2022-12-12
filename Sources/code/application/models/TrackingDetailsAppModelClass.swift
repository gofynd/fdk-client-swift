

import Foundation
public extension ApplicationClient {
    /*
         Model: TrackingDetails
         Used By: Order
     */
    class TrackingDetails: Codable {
        public var time: String?

        public var isPassed: Bool?

        public var status: String?

        public var isCurrent: Bool?

        public var trackingDetails: [NestedTrackingDetails]?

        public enum CodingKeys: String, CodingKey {
            case time

            case isPassed = "is_passed"

            case status

            case isCurrent = "is_current"

            case trackingDetails = "tracking_details"
        }

        public init(isCurrent: Bool? = nil, isPassed: Bool? = nil, status: String? = nil, time: String? = nil, trackingDetails: [NestedTrackingDetails]? = nil) {
            self.time = time

            self.isPassed = isPassed

            self.status = status

            self.isCurrent = isCurrent

            self.trackingDetails = trackingDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                time = try container.decode(String.self, forKey: .time)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isPassed = try container.decode(Bool.self, forKey: .isPassed)

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
                isCurrent = try container.decode(Bool.self, forKey: .isCurrent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackingDetails = try container.decode([NestedTrackingDetails].self, forKey: .trackingDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(time, forKey: .time)

            try? container.encodeIfPresent(isPassed, forKey: .isPassed)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(isCurrent, forKey: .isCurrent)

            try? container.encodeIfPresent(trackingDetails, forKey: .trackingDetails)
        }
    }
}
