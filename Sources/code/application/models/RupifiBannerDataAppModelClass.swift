import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: RupifiBannerData
         Used By: Payment
     */
    class RupifiBannerData: Codable {
        public var kycUrl: String?

        public var status: String?

        public enum CodingKeys: String, CodingKey {
            case kycUrl = "kyc_url"

            case status
        }

        public init(kycUrl: String? = nil, status: String? = nil) {
            self.kycUrl = kycUrl

            self.status = status
        }

        public func duplicate() -> RupifiBannerData {
            let dict = self.dictionary!
            let copy = RupifiBannerData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                kycUrl = try container.decode(String.self, forKey: .kycUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(kycUrl, forKey: .kycUrl)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
