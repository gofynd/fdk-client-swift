

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AssetByShipment
         Used By: Order
     */

    class AssetByShipment: Codable {
        public var assets: [String: String]?

        public var shipmentId: String

        public var expiresIn: String

        public enum CodingKeys: String, CodingKey {
            case assets

            case shipmentId = "shipment_id"

            case expiresIn = "expires_in"
        }

        public init(assets: [String: String]? = nil, expiresIn: String, shipmentId: String) {
            self.assets = assets

            self.shipmentId = shipmentId

            self.expiresIn = expiresIn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                assets = try container.decode([String: String].self, forKey: .assets)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            expiresIn = try container.decode(String.self, forKey: .expiresIn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(assets, forKey: .assets)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(expiresIn, forKey: .expiresIn)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AssetByShipment
         Used By: Order
     */

    class AssetByShipment: Codable {
        public var assets: [String: String]?

        public var shipmentId: String

        public var expiresIn: String

        public enum CodingKeys: String, CodingKey {
            case assets

            case shipmentId = "shipment_id"

            case expiresIn = "expires_in"
        }

        public init(assets: [String: String]? = nil, expiresIn: String, shipmentId: String) {
            self.assets = assets

            self.shipmentId = shipmentId

            self.expiresIn = expiresIn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                assets = try container.decode([String: String].self, forKey: .assets)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            expiresIn = try container.decode(String.self, forKey: .expiresIn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(assets, forKey: .assets)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(expiresIn, forKey: .expiresIn)
        }
    }
}
