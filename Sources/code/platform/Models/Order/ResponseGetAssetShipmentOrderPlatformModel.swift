

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ResponseGetAssetShipment
         Used By: Order
     */

    class ResponseGetAssetShipment: Codable {
        public var presignedType: String

        public var result: [AssetByShipment]

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case presignedType = "presigned_type"

            case result

            case success
        }

        public init(presignedType: String, result: [AssetByShipment], success: Bool) {
            self.presignedType = presignedType

            self.result = result

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            presignedType = try container.decode(String.self, forKey: .presignedType)

            result = try container.decode([AssetByShipment].self, forKey: .result)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(presignedType, forKey: .presignedType)

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ResponseGetAssetShipment
         Used By: Order
     */

    class ResponseGetAssetShipment: Codable {
        public var presignedType: String

        public var result: [AssetByShipment]

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case presignedType = "presigned_type"

            case result

            case success
        }

        public init(presignedType: String, result: [AssetByShipment], success: Bool) {
            self.presignedType = presignedType

            self.result = result

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            presignedType = try container.decode(String.self, forKey: .presignedType)

            result = try container.decode([AssetByShipment].self, forKey: .result)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(presignedType, forKey: .presignedType)

            try? container.encodeIfPresent(result, forKey: .result)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
