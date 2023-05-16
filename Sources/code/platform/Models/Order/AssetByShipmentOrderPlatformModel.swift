

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AssetByShipment
         Used By: Order
     */

    class AssetByShipment: Codable {
        public var assets: [String: String]?

        public var expiresIn: String

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case assets

            case expiresIn = "expires_in"

            case shipmentId = "shipment_id"
        }

        public init(assets: [String: String]? = nil, expiresIn: String, shipmentId: String) {
            self.assets = assets

            self.expiresIn = expiresIn

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                assets = try container.decode([String: String].self, forKey: .assets)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            expiresIn = try container.decode(String.self, forKey: .expiresIn)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(assets, forKey: .assets)

            try? container.encodeIfPresent(expiresIn, forKey: .expiresIn)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
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

        public var expiresIn: String

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case assets

            case expiresIn = "expires_in"

            case shipmentId = "shipment_id"
        }

        public init(assets: [String: String]? = nil, expiresIn: String, shipmentId: String) {
            self.assets = assets

            self.expiresIn = expiresIn

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                assets = try container.decode([String: String].self, forKey: .assets)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            expiresIn = try container.decode(String.self, forKey: .expiresIn)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(assets, forKey: .assets)

            try? container.encodeIfPresent(expiresIn, forKey: .expiresIn)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
