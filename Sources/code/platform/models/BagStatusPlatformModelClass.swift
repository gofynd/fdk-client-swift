

import Foundation
public extension PlatformClient {
    /*
         Model: BagStatus
         Used By: Order
     */

    class BagStatus: Codable {
        public var status: String?

        public var stateType: String?

        public var updatedAt: String?

        public var bagStateMapper: BagStatusBagStateMapper?

        public enum CodingKeys: String, CodingKey {
            case status

            case stateType = "state_type"

            case updatedAt = "updated_at"

            case bagStateMapper = "bag_state_mapper"
        }

        public init(bagStateMapper: BagStatusBagStateMapper? = nil, stateType: String? = nil, status: String? = nil, updatedAt: String? = nil) {
            self.status = status

            self.stateType = stateType

            self.updatedAt = updatedAt

            self.bagStateMapper = bagStateMapper
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stateType = try container.decode(String.self, forKey: .stateType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagStateMapper = try container.decode(BagStatusBagStateMapper.self, forKey: .bagStateMapper)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(stateType, forKey: .stateType)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)
        }
    }
}
