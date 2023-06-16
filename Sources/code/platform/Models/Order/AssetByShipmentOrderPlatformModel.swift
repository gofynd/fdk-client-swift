

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AssetByShipment
         Used By: Order
     */

    class AssetByShipment: Codable {
        public var expiresIn: String

        public var presignedUrls: [String: String]?

        public var shipmentId: String

        public var presignedType: String

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case expiresIn = "expires_in"

            case presignedUrls = "presigned_urls"

            case shipmentId = "shipment_id"

            case presignedType = "presigned_type"

            case success
        }

        public init(expiresIn: String, presignedType: String, presignedUrls: [String: String]? = nil, shipmentId: String, success: Bool) {
            self.expiresIn = expiresIn

            self.presignedUrls = presignedUrls

            self.shipmentId = shipmentId

            self.presignedType = presignedType

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            expiresIn = try container.decode(String.self, forKey: .expiresIn)

            do {
                presignedUrls = try container.decode([String: String].self, forKey: .presignedUrls)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            presignedType = try container.decode(String.self, forKey: .presignedType)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(expiresIn, forKey: .expiresIn)

            try? container.encodeIfPresent(presignedUrls, forKey: .presignedUrls)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(presignedType, forKey: .presignedType)

            try? container.encodeIfPresent(success, forKey: .success)
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

        public var presignedUrls: [String: String]?

        public var shipmentId: String

        public var presignedType: String

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case expiresIn = "expires_in"

            case presignedUrls = "presigned_urls"

            case shipmentId = "shipment_id"

            case presignedType = "presigned_type"

            case success
        }

        public init(expiresIn: String, presignedType: String, presignedUrls: [String: String]? = nil, shipmentId: String, success: Bool) {
            self.expiresIn = expiresIn

            self.presignedUrls = presignedUrls

            self.shipmentId = shipmentId

            self.presignedType = presignedType

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            expiresIn = try container.decode(String.self, forKey: .expiresIn)

            do {
                presignedUrls = try container.decode([String: String].self, forKey: .presignedUrls)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            presignedType = try container.decode(String.self, forKey: .presignedType)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(expiresIn, forKey: .expiresIn)

            try? container.encodeIfPresent(presignedUrls, forKey: .presignedUrls)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(presignedType, forKey: .presignedType)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
