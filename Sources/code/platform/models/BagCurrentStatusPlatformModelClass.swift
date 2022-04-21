

import Foundation
public extension PlatformClient {
    /*
         Model: BagCurrentStatus
         Used By: Order
     */

    class BagCurrentStatus: Codable {
        public var updatedAt: String?

        public var bagStateMapper: BagStateMapper?

        public var status: String?

        public var stateType: String?

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case bagStateMapper = "bag_state_mapper"

            case status

            case stateType = "state_type"
        }

        public init(bagStateMapper: BagStateMapper? = nil, stateType: String? = nil, status: String? = nil, updatedAt: String? = nil) {
            self.updatedAt = updatedAt

            self.bagStateMapper = bagStateMapper

            self.status = status

            self.stateType = stateType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagStateMapper = try container.decode(BagStateMapper.self, forKey: .bagStateMapper)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(bagStateMapper, forKey: .bagStateMapper)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(stateType, forKey: .stateType)
        }
    }
}
