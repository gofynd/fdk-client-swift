

import Foundation
public extension PlatformClient {
    /*
         Model: StageReasonResponse
         Used By: CompanyProfile
     */

    class StageReasonResponse: Codable {
        public var desc: String?

        public var reasonCode: String?

        public enum CodingKeys: String, CodingKey {
            case desc

            case reasonCode = "reason_code"
        }

        public init(desc: String? = nil, reasonCode: String? = nil) {
            self.desc = desc

            self.reasonCode = reasonCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                desc = try container.decode(String.self, forKey: .desc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reasonCode = try container.decode(String.self, forKey: .reasonCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(desc, forKey: .desc)

            try? container.encodeIfPresent(reasonCode, forKey: .reasonCode)
        }
    }
}
