

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentConfig
         Used By: Order
     */

    class ShipmentConfig: Codable {
        public var paymentMode: String

        public var journey: String

        public var toPincode: String

        public var source: String

        public var shipment: [ShipmentDetails]

        public var action: String

        public var identifier: String

        public var locationDetails: LocationDetails?

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case journey

            case toPincode = "to_pincode"

            case source

            case shipment

            case action

            case identifier

            case locationDetails = "location_details"
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails], source: String, toPincode: String) {
            self.paymentMode = paymentMode

            self.journey = journey

            self.toPincode = toPincode

            self.source = source

            self.shipment = shipment

            self.action = action

            self.identifier = identifier

            self.locationDetails = locationDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            journey = try container.decode(String.self, forKey: .journey)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            source = try container.decode(String.self, forKey: .source)

            shipment = try container.decode([ShipmentDetails].self, forKey: .shipment)

            action = try container.decode(String.self, forKey: .action)

            identifier = try container.decode(String.self, forKey: .identifier)

            do {
                locationDetails = try container.decode(LocationDetails.self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)
        }
    }
}
