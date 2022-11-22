

import Foundation
public extension ApplicationClient {
    /*
         Model: StatusUpdateInternalResponse
         Used By: Order
     */
    class StatusUpdateInternalResponse: Codable {
        public var statuses: [StatuesResponse]?

        public enum CodingKeys: String, CodingKey {
            case statuses
        }

        public init(statuses: [StatuesResponse]? = nil) {
            self.statuses = statuses
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                statuses = try container.decode([StatuesResponse].self, forKey: .statuses)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statuses, forKey: .statuses)
        }
    }
}
