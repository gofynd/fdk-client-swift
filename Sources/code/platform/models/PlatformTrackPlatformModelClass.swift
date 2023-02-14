

import Foundation
public extension PlatformClient {
    /*
         Model: PlatformTrack
         Used By: Order
     */

    class PlatformTrack: Codable {
        public var updatedAt: String?

        public var accountName: String?

        public var lastLocationRecievedAt: String?

        public var reason: String?

        public var meta: [String: Any]?

        public var status: String?

        public var awb: String?

        public var rawStatus: String?

        public var shipmentType: String?

        public var updatedTime: String?

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case accountName = "account_name"

            case lastLocationRecievedAt = "last_location_recieved_at"

            case reason

            case meta

            case status

            case awb

            case rawStatus = "raw_status"

            case shipmentType = "shipment_type"

            case updatedTime = "updated_time"
        }

        public init(accountName: String? = nil, awb: String? = nil, lastLocationRecievedAt: String? = nil, meta: [String: Any]? = nil, rawStatus: String? = nil, reason: String? = nil, shipmentType: String? = nil, status: String? = nil, updatedAt: String? = nil, updatedTime: String? = nil) {
            self.updatedAt = updatedAt

            self.accountName = accountName

            self.lastLocationRecievedAt = lastLocationRecievedAt

            self.reason = reason

            self.meta = meta

            self.status = status

            self.awb = awb

            self.rawStatus = rawStatus

            self.shipmentType = shipmentType

            self.updatedTime = updatedTime
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                accountName = try container.decode(String.self, forKey: .accountName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastLocationRecievedAt = try container.decode(String.self, forKey: .lastLocationRecievedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reason = try container.decode(String.self, forKey: .reason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                awb = try container.decode(String.self, forKey: .awb)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rawStatus = try container.decode(String.self, forKey: .rawStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentType = try container.decode(String.self, forKey: .shipmentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedTime = try container.decode(String.self, forKey: .updatedTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(accountName, forKey: .accountName)

            try? container.encodeIfPresent(lastLocationRecievedAt, forKey: .lastLocationRecievedAt)

            try? container.encodeIfPresent(reason, forKey: .reason)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(awb, forKey: .awb)

            try? container.encodeIfPresent(rawStatus, forKey: .rawStatus)

            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)

            try? container.encodeIfPresent(updatedTime, forKey: .updatedTime)
        }
    }
}
