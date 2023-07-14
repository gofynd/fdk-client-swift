

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentConfig
         Used By: Order
     */

    class ShipmentConfig: Codable {
        public var journey: String

        public var paymentMode: String

        public var locationDetails: LocationDetails?

        public var action: String

        public var toPincode: String

        public var identifier: String

        public var source: String

        public var shipment: [ShipmentDetails1]

        public enum CodingKeys: String, CodingKey {
            case journey

            case paymentMode = "payment_mode"

            case locationDetails = "location_details"

            case action

            case toPincode = "to_pincode"

            case identifier

            case source

            case shipment
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails1], source: String, toPincode: String) {
            self.journey = journey

            self.paymentMode = paymentMode

            self.locationDetails = locationDetails

            self.action = action

            self.toPincode = toPincode

            self.identifier = identifier

            self.source = source

            self.shipment = shipment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            journey = try container.decode(String.self, forKey: .journey)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                locationDetails = try container.decode(LocationDetails.self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            action = try container.decode(String.self, forKey: .action)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            identifier = try container.decode(String.self, forKey: .identifier)

            source = try container.decode(String.self, forKey: .source)

            shipment = try container.decode([ShipmentDetails1].self, forKey: .shipment)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(shipment, forKey: .shipment)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentConfig
         Used By: Order
     */

    class ShipmentConfig: Codable {
        public var journey: String

        public var paymentMode: String

        public var locationDetails: LocationDetails?

        public var action: String

        public var toPincode: String

        public var identifier: String

        public var source: String

        public var shipment: [ShipmentDetails1]

        public enum CodingKeys: String, CodingKey {
            case journey

            case paymentMode = "payment_mode"

            case locationDetails = "location_details"

            case action

            case toPincode = "to_pincode"

            case identifier

            case source

            case shipment
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails1], source: String, toPincode: String) {
            self.journey = journey

            self.paymentMode = paymentMode

            self.locationDetails = locationDetails

            self.action = action

            self.toPincode = toPincode

            self.identifier = identifier

            self.source = source

            self.shipment = shipment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            journey = try container.decode(String.self, forKey: .journey)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                locationDetails = try container.decode(LocationDetails.self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            action = try container.decode(String.self, forKey: .action)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            identifier = try container.decode(String.self, forKey: .identifier)

            source = try container.decode(String.self, forKey: .source)

            shipment = try container.decode([ShipmentDetails1].self, forKey: .shipment)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(shipment, forKey: .shipment)
        }
    }
}
