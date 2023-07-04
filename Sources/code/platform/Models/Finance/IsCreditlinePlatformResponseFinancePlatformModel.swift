

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: IsCreditlinePlatformResponse
         Used By: Finance
     */

    class IsCreditlinePlatformResponse: Codable {
        public var isCreditlineOpted: Bool?

        public var code: Int?

        public enum CodingKeys: String, CodingKey {
            case isCreditlineOpted = "is_creditline_opted"

            case code
        }

        public init(code: Int? = nil, isCreditlineOpted: Bool? = nil) {
            self.isCreditlineOpted = isCreditlineOpted

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isCreditlineOpted = try container.decode(Bool.self, forKey: .isCreditlineOpted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(Int.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isCreditlineOpted, forKey: .isCreditlineOpted)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
