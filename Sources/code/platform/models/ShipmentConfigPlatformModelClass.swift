

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentConfig
         Used By: Order
     */

    class ShipmentConfig: Codable {
        public var locationDetails: LocationDetails?

        public var paymentMode: String

        public var toPincode: String

        public var source: String

        public var shipment: [ShipmentDetails]

        public var identifier: String

        public var action: String

        public var journey: String

        public enum CodingKeys: String, CodingKey {
            case locationDetails = "location_details"

            case paymentMode = "payment_mode"

            case toPincode = "to_pincode"

            case source

            case shipment

            case identifier

            case action

            case journey
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails], source: String, toPincode: String) {
            self.locationDetails = locationDetails

            self.paymentMode = paymentMode

            self.toPincode = toPincode

            self.source = source

            self.shipment = shipment

            self.identifier = identifier

            self.action = action

            self.journey = journey
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                locationDetails = try container.decode(LocationDetails.self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            source = try container.decode(String.self, forKey: .source)

            shipment = try container.decode([ShipmentDetails].self, forKey: .shipment)

            identifier = try container.decode(String.self, forKey: .identifier)

            action = try container.decode(String.self, forKey: .action)

            journey = try container.decode(String.self, forKey: .journey)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(journey, forKey: .journey)
        }
    }
}
