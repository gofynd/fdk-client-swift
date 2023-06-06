

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentConfig
         Used By: Order
     */

    class ShipmentConfig: Codable {
        public var identifier: String

        public var toPincode: String

        public var journey: String

        public var paymentMode: String

        public var locationDetails: LocationDetails?

        public var action: String

        public var shipment: [ShipmentDetails1]

        public var source: String

        public enum CodingKeys: String, CodingKey {
            case identifier

            case toPincode = "to_pincode"

            case journey

            case paymentMode = "payment_mode"

            case locationDetails = "location_details"

            case action

            case shipment

            case source
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails1], source: String, toPincode: String) {
            self.identifier = identifier

            self.toPincode = toPincode

            self.journey = journey

            self.paymentMode = paymentMode

            self.locationDetails = locationDetails

            self.action = action

            self.shipment = shipment

            self.source = source
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode(String.self, forKey: .identifier)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            journey = try container.decode(String.self, forKey: .journey)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                locationDetails = try container.decode(LocationDetails.self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            action = try container.decode(String.self, forKey: .action)

            shipment = try container.decode([ShipmentDetails1].self, forKey: .shipment)

            source = try container.decode(String.self, forKey: .source)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(source, forKey: .source)
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

        public var toPincode: String

        public var journey: String

        public var paymentMode: String

        public var locationDetails: LocationDetails?

        public var action: String

        public var shipment: [ShipmentDetails1]

        public var source: String

        public enum CodingKeys: String, CodingKey {
            case identifier

            case toPincode = "to_pincode"

            case journey

            case paymentMode = "payment_mode"

            case locationDetails = "location_details"

            case action

            case shipment

            case source
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails1], source: String, toPincode: String) {
            self.identifier = identifier

            self.toPincode = toPincode

            self.journey = journey

            self.paymentMode = paymentMode

            self.locationDetails = locationDetails

            self.action = action

            self.shipment = shipment

            self.source = source
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode(String.self, forKey: .identifier)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            journey = try container.decode(String.self, forKey: .journey)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                locationDetails = try container.decode(LocationDetails.self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            action = try container.decode(String.self, forKey: .action)

            shipment = try container.decode([ShipmentDetails1].self, forKey: .shipment)

            source = try container.decode(String.self, forKey: .source)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(source, forKey: .source)
        }
    }
}
