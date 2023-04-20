

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: EntityReasonData1
         Used By: Order
     */
    class EntityReasonData1: Codable {
        public var reasonText: String?

        public var reasonId: Int?

        public enum CodingKeys: String, CodingKey {
            case reasonText = "reason_text"

            case reasonId = "reason_id"
        }

        public init(reasonId: Int? = nil, reasonText: String? = nil) {
            self.reasonText = reasonText

            self.reasonId = reasonId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reasonText = try container.decode(String.self, forKey: .reasonText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reasonId = try container.decode(Int.self, forKey: .reasonId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reasonText, forKey: .reasonText)

            try? container.encodeIfPresent(reasonId, forKey: .reasonId)
        }
    }
}
