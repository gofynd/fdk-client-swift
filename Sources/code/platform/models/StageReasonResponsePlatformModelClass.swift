

import Foundation
public extension PlatformClient {
    /*
         Model: StageReasonResponse
         Used By: CompanyProfile
     */

    class StageReasonResponse: Codable {
        public var reasonCode: String?

        public var desc: String?

        public enum CodingKeys: String, CodingKey {
            case reasonCode = "reason_code"

            case desc
        }

        public init(desc: String? = nil, reasonCode: String? = nil) {
            self.reasonCode = reasonCode

            self.desc = desc
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reasonCode = try container.decode(String.self, forKey: .reasonCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                desc = try container.decode(String.self, forKey: .desc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reasonCode, forKey: .reasonCode)

            try? container.encodeIfPresent(desc, forKey: .desc)
        }
    }
}
