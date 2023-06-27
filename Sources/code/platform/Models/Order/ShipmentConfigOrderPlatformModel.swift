

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentConfig
         Used By: Order
     */

    class ShipmentConfig: Codable {
        public var identifier: String

        public var shipment: [ShipmentDetails1]

        public var paymentMode: String

        public var journey: String

        public var toPincode: String

        public var locationDetails: LocationDetails?

        public var action: String

        public var source: String

        public enum CodingKeys: String, CodingKey {
            case identifier

            case shipment

            case paymentMode = "payment_mode"

            case journey

            case toPincode = "to_pincode"

            case locationDetails = "location_details"

            case action

            case source
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails1], source: String, toPincode: String) {
            self.identifier = identifier

            self.shipment = shipment

            self.paymentMode = paymentMode

            self.journey = journey

            self.toPincode = toPincode

            self.locationDetails = locationDetails

            self.action = action

            self.source = source
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode(String.self, forKey: .identifier)

            shipment = try container.decode([ShipmentDetails1].self, forKey: .shipment)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            journey = try container.decode(String.self, forKey: .journey)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            do {
                locationDetails = try container.decode(LocationDetails.self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            action = try container.decode(String.self, forKey: .action)

            source = try container.decode(String.self, forKey: .source)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(action, forKey: .action)

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

        public var shipment: [ShipmentDetails1]

        public var paymentMode: String

        public var journey: String

        public var toPincode: String

        public var locationDetails: LocationDetails?

        public var action: String

        public var source: String

        public enum CodingKeys: String, CodingKey {
            case identifier

            case shipment

            case paymentMode = "payment_mode"

            case journey

            case toPincode = "to_pincode"

            case locationDetails = "location_details"

            case action

            case source
        }

        public init(action: String, identifier: String, journey: String, locationDetails: LocationDetails? = nil, paymentMode: String, shipment: [ShipmentDetails1], source: String, toPincode: String) {
            self.identifier = identifier

            self.shipment = shipment

            self.paymentMode = paymentMode

            self.journey = journey

            self.toPincode = toPincode

            self.locationDetails = locationDetails

            self.action = action

            self.source = source
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode(String.self, forKey: .identifier)

            shipment = try container.decode([ShipmentDetails1].self, forKey: .shipment)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            journey = try container.decode(String.self, forKey: .journey)

            toPincode = try container.decode(String.self, forKey: .toPincode)

            do {
                locationDetails = try container.decode(LocationDetails.self, forKey: .locationDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            action = try container.decode(String.self, forKey: .action)

            source = try container.decode(String.self, forKey: .source)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(shipment, forKey: .shipment)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(journey, forKey: .journey)

            try? container.encodeIfPresent(toPincode, forKey: .toPincode)

            try? container.encodeIfPresent(locationDetails, forKey: .locationDetails)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(source, forKey: .source)
        }
    }
}
