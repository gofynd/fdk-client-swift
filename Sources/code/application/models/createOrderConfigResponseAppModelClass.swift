

import Foundation
public extension ApplicationClient {
    /*
         Model: createOrderConfigResponse
         Used By: Order
     */
    class createOrderConfigResponse: Codable {
        public var isUpserted: Bool?

        public var acknowledged: Bool?

        public var isInserted: Bool?

        public enum CodingKeys: String, CodingKey {
            case isUpserted = "is_upserted"

            case acknowledged

            case isInserted = "is_inserted"
        }

        public init(acknowledged: Bool? = nil, isInserted: Bool? = nil, isUpserted: Bool? = nil) {
            self.isUpserted = isUpserted

            self.acknowledged = acknowledged

            self.isInserted = isInserted
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isUpserted = try container.decode(Bool.self, forKey: .isUpserted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                acknowledged = try container.decode(Bool.self, forKey: .acknowledged)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isInserted = try container.decode(Bool.self, forKey: .isInserted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isUpserted, forKey: .isUpserted)

            try? container.encodeIfPresent(acknowledged, forKey: .acknowledged)

            try? container.encodeIfPresent(isInserted, forKey: .isInserted)
        }
    }
}
