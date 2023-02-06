

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentConfig
         Used By: OrderManage
     */

    class ShipmentConfig: Codable {
        public var shipment: [ShipmentDetails]

        public var toPincode: String

        public var source: String

        public var locationDetails: LocationDetails?

        public var identifier: String

        public var journey: String

        public var paymentMode: String

        public var action: String

        public enum CodingKeys: String, CodingKey {
            case shipment

            case toPincode = "to_pincode"

            case source

            case locationDetails = "location_details"

            case identifier

            case journey

            case paymentMode = "payment_mode"

            case action
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails], source: String, toPincode: String) {
            self.shipment = shipment

            self.toPincode = toPincode

            self.source = source

            self.locationDetails = locationDetails

            self.identifier = identifier

            self.journey = journey

            self.paymentMode = paymentMode

            self.action = action
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipment = try container.decode([ShipmentDetails].self, forKey: .shipment)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            source = try container.decode(String.self, forKey: .source)

            do {
                locationDetails = try container.decode(LocationDetails.self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode(String.self, forKey: .identifier)

            journey = try container.decode(String.self, forKey: .journey)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            action = try container.decode(String.self, forKey: .action)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }
}
