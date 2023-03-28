

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: BrandBannerSerializer
         Used By: CompanyProfile
     */

    class BrandBannerSerializer: Codable {
        public var landscape: String

        public var portrait: String

        public enum CodingKeys: String, CodingKey {
            case landscape

            case portrait
        }

        public init(landscape: String, portrait: String) {
            self.landscape = landscape

            self.portrait = portrait
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            landscape = try container.decode(String.self, forKey: .landscape)

            portrait = try container.decode(String.self, forKey: .portrait)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landscape, forKey: .landscape)

            try? container.encodeIfPresent(portrait, forKey: .portrait)
        }
    }
}
