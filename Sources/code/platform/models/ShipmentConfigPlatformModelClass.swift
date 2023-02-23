

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentConfig
         Used By: Order
     */

    class ShipmentConfig: Codable {
        public var locationDetails: LocationDetails?

        public var journey: String

        public var identifier: String

        public var source: String

        public var paymentMode: String

        public var action: String

        public var toPincode: String

        public var shipment: [ShipmentDetails]

        public enum CodingKeys: String, CodingKey {
            case locationDetails = "location_details"

            case journey

            case identifier

            case source

            case paymentMode = "payment_mode"

            case action

            case toPincode = "to_pincode"

            case shipment
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails], source: String, toPincode: String) {
            self.locationDetails = locationDetails

            self.journey = journey

            self.identifier = identifier

            self.source = source

            self.paymentMode = paymentMode

            self.action = action

            self.toPincode = toPincode

            self.shipment = shipment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                locationDetails = try container.decode(LocationDetails.self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            journey = try container.decode(String.self, forKey: .journey)

            identifier = try container.decode(String.self, forKey: .identifier)

            source = try container.decode(String.self, forKey: .source)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            action = try container.decode(String.self, forKey: .action)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            shipment = try container.decode([ShipmentDetails].self, forKey: .shipment)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(shipment, forKey: .shipment)
        }
    }
}
