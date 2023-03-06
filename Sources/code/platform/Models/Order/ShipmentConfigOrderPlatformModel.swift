

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentConfig
         Used By: Order
     */

    class ShipmentConfig: Codable {
        public var action: String

        public var source: String

        public var paymentMode: String

        public var journey: String

        public var shipment: [ShipmentDetails]

        public var toPincode: String

        public var locationDetails: LocationDetails?

        public var identifier: String

        public enum CodingKeys: String, CodingKey {
            case action

            case source

            case paymentMode = "payment_mode"

            case journey

            case shipment

            case toPincode = "to_pincode"

            case locationDetails = "location_details"

            case identifier
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails], source: String, toPincode: String) {
            self.action = action

            self.source = source

            self.paymentMode = paymentMode

            self.journey = journey

            self.shipment = shipment

            self.toPincode = toPincode

            self.locationDetails = locationDetails

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            action = try container.decode(String.self, forKey: .action)

            source = try container.decode(String.self, forKey: .source)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            journey = try container.decode(String.self, forKey: .journey)

            shipment = try container.decode([ShipmentDetails].self, forKey: .shipment)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            do {
                locationDetails = try container.decode(LocationDetails.self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode(String.self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentConfig
         Used By: Order
     */

    class ShipmentConfig: Codable {
        public var action: String

        public var source: String

        public var paymentMode: String

        public var journey: String

        public var shipment: [ShipmentDetails]

        public var toPincode: String

        public var locationDetails: LocationDetails?

        public var identifier: String

        public enum CodingKeys: String, CodingKey {
            case action

            case source

            case paymentMode = "payment_mode"

            case journey

            case shipment

            case toPincode = "to_pincode"

            case locationDetails = "location_details"

            case identifier
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails], source: String, toPincode: String) {
            self.action = action

            self.source = source

            self.paymentMode = paymentMode

            self.journey = journey

            self.shipment = shipment

            self.toPincode = toPincode

            self.locationDetails = locationDetails

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            action = try container.decode(String.self, forKey: .action)

            source = try container.decode(String.self, forKey: .source)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            journey = try container.decode(String.self, forKey: .journey)

            shipment = try container.decode([ShipmentDetails].self, forKey: .shipment)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            do {
                locationDetails = try container.decode(LocationDetails.self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode(String.self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
