import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: EpaylaterBannerResponse
         Used By: Payment
     */
    class EpaylaterBannerResponse: Codable {
        public var data: EpaylaterBannerData

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case data

            case success
        }

        public init(data: EpaylaterBannerData, success: Bool) {
            self.data = data

            self.success = success
        }

        public func duplicate() -> EpaylaterBannerResponse {
            let dict = self.dictionary!
            let copy = EpaylaterBannerResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode(EpaylaterBannerData.self, forKey: .data)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
