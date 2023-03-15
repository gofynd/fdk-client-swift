

import Foundation
public extension ApplicationClient {
    /*
         Model: RupifiBannerData
         Used By: Payment
     */
    class RupifiBannerData: Codable {
        public var status: String?

        public var kycUrl: String?

        public enum CodingKeys: String, CodingKey {
            case status

            case kycUrl = "kyc_url"
        }

        public init(kycUrl: String? = nil, status: String? = nil) {
            self.status = status

            self.kycUrl = kycUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                kycUrl = try container.decode(String.self, forKey: .kycUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(kycUrl, forKey: .kycUrl)
        }
    }
}
