

import Foundation
public extension PlatformClient {
    /*
         Model: OptedStoreIntegration
         Used By: Configuration
     */

    class OptedStoreIntegration: Codable {
        public var otherOpted: Bool?

        public var otherIntegration: IntegrationOptIn?

        public var otherEntity: OtherEntity?

        public enum CodingKeys: String, CodingKey {
            case otherOpted = "other_opted"

            case otherIntegration = "other_integration"

            case otherEntity = "other_entity"
        }

        public init(otherEntity: OtherEntity? = nil, otherIntegration: IntegrationOptIn? = nil, otherOpted: Bool? = nil) {
            self.otherOpted = otherOpted

            self.otherIntegration = otherIntegration

            self.otherEntity = otherEntity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                otherOpted = try container.decode(Bool.self, forKey: .otherOpted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                otherIntegration = try container.decode(IntegrationOptIn.self, forKey: .otherIntegration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                otherEntity = try container.decode(OtherEntity.self, forKey: .otherEntity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(otherOpted, forKey: .otherOpted)

            try? container.encodeIfPresent(otherIntegration, forKey: .otherIntegration)

            try? container.encodeIfPresent(otherEntity, forKey: .otherEntity)
        }
    }
}
