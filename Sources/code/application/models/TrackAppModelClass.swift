

import Foundation
public extension ApplicationClient {
    /*
         Model: Track
         Used By: Order
     */
    class Track: Codable {
        public var updatedTime: String?

        public var reason: String?

        public var awb: String?

        public var updatedAt: String?

        public var status: String?

        public var lastLocationRecievedAt: String?

        public var shipmentType: String?

        public var accountName: String?

        public enum CodingKeys: String, CodingKey {
            case updatedTime = "updated_time"

            case reason

            case awb

            case updatedAt = "updated_at"

            case status

            case lastLocationRecievedAt = "last_location_recieved_at"

            case shipmentType = "shipment_type"

            case accountName = "account_name"
        }

        public init(accountName: String? = nil, awb: String? = nil, lastLocationRecievedAt: String? = nil, reason: String? = nil, shipmentType: String? = nil, status: String? = nil, updatedAt: String? = nil, updatedTime: String? = nil) {
            self.updatedTime = updatedTime

            self.reason = reason

            self.awb = awb

            self.updatedAt = updatedAt

            self.status = status

            self.lastLocationRecievedAt = lastLocationRecievedAt

            self.shipmentType = shipmentType

            self.accountName = accountName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                updatedTime = try container.decode(String.self, forKey: .updatedTime)

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
                awb = try container.decode(String.self, forKey: .awb)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

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
                lastLocationRecievedAt = try container.decode(String.self, forKey: .lastLocationRecievedAt)

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
                accountName = try container.decode(String.self, forKey: .accountName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(updatedTime, forKey: .updatedTime)

            try? container.encodeIfPresent(reason, forKey: .reason)

            try? container.encodeIfPresent(awb, forKey: .awb)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(lastLocationRecievedAt, forKey: .lastLocationRecievedAt)

            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)

            try? container.encodeIfPresent(accountName, forKey: .accountName)
        }
    }
}
