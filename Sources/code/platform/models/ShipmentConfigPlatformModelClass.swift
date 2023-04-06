

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentConfig
         Used By: Order
     */

    class ShipmentConfig: Codable {
        public var identifier: String

        public var source: String

        public var toPincode: String

        public var action: String

        public var locationDetails: LocationDetails?

        public var shipment: [ShipmentDetails]

        public var journey: String

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case identifier

            case source

            case toPincode = "to_pincode"

            case action

            case locationDetails = "location_details"

            case shipment

            case journey

            case paymentMode = "payment_mode"
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails], source: String, toPincode: String) {
            self.identifier = identifier

            self.source = source

            self.toPincode = toPincode

            self.action = action

            self.locationDetails = locationDetails

            self.shipment = shipment

            self.journey = journey

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode(String.self, forKey: .identifier)

            source = try container.decode(String.self, forKey: .source)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            action = try container.decode(String.self, forKey: .action)

            do {
                locationDetails = try container.decode(LocationDetails.self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipment = try container.decode([ShipmentDetails].self, forKey: .shipment)

            journey = try container.decode(String.self, forKey: .journey)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}
