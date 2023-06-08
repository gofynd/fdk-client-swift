

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentConfig
         Used By: Order
     */

    class ShipmentConfig: Codable {
        public var source: String

        public var identifier: String

        public var paymentMode: String

        public var shipment: [ShipmentDetails]

        public var journey: String

        public var toPincode: String

        public var locationDetails: LocationDetails?

        public var action: String

        public enum CodingKeys: String, CodingKey {
            case source

            case identifier

            case paymentMode = "payment_mode"

            case shipment

            case journey

            case toPincode = "to_pincode"

            case locationDetails = "location_details"

            case action
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails], source: String, toPincode: String) {
            self.source = source

            self.identifier = identifier

            self.paymentMode = paymentMode

            self.shipment = shipment

            self.journey = journey

            self.toPincode = toPincode

            self.locationDetails = locationDetails

            self.action = action
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            source = try container.decode(String.self, forKey: .source)

            identifier = try container.decode(String.self, forKey: .identifier)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            shipment = try container.decode([ShipmentDetails].self, forKey: .shipment)

            journey = try container.decode(String.self, forKey: .journey)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            do {
                locationDetails = try container.decode(LocationDetails.self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            action = try container.decode(String.self, forKey: .action)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentConfig
         Used By: Order
     */

    class ShipmentConfig: Codable {
        public var source: String

        public var identifier: String

        public var paymentMode: String

        public var shipment: [ShipmentDetails]

        public var journey: String

        public var toPincode: String

        public var locationDetails: LocationDetails?

        public var action: String

        public enum CodingKeys: String, CodingKey {
            case source

            case identifier

            case paymentMode = "payment_mode"

            case shipment

            case journey

            case toPincode = "to_pincode"

            case locationDetails = "location_details"

            case action
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails], source: String, toPincode: String) {
            self.source = source

            self.identifier = identifier

            self.paymentMode = paymentMode

            self.shipment = shipment

            self.journey = journey

            self.toPincode = toPincode

            self.locationDetails = locationDetails

            self.action = action
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            source = try container.decode(String.self, forKey: .source)

            identifier = try container.decode(String.self, forKey: .identifier)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            shipment = try container.decode([ShipmentDetails].self, forKey: .shipment)

            journey = try container.decode(String.self, forKey: .journey)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            do {
                locationDetails = try container.decode(LocationDetails.self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            action = try container.decode(String.self, forKey: .action)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }
}
