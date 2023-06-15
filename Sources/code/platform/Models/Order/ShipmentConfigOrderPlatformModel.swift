

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentConfig
         Used By: Order
     */

    class ShipmentConfig: Codable {
        public var identifier: String

        public var paymentMode: String

        public var journey: String

        public var source: String

        public var shipment: [ShipmentDetails1]

        public var action: String

        public var toPincode: String

        public var locationDetails: LocationDetails?

        public enum CodingKeys: String, CodingKey {
            case identifier

            case paymentMode = "payment_mode"

            case journey

            case source

            case shipment

            case action

            case toPincode = "to_pincode"

            case locationDetails = "location_details"
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails1], source: String, toPincode: String) {
            self.identifier = identifier

            self.paymentMode = paymentMode

            self.journey = journey

            self.source = source

            self.shipment = shipment

            self.action = action

            self.toPincode = toPincode

            self.locationDetails = locationDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode(String.self, forKey: .identifier)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            journey = try container.decode(String.self, forKey: .journey)

            source = try container.decode(String.self, forKey: .source)

            shipment = try container.decode([ShipmentDetails1].self, forKey: .shipment)

            action = try container.decode(String.self, forKey: .action)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            do {
                locationDetails = try container.decode(LocationDetails.self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentConfig
         Used By: Order
     */

    class ShipmentConfig: Codable {
        public var identifier: String

        public var paymentMode: String

        public var journey: String

        public var source: String

        public var shipment: [ShipmentDetails1]

        public var action: String

        public var toPincode: String

        public var locationDetails: LocationDetails?

        public enum CodingKeys: String, CodingKey {
            case identifier

            case paymentMode = "payment_mode"

            case journey

            case source

            case shipment

            case action

            case toPincode = "to_pincode"

            case locationDetails = "location_details"
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails1], source: String, toPincode: String) {
            self.identifier = identifier

            self.paymentMode = paymentMode

            self.journey = journey

            self.source = source

            self.shipment = shipment

            self.action = action

            self.toPincode = toPincode

            self.locationDetails = locationDetails
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode(String.self, forKey: .identifier)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            journey = try container.decode(String.self, forKey: .journey)

            source = try container.decode(String.self, forKey: .source)

            shipment = try container.decode([ShipmentDetails1].self, forKey: .shipment)

            action = try container.decode(String.self, forKey: .action)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            do {
                locationDetails = try container.decode(LocationDetails.self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)
        }
    }
}
