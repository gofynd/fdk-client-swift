

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AssetByShipment
         Used By: Order
     */

    class AssetByShipment: Codable {
        public var presignedUrls: [String: String]?

        public var presignedType: String

        public var success: Bool

        public var shipmentId: String

        public var expiresIn: String

        public enum CodingKeys: String, CodingKey {
            case presignedUrls = "presigned_urls"

            case presignedType = "presigned_type"

            case success

            case shipmentId = "shipment_id"

            case expiresIn = "expires_in"
        }

        public init(expiresIn: String, presignedType: String, presignedUrls: [String: String]? = nil, shipmentId: String, success: Bool) {
            self.presignedUrls = presignedUrls

            self.presignedType = presignedType

            self.success = success

            self.shipmentId = shipmentId

            self.expiresIn = expiresIn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                presignedUrls = try container.decode([String: String].self, forKey: .presignedUrls)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            presignedType = try container.decode(String.self, forKey: .presignedType)

            success = try container.decode(Bool.self, forKey: .success)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            expiresIn = try container.decode(String.self, forKey: .expiresIn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(presignedUrls, forKey: .presignedUrls)

            try? container.encodeIfPresent(presignedType, forKey: .presignedType)

            try? container.encodeIfPresent(success, forKey: .success)

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
        public var presignedUrls: [String: String]?

        public var presignedType: String

        public var success: Bool

        public var shipmentId: String

        public var expiresIn: String

        public enum CodingKeys: String, CodingKey {
            case presignedUrls = "presigned_urls"

            case presignedType = "presigned_type"

            case success

            case shipmentId = "shipment_id"

            case expiresIn = "expires_in"
        }

        public init(expiresIn: String, presignedType: String, presignedUrls: [String: String]? = nil, shipmentId: String, success: Bool) {
            self.presignedUrls = presignedUrls

            self.presignedType = presignedType

            self.success = success

            self.shipmentId = shipmentId

            self.expiresIn = expiresIn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                presignedUrls = try container.decode([String: String].self, forKey: .presignedUrls)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            presignedType = try container.decode(String.self, forKey: .presignedType)

            success = try container.decode(Bool.self, forKey: .success)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            expiresIn = try container.decode(String.self, forKey: .expiresIn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(presignedUrls, forKey: .presignedUrls)

            try? container.encodeIfPresent(presignedType, forKey: .presignedType)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(expiresIn, forKey: .expiresIn)
        }
    }
}
