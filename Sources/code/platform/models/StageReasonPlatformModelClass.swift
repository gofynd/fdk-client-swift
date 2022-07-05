

import Foundation
public extension PlatformClient {
    /*
         Model: StageReason
         Used By: CompanyProfile
     */

    class StageReason: Codable {
        public var reasonCode: String

        public var desc: String

        public enum CodingKeys: String, CodingKey {
            case reasonCode = "reason_code"

            case desc
        }

        public init(desc: String, reasonCode: String) {
            self.reasonCode = reasonCode

            self.desc = desc
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            reasonCode = try container.decode(String.self, forKey: .reasonCode)

            desc = try container.decode(String.self, forKey: .desc)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reasonCode, forKey: .reasonCode)

            try? container.encodeIfPresent(desc, forKey: .desc)
        }
    }
}
