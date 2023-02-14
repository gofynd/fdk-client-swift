

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentConfig
         Used By: Order
     */

    class ShipmentConfig: Codable {
        public var shipment: [ShipmentDetails]

        public var journey: String

        public var action: String

        public var toPincode: String

        public var source: String

        public var identifier: String

        public var paymentMode: String

        public var locationDetails: LocationDetails?

        public enum CodingKeys: String, CodingKey {
            case shipment

            case journey

            case action

            case toPincode = "to_pincode"

            case source

            case identifier

            case paymentMode = "payment_mode"

            case locationDetails = "location_details"
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails], source: String, toPincode: String) {
            self.shipment = shipment

            self.journey = journey

            self.action = action

            self.toPincode = toPincode

            self.source = source

            self.identifier = identifier

            self.paymentMode = paymentMode

            self.locationDetails = locationDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipment = try container.decode([ShipmentDetails].self, forKey: .shipment)

            journey = try container.decode(String.self, forKey: .journey)

            action = try container.decode(String.self, forKey: .action)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            source = try container.decode(String.self, forKey: .source)

            identifier = try container.decode(String.self, forKey: .identifier)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                locationDetails = try container.decode(LocationDetails.self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)
        }
    }
}
