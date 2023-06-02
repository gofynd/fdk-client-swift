

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ResponseGetAssetShipment
         Used By: Order
     */

    class ResponseGetAssetShipment: Codable {
        public var success: Bool

        public var presignedType: String

        public var result: [AssetByShipment]

        public enum CodingKeys: String, CodingKey {
            case success

            case presignedType = "presigned_type"

            case result
        }

        public init(presignedType: String, result: [AssetByShipment], success: Bool) {
            self.success = success

            self.presignedType = presignedType

            self.result = result
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            presignedType = try container.decode(String.self, forKey: .presignedType)

            result = try container.decode([AssetByShipment].self, forKey: .result)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(presignedType, forKey: .presignedType)

            try? container.encodeIfPresent(result, forKey: .result)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ResponseGetAssetShipment
         Used By: Order
     */

    class ResponseGetAssetShipment: Codable {
        public var success: Bool

        public var presignedType: String

        public var result: [AssetByShipment]

        public enum CodingKeys: String, CodingKey {
            case success

            case presignedType = "presigned_type"

            case result
        }

        public init(presignedType: String, result: [AssetByShipment], success: Bool) {
            self.success = success

            self.presignedType = presignedType

            self.result = result
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            presignedType = try container.decode(String.self, forKey: .presignedType)

            result = try container.decode([AssetByShipment].self, forKey: .result)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(presignedType, forKey: .presignedType)

            try? container.encodeIfPresent(result, forKey: .result)
        }
    }
}
