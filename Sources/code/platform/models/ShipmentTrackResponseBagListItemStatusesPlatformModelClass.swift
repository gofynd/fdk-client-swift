

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentTrackResponseBagListItemStatuses
         Used By: Order
     */

    class ShipmentTrackResponseBagListItemStatuses: Codable {
        public var npsRating: Int?

        public var npsString: String?

        public var progressStatus: [ShipmentTrackResponseBagListItemStatusesProgress]?

        public var flowType: String?

        public var statusProgress: Int?

        public var isNpsDone: Bool?

        public var headerMessage: String?

        public var isDelayed: String?

        public var trackingList: [ShipmentTrackResponseBagListItemStatusesTrack]?

        public enum CodingKeys: String, CodingKey {
            case npsRating = "nps_rating"

            case npsString = "nps_string"

            case progressStatus = "progress_status"

            case flowType = "flow_type"

            case statusProgress = "status_progress"

            case isNpsDone = "is_nps_done"

            case headerMessage = "header_message"

            case isDelayed = "is_delayed"

            case trackingList = "tracking_list"
        }

        public init(flowType: String? = nil, headerMessage: String? = nil, isDelayed: String? = nil, isNpsDone: Bool? = nil, npsRating: Int? = nil, npsString: String? = nil, progressStatus: [ShipmentTrackResponseBagListItemStatusesProgress]? = nil, statusProgress: Int? = nil, trackingList: [ShipmentTrackResponseBagListItemStatusesTrack]? = nil) {
            self.npsRating = npsRating

            self.npsString = npsString

            self.progressStatus = progressStatus

            self.flowType = flowType

            self.statusProgress = statusProgress

            self.isNpsDone = isNpsDone

            self.headerMessage = headerMessage

            self.isDelayed = isDelayed

            self.trackingList = trackingList
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                npsRating = try container.decode(Int.self, forKey: .npsRating)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                npsString = try container.decode(String.self, forKey: .npsString)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                progressStatus = try container.decode([ShipmentTrackResponseBagListItemStatusesProgress].self, forKey: .progressStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                flowType = try container.decode(String.self, forKey: .flowType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                statusProgress = try container.decode(Int.self, forKey: .statusProgress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isNpsDone = try container.decode(Bool.self, forKey: .isNpsDone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                headerMessage = try container.decode(String.self, forKey: .headerMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDelayed = try container.decode(String.self, forKey: .isDelayed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackingList = try container.decode([ShipmentTrackResponseBagListItemStatusesTrack].self, forKey: .trackingList)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(npsRating, forKey: .npsRating)

            try? container.encodeIfPresent(npsString, forKey: .npsString)

            try? container.encodeIfPresent(progressStatus, forKey: .progressStatus)

            try? container.encodeIfPresent(flowType, forKey: .flowType)

            try? container.encodeIfPresent(statusProgress, forKey: .statusProgress)

            try? container.encodeIfPresent(isNpsDone, forKey: .isNpsDone)

            try? container.encodeIfPresent(headerMessage, forKey: .headerMessage)

            try? container.encodeIfPresent(isDelayed, forKey: .isDelayed)

            try? container.encodeIfPresent(trackingList, forKey: .trackingList)
        }
    }
}
