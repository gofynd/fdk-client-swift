

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AssetByShipment
         Used By: Order
     */

    class AssetByShipment: Codable {
        public var expiresIn: String

        public var success: Bool

        public var presignedType: String

        public var shipmentId: String

        public var presignedUrls: [String: String]?

        public enum CodingKeys: String, CodingKey {
            case expiresIn = "expires_in"

            case success

            case presignedType = "presigned_type"

            case shipmentId = "shipment_id"

            case presignedUrls = "presigned_urls"
        }

        public init(expiresIn: String, presignedType: String, presignedUrls: [String: String]? = nil, shipmentId: String, success: Bool) {
            self.expiresIn = expiresIn

            self.success = success

            self.presignedType = presignedType

            self.shipmentId = shipmentId

            self.presignedUrls = presignedUrls
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            expiresIn = try container.decode(String.self, forKey: .expiresIn)

            success = try container.decode(Bool.self, forKey: .success)

            presignedType = try container.decode(String.self, forKey: .presignedType)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                presignedUrls = try container.decode([String: String].self, forKey: .presignedUrls)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(expiresIn, forKey: .expiresIn)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(presignedType, forKey: .presignedType)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(presignedUrls, forKey: .presignedUrls)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AssetByShipment
         Used By: Order
     */

    class AssetByShipment: Codable {
        public var expiresIn: String

        public var success: Bool

        public var presignedType: String

        public var shipmentId: String

        public var presignedUrls: [String: String]?

        public enum CodingKeys: String, CodingKey {
            case expiresIn = "expires_in"

            case success

            case presignedType = "presigned_type"

            case shipmentId = "shipment_id"

            case presignedUrls = "presigned_urls"
        }

        public init(expiresIn: String, presignedType: String, presignedUrls: [String: String]? = nil, shipmentId: String, success: Bool) {
            self.expiresIn = expiresIn

            self.success = success

            self.presignedType = presignedType

            self.shipmentId = shipmentId

            self.presignedUrls = presignedUrls
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            expiresIn = try container.decode(String.self, forKey: .expiresIn)

            success = try container.decode(Bool.self, forKey: .success)

            presignedType = try container.decode(String.self, forKey: .presignedType)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                presignedUrls = try container.decode([String: String].self, forKey: .presignedUrls)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(expiresIn, forKey: .expiresIn)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(presignedType, forKey: .presignedType)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(presignedUrls, forKey: .presignedUrls)
        }
    }
}