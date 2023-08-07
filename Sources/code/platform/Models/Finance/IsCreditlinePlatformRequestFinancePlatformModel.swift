

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: IsCreditlinePlatformRequest
         Used By: Finance
     */

    class IsCreditlinePlatformRequest: Codable {
        public var data: IsCreditlinePayload?

        public enum CodingKeys: String, CodingKey {
            case data
        }

        public init(data: IsCreditlinePayload? = nil) {
            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode(IsCreditlinePayload.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
