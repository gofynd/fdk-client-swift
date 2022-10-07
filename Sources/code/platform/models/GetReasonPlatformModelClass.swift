

import Foundation
public extension PlatformClient {
    /*
         Model: GetReason
         Used By: Finance
     */

    class GetReason: Codable {
        public var reasonType: String?

        public enum CodingKeys: String, CodingKey {
            case reasonType = "reason_type"
        }

        public init(reasonType: String? = nil) {
            self.reasonType = reasonType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reasonType = try container.decode(String.self, forKey: .reasonType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reasonType, forKey: .reasonType)
        }
    }
}
