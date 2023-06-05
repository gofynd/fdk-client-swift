

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AssetByShipment
         Used By: Order
     */

    class AssetByShipment: Codable {
        public var presignedType: String

        public var expiresIn: String

        public var success: Bool

        public var presignedUrls: [String: String]?

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case presignedType = "presigned_type"

            case expiresIn = "expires_in"

            case success

            case presignedUrls = "presigned_urls"

            case shipmentId = "shipment_id"
        }

        public init(expiresIn: String, presignedType: String, presignedUrls: [String: String]? = nil, shipmentId: String, success: Bool) {
            self.presignedType = presignedType

            self.expiresIn = expiresIn

            self.success = success

            self.presignedUrls = presignedUrls

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            presignedType = try container.decode(String.self, forKey: .presignedType)

            expiresIn = try container.decode(String.self, forKey: .expiresIn)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                presignedUrls = try container.decode([String: String].self, forKey: .presignedUrls)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(presignedType, forKey: .presignedType)

            try? container.encodeIfPresent(expiresIn, forKey: .expiresIn)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(presignedUrls, forKey: .presignedUrls)

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
        public var presignedType: String

        public var expiresIn: String

        public var success: Bool

        public var presignedUrls: [String: String]?

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case presignedType = "presigned_type"

            case expiresIn = "expires_in"

            case success

            case presignedUrls = "presigned_urls"

            case shipmentId = "shipment_id"
        }

        public init(expiresIn: String, presignedType: String, presignedUrls: [String: String]? = nil, shipmentId: String, success: Bool) {
            self.presignedType = presignedType

            self.expiresIn = expiresIn

            self.success = success

            self.presignedUrls = presignedUrls

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            presignedType = try container.decode(String.self, forKey: .presignedType)

            expiresIn = try container.decode(String.self, forKey: .expiresIn)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                presignedUrls = try container.decode([String: String].self, forKey: .presignedUrls)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(presignedType, forKey: .presignedType)

            try? container.encodeIfPresent(expiresIn, forKey: .expiresIn)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(presignedUrls, forKey: .presignedUrls)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}