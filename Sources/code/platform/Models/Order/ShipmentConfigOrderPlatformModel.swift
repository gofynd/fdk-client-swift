

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentConfig
         Used By: Order
     */

    class ShipmentConfig: Codable {
        public var locationDetails: LocationDetails?

        public var journey: String

        public var action: String

        public var source: String

        public var identifier: String

        public var toPincode: String

        public var shipment: [ShipmentDetails1]

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case locationDetails = "location_details"

            case journey

            case action

            case source

            case identifier

            case toPincode = "to_pincode"

            case shipment

            case paymentMode = "payment_mode"
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails1], source: String, toPincode: String) {
            self.locationDetails = locationDetails

            self.journey = journey

            self.action = action

            self.source = source

            self.identifier = identifier

            self.toPincode = toPincode

            self.shipment = shipment

            self.paymentMode = paymentMode
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

            action = try container.decode(String.self, forKey: .action)

            source = try container.decode(String.self, forKey: .source)

            identifier = try container.decode(String.self, forKey: .identifier)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            shipment = try container.decode([ShipmentDetails1].self, forKey: .shipment)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentConfig
         Used By: Order
     */

    class ShipmentConfig: Codable {
        public var locationDetails: LocationDetails?

        public var journey: String

        public var action: String

        public var source: String

        public var identifier: String

        public var toPincode: String

        public var shipment: [ShipmentDetails1]

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case locationDetails = "location_details"

            case journey

            case action

            case source

            case identifier

            case toPincode = "to_pincode"

            case shipment

            case paymentMode = "payment_mode"
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails1], source: String, toPincode: String) {
            self.locationDetails = locationDetails

            self.journey = journey

            self.action = action

            self.source = source

            self.identifier = identifier

            self.toPincode = toPincode

            self.shipment = shipment

            self.paymentMode = paymentMode
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

            action = try container.decode(String.self, forKey: .action)

            source = try container.decode(String.self, forKey: .source)

            identifier = try container.decode(String.self, forKey: .identifier)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            shipment = try container.decode([ShipmentDetails1].self, forKey: .shipment)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}
