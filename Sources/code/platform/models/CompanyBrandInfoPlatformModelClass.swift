

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyBrandInfo
         Used By: Configuration
     */

    class CompanyBrandInfo: Codable {
        public var name: String?

        public var value: Int?

        public var brandLogoUrl: String?

        public var brandBannerUrl: String?

        public var brandBannerPortraitUrl: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case value

            case brandLogoUrl = "brand_logo_url"

            case brandBannerUrl = "brand_banner_url"

            case brandBannerPortraitUrl = "brand_banner_portrait_url"
        }

        public init(brandBannerPortraitUrl: String? = nil, brandBannerUrl: String? = nil, brandLogoUrl: String? = nil, name: String? = nil, value: Int? = nil) {
            self.name = name

            self.value = value

            self.brandLogoUrl = brandLogoUrl

            self.brandBannerUrl = brandBannerUrl

            self.brandBannerPortraitUrl = brandBannerPortraitUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(Int.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandLogoUrl = try container.decode(String.self, forKey: .brandLogoUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandBannerUrl = try container.decode(String.self, forKey: .brandBannerUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandBannerPortraitUrl = try container.decode(String.self, forKey: .brandBannerPortraitUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(brandLogoUrl, forKey: .brandLogoUrl)

            try? container.encodeIfPresent(brandBannerUrl, forKey: .brandBannerUrl)

            try? container.encodeIfPresent(brandBannerPortraitUrl, forKey: .brandBannerPortraitUrl)
        }
    }
}
