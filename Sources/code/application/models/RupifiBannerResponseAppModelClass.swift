

import Foundation
public extension ApplicationClient {
    /*
         Model: RupifiBannerResponse
         Used By: Payment
     */
    class RupifiBannerResponse: Codable {
        public var data: RupifiBannerData

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case data

            case success
        }

        public init(data: RupifiBannerData, success: Bool) {
            self.data = data

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode(RupifiBannerData.self, forKey: .data)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
